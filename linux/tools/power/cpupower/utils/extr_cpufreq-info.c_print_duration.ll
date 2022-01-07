; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_print_duration.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_print_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@no_rounding = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"%u.%06u ms\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%u us\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%u.%03u us\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%lu ns\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%u.%02u ms\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%u.%01u us\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @print_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_duration(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @no_rounding, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = icmp ugt i64 %7, 1000000
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i64, i64* %2, align 8
  %11 = trunc i64 %10 to i32
  %12 = udiv i32 %11, 1000000
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  %16 = urem i32 %15, 1000000
  %17 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %16)
  br label %44

18:                                               ; preds = %6
  %19 = load i64, i64* %2, align 8
  %20 = icmp ugt i64 %19, 100000
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* %2, align 8
  %23 = trunc i64 %22 to i32
  %24 = udiv i32 %23, 1000
  %25 = zext i32 %24 to i64
  %26 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  br label %43

27:                                               ; preds = %18
  %28 = load i64, i64* %2, align 8
  %29 = icmp ugt i64 %28, 1000
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i64, i64* %2, align 8
  %32 = trunc i64 %31 to i32
  %33 = udiv i32 %32, 1000
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %2, align 8
  %36 = trunc i64 %35 to i32
  %37 = urem i32 %36, 1000
  %38 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %34, i32 %37)
  br label %42

39:                                               ; preds = %27
  %40 = load i64, i64* %2, align 8
  %41 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %39, %30
  br label %43

43:                                               ; preds = %42, %21
  br label %44

44:                                               ; preds = %43, %9
  br label %110

45:                                               ; preds = %1
  %46 = load i64, i64* %2, align 8
  %47 = icmp ugt i64 %46, 1000000
  br i1 %47, label %48, label %66

48:                                               ; preds = %45
  %49 = load i64, i64* %2, align 8
  %50 = urem i64 %49, 10000
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp uge i64 %51, 5000
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* %2, align 8
  %55 = add i64 %54, 10000
  store i64 %55, i64* %2, align 8
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i64, i64* %2, align 8
  %58 = trunc i64 %57 to i32
  %59 = udiv i32 %58, 1000000
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* %2, align 8
  %62 = urem i64 %61, 1000000
  %63 = trunc i64 %62 to i32
  %64 = udiv i32 %63, 10000
  %65 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %60, i32 %64)
  br label %109

66:                                               ; preds = %45
  %67 = load i64, i64* %2, align 8
  %68 = icmp ugt i64 %67, 100000
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i64, i64* %2, align 8
  %71 = urem i64 %70, 1000
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = icmp uge i64 %72, 500
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i64, i64* %2, align 8
  %76 = add i64 %75, 1000
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i64, i64* %2, align 8
  %79 = trunc i64 %78 to i32
  %80 = udiv i32 %79, 1000
  %81 = zext i32 %80 to i64
  %82 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  br label %108

83:                                               ; preds = %66
  %84 = load i64, i64* %2, align 8
  %85 = icmp ugt i64 %84, 1000
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load i64, i64* %2, align 8
  %88 = urem i64 %87, 100
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %3, align 8
  %90 = icmp uge i64 %89, 50
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i64, i64* %2, align 8
  %93 = add i64 %92, 100
  store i64 %93, i64* %2, align 8
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i64, i64* %2, align 8
  %96 = trunc i64 %95 to i32
  %97 = udiv i32 %96, 1000
  %98 = zext i32 %97 to i64
  %99 = load i64, i64* %2, align 8
  %100 = urem i64 %99, 1000
  %101 = trunc i64 %100 to i32
  %102 = udiv i32 %101, 100
  %103 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %98, i32 %102)
  br label %107

104:                                              ; preds = %83
  %105 = load i64, i64* %2, align 8
  %106 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %105)
  br label %107

107:                                              ; preds = %104, %94
  br label %108

108:                                              ; preds = %107, %77
  br label %109

109:                                              ; preds = %108, %56
  br label %110

110:                                              ; preds = %109, %44
  ret void
}

declare dso_local i32 @printf(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
