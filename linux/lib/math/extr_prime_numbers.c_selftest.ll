; ModuleID = '/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_selftest.c'
source_filename = "/home/carl/AnghaBench/linux/lib/math/extr_prime_numbers.c_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"inconsistent result for is-prime(%lu): slow=%s, fast=%s!\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"incorrect result for next-prime(%lu): expected %lu, got %lu\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"selftest(%lu) passed, last prime was %lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @selftest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selftest(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

11:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  store i64 2, i64* %4, align 8
  br label %12

12:                                               ; preds = %52, %11
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @slow_is_prime_number(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @is_prime_number(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %25, i8* %29, i8* %33)
  br label %59

35:                                               ; preds = %16
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %52

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @next_prime_number(i64 %40)
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @next_prime_number(i64 %47)
  %49 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %45, i64 %46, i64 %48)
  br label %59

50:                                               ; preds = %39
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %38
  %53 = load i64, i64* %4, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %12

55:                                               ; preds = %12
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %56, i64 %57)
  store i32 0, i32* %2, align 4
  br label %63

59:                                               ; preds = %44, %24
  %60 = call i32 (...) @dump_primes()
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %55, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @slow_is_prime_number(i64) #1

declare dso_local i32 @is_prime_number(i64) #1

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i64 @next_prime_number(i64) #1

declare dso_local i32 @pr_info(i8*, i64, i64) #1

declare dso_local i32 @dump_primes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
