; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_debug_output_one.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/extr_cpufreq-info.c_debug_output_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequencies = type { i32, %struct.cpufreq_frequencies* }

@.str = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"  available frequency steps:  \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @debug_output_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_output_one(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_frequencies*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @get_driver(i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @get_related_cpus(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @get_affected_cpus(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @get_latency(i32 %10, i32 1)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @get_hardware_limits(i32 %12, i32 1)
  %14 = load i32, i32* %2, align 4
  %15 = call %struct.cpufreq_frequencies* @cpufreq_get_frequencies(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  store %struct.cpufreq_frequencies* %15, %struct.cpufreq_frequencies** %3, align 8
  %16 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %3, align 8
  %17 = icmp ne %struct.cpufreq_frequencies* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = call i8* @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @printf(i8* %19)
  br label %21

21:                                               ; preds = %26, %18
  %22 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %3, align 8
  %23 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %22, i32 0, i32 1
  %24 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %23, align 8
  %25 = icmp ne %struct.cpufreq_frequencies* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %3, align 8
  %28 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @print_speed(i32 %29)
  %31 = call i32 @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %3, align 8
  %33 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %32, i32 0, i32 1
  %34 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %33, align 8
  store %struct.cpufreq_frequencies* %34, %struct.cpufreq_frequencies** %3, align 8
  br label %21

35:                                               ; preds = %21
  %36 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %3, align 8
  %37 = getelementptr inbounds %struct.cpufreq_frequencies, %struct.cpufreq_frequencies* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @print_speed(i32 %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.cpufreq_frequencies*, %struct.cpufreq_frequencies** %3, align 8
  %42 = call i32 @cpufreq_put_frequencies(%struct.cpufreq_frequencies* %41)
  br label %43

43:                                               ; preds = %35, %1
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @get_available_governors(i32 %44)
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @get_policy(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i64 @get_freq_hardware(i32 %48, i32 1)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @get_freq_kernel(i32 %52, i32 1)
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @get_boost_mode(i32 %55)
  ret void
}

declare dso_local i32 @get_driver(i32) #1

declare dso_local i32 @get_related_cpus(i32) #1

declare dso_local i32 @get_affected_cpus(i32) #1

declare dso_local i32 @get_latency(i32, i32) #1

declare dso_local i32 @get_hardware_limits(i32, i32) #1

declare dso_local %struct.cpufreq_frequencies* @cpufreq_get_frequencies(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @print_speed(i32) #1

declare dso_local i32 @cpufreq_put_frequencies(%struct.cpufreq_frequencies*) #1

declare dso_local i32 @get_available_governors(i32) #1

declare dso_local i32 @get_policy(i32) #1

declare dso_local i64 @get_freq_hardware(i32, i32) #1

declare dso_local i32 @get_freq_kernel(i32, i32) #1

declare dso_local i32 @get_boost_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
