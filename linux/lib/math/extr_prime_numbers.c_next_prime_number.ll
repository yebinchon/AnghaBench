; ModuleID = '/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_next_prime_number.c'
source_filename = "/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_next_prime_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.primes = type { i64, i32 }

@primes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @next_prime_number(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.primes*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load i32, i32* @primes, align 4
  %7 = call %struct.primes* @rcu_dereference(i32 %6)
  store %struct.primes* %7, %struct.primes** %4, align 8
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.primes*, %struct.primes** %4, align 8
  %11 = getelementptr inbounds %struct.primes, %struct.primes* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp uge i64 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = call i32 (...) @rcu_read_unlock()
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @expand_to_next_prime(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @slow_next_prime_number(i64 %20)
  store i64 %21, i64* %2, align 8
  br label %38

22:                                               ; preds = %14
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load i32, i32* @primes, align 4
  %25 = call %struct.primes* @rcu_dereference(i32 %24)
  store %struct.primes* %25, %struct.primes** %4, align 8
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.primes*, %struct.primes** %4, align 8
  %28 = getelementptr inbounds %struct.primes, %struct.primes* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.primes*, %struct.primes** %4, align 8
  %31 = getelementptr inbounds %struct.primes, %struct.primes* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  %35 = call i64 @find_next_bit(i32 %29, i64 %32, i64 %34)
  store i64 %35, i64* %3, align 8
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i64, i64* %3, align 8
  store i64 %37, i64* %2, align 8
  br label %38

38:                                               ; preds = %26, %19
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.primes* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @expand_to_next_prime(i64) #1

declare dso_local i64 @slow_next_prime_number(i64) #1

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
