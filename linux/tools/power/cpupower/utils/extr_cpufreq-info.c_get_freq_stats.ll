; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_freq_stats.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_get_freq_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_stats = type { double, %struct.cpufreq_stats*, i32 }

@.str = private unnamed_addr constant [8 x i8] c":%.2f%%\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%lu:%llu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"  (%lu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_freq_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_freq_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpufreq_stats*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @cpufreq_get_transitions(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.cpufreq_stats* @cpufreq_get_stats(i32 %10, i64* %6)
  store %struct.cpufreq_stats* %11, %struct.cpufreq_stats** %7, align 8
  br label %12

12:                                               ; preds = %47, %2
  %13 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %14 = icmp ne %struct.cpufreq_stats* %13, null
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %20 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @print_speed(i32 %21)
  %23 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %24 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fmul double 1.000000e+02, %25
  %27 = load i64, i64* %6, align 8
  %28 = uitofp i64 %27 to double
  %29 = fdiv double %26, %28
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %29)
  br label %39

31:                                               ; preds = %15
  %32 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %33 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %36 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %34, double %37)
  br label %39

39:                                               ; preds = %31, %18
  %40 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %41 = getelementptr inbounds %struct.cpufreq_stats, %struct.cpufreq_stats* %40, i32 0, i32 1
  %42 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %41, align 8
  store %struct.cpufreq_stats* %42, %struct.cpufreq_stats** %7, align 8
  %43 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %44 = icmp ne %struct.cpufreq_stats* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %39
  br label %12

48:                                               ; preds = %12
  %49 = load %struct.cpufreq_stats*, %struct.cpufreq_stats** %7, align 8
  %50 = call i32 @cpufreq_put_stats(%struct.cpufreq_stats* %49)
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %53, %48
  ret i32 0
}

declare dso_local i64 @cpufreq_get_transitions(i32) #1

declare dso_local %struct.cpufreq_stats* @cpufreq_get_stats(i32, i64*) #1

declare dso_local i32 @print_speed(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @cpufreq_put_stats(%struct.cpufreq_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
