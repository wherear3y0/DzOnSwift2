//Написать функцию, которая определяет, четное число или нет.

func check(_ a: Int){
    if (a % 2 == 0){
        print("Четное")
    } else {
        print("Нечетное")
    }
}

check(8)

//Написать функцию, которая определяет, делится ли число без остатка на 3.

func chekDelIn3(_ a: Int){
    if a % 3 == 0{
        print("Делится")
    } else {
        print("Не делится")
    }
}

chekDelIn3(5)

//Создать возрастающий массив из 100 чисел.

var mass: Array<Int> = []
for index in 1...100{
    mass.append(index)
}
print(mass)

//Удалить из него то что не делится на 3

var Mass: [Int] = []
for index in 1...100{
    Mass.append(index)
}
for i in Mass {
    if i % 3 != 0 {
        Mass.remove(at: Mass.firstIndex(of: i)!)
    }
}

print(Mass)


//Фибоначи

func Fibonacci(_ count: Int) -> [Int]{
    var temp = [0, 1]
    for i in 2...count{
        temp.append(temp[i - 1] + temp[i - 2])
    }
    print(temp)
    return temp
}

Fibonacci(50)

//Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.

func simplNum (_ count: Int) -> [Int]{
    var temp1: [Int] = []
    for b in 1...count{
        for i in 1...count{
            if i > 1 && i % b == 0 && i & 1 == b{
                temp1.append(i)
            }
        }
    }
    print(temp1)
    return temp1
}

simplNum(100)
