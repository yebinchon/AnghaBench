; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_print_speed.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_print_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@no_rounding = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%u.%06u GHz\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%u.%03u MHz\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%lu kHz\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%u.%02u GHz\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%u MHz\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%u.%01u MHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @print_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_speed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @no_rounding, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = icmp ugt i64 %7, 1000000
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i64, i64* %2, align 8
  %11 = trunc i64 %10 to i32
  %12 = udiv i32 %11, 1000000
  %13 = load i64, i64* %2, align 8
  %14 = trunc i64 %13 to i32
  %15 = urem i32 %14, 1000000
  %16 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  br label %33

17:                                               ; preds = %6
  %18 = load i64, i64* %2, align 8
  %19 = icmp ugt i64 %18, 1000
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i64, i64* %2, align 8
  %22 = trunc i64 %21 to i32
  %23 = udiv i32 %22, 1000
  %24 = load i64, i64* %2, align 8
  %25 = urem i64 %24, 1000
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26)
  br label %32

28:                                               ; preds = %17
  %29 = load i64, i64* %2, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %20
  br label %33

33:                                               ; preds = %32, %9
  br label %93

34:                                               ; preds = %1
  %35 = load i64, i64* %2, align 8
  %36 = icmp ugt i64 %35, 1000000
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i64, i64* %2, align 8
  %39 = urem i64 %38, 10000
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp uge i64 %40, 5000
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64, i64* %2, align 8
  %44 = add i64 %43, 10000
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i64, i64* %2, align 8
  %47 = trunc i64 %46 to i32
  %48 = udiv i32 %47, 1000000
  %49 = load i64, i64* %2, align 8
  %50 = urem i64 %49, 1000000
  %51 = trunc i64 %50 to i32
  %52 = udiv i32 %51, 10000
  %53 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %52)
  br label %92

54:                                               ; preds = %34
  %55 = load i64, i64* %2, align 8
  %56 = icmp ugt i64 %55, 100000
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = load i64, i64* %2, align 8
  %59 = urem i64 %58, 1000
  store i64 %59, i64* %3, align 8
  %60 = load i64, i64* %3, align 8
  %61 = icmp uge i64 %60, 500
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i64, i64* %2, align 8
  %64 = add i64 %63, 1000
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i64, i64* %2, align 8
  %67 = trunc i64 %66 to i32
  %68 = udiv i32 %67, 1000
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %91

70:                                               ; preds = %54
  %71 = load i64, i64* %2, align 8
  %72 = icmp ugt i64 %71, 1000
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = load i64, i64* %2, align 8
  %75 = urem i64 %74, 100
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  %77 = icmp uge i64 %76, 50
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i64, i64* %2, align 8
  %80 = add i64 %79, 100
  store i64 %80, i64* %2, align 8
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i64, i64* %2, align 8
  %83 = trunc i64 %82 to i32
  %84 = udiv i32 %83, 1000
  %85 = load i64, i64* %2, align 8
  %86 = urem i64 %85, 1000
  %87 = trunc i64 %86 to i32
  %88 = udiv i32 %87, 100
  %89 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %81, %70
  br label %91

91:                                               ; preds = %90, %65
  br label %92

92:                                               ; preds = %91, %45
  br label %93

93:                                               ; preds = %92, %33
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
