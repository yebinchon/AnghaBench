; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_mem-functions.c___bench_mem_function.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_mem-functions.c___bench_mem_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bench_mem_info = type { double (%struct.function*, i64, i8*, i8*)*, i64 (%struct.function*, i64, i8*, i8*)*, i64, %struct.function* }
%struct.function = type { i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"# function '%s' (%s)\0A\00", align 1
@bench_format = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"# Copying %s bytes ...\0A\0A\00", align 1
@size_str = common dso_local global i8* null, align 8
@use_cycles = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c" %14lf cycles/byte\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"# Memory allocation failed - maybe size (%s) is too large?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bench_mem_info*, i32, i64, double)* @__bench_mem_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bench_mem_function(%struct.bench_mem_info* %0, i32 %1, i64 %2, double %3) #0 {
  %5 = alloca %struct.bench_mem_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.function*, align 8
  %10 = alloca double, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.bench_mem_info* %0, %struct.bench_mem_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store double %3, double* %8, align 8
  %14 = load %struct.bench_mem_info*, %struct.bench_mem_info** %5, align 8
  %15 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %14, i32 0, i32 3
  %16 = load %struct.function*, %struct.function** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.function, %struct.function* %16, i64 %18
  store %struct.function* %19, %struct.function** %9, align 8
  store double 0.000000e+00, double* %10, align 8
  store i64 0, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i8* @zalloc(i64 %20)
  store i8* %21, i8** %13, align 8
  %22 = load %struct.function*, %struct.function** %9, align 8
  %23 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.function*, %struct.function** %9, align 8
  %26 = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %27)
  %29 = load i8*, i8** %13, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %107

32:                                               ; preds = %4
  %33 = load %struct.bench_mem_info*, %struct.bench_mem_info** %5, align 8
  %34 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i64, i64* %7, align 8
  %39 = call i8* @zalloc(i64 %38)
  store i8* %39, i8** %12, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %107

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* @bench_format, align 4
  %46 = icmp eq i32 %45, 129
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** @size_str, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* @use_cycles, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.bench_mem_info*, %struct.bench_mem_info** %5, align 8
  %55 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %54, i32 0, i32 1
  %56 = load i64 (%struct.function*, i64, i8*, i8*)*, i64 (%struct.function*, i64, i8*, i8*)** %55, align 8
  %57 = load %struct.function*, %struct.function** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i64 %56(%struct.function* %57, i64 %58, i8* %59, i8* %60)
  store i64 %61, i64* %11, align 8
  br label %71

62:                                               ; preds = %50
  %63 = load %struct.bench_mem_info*, %struct.bench_mem_info** %5, align 8
  %64 = getelementptr inbounds %struct.bench_mem_info, %struct.bench_mem_info* %63, i32 0, i32 0
  %65 = load double (%struct.function*, i64, i8*, i8*)*, double (%struct.function*, i64, i8*, i8*)** %64, align 8
  %66 = load %struct.function*, %struct.function** %9, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = call double %65(%struct.function* %66, i64 %67, i8* %68, i8* %69)
  store double %70, double* %10, align 8
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i32, i32* @bench_format, align 4
  switch i32 %72, label %99 [
    i32 129, label %73
    i32 128, label %86
  ]

73:                                               ; preds = %71
  %74 = load i64, i64* @use_cycles, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i64, i64* %11, align 8
  %78 = sitofp i64 %77 to double
  %79 = load double, double* %8, align 8
  %80 = fdiv double %78, %79
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), double %80)
  br label %85

82:                                               ; preds = %73
  %83 = load double, double* %10, align 8
  %84 = call i32 @print_bps(double %83)
  br label %85

85:                                               ; preds = %82, %76
  br label %101

86:                                               ; preds = %71
  %87 = load i64, i64* @use_cycles, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load i64, i64* %11, align 8
  %91 = sitofp i64 %90 to double
  %92 = load double, double* %8, align 8
  %93 = fdiv double %91, %92
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %93)
  br label %98

95:                                               ; preds = %86
  %96 = load double, double* %10, align 8
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %96)
  br label %98

98:                                               ; preds = %95, %89
  br label %101

99:                                               ; preds = %71
  %100 = call i32 @BUG_ON(i32 1)
  br label %101

101:                                              ; preds = %99, %98, %85
  br label %102

102:                                              ; preds = %107, %101
  %103 = load i8*, i8** %12, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @free(i8* %105)
  ret void

107:                                              ; preds = %42, %31
  %108 = load i8*, i8** @size_str, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  br label %102
}

declare dso_local i8* @zalloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_bps(double) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
