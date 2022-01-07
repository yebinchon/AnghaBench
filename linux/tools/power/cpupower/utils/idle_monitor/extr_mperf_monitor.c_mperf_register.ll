; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_register.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_mperf_monitor.c_mperf_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cpuidle_monitor = type { i32, i32 }

@cpupower_cpu_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPUPOWER_CAP_APERF = common dso_local global i32 0, align 4
@cpu_count = common dso_local global i32 0, align 4
@is_valid = common dso_local global i8* null, align 8
@mperf_previous_count = common dso_local global i8* null, align 8
@aperf_previous_count = common dso_local global i8* null, align 8
@mperf_current_count = common dso_local global i8* null, align 8
@aperf_current_count = common dso_local global i8* null, align 8
@mperf_monitor = common dso_local global %struct.cpuidle_monitor zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpuidle_monitor* @mperf_register() #0 {
  %1 = alloca %struct.cpuidle_monitor*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpupower_cpu_info, i32 0, i32 0), align 4
  %3 = load i32, i32* @CPUPOWER_CAP_APERF, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %24

7:                                                ; preds = %0
  %8 = call i64 (...) @init_maxfreq_mode()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store %struct.cpuidle_monitor* null, %struct.cpuidle_monitor** %1, align 8
  br label %24

11:                                               ; preds = %7
  %12 = load i32, i32* @cpu_count, align 4
  %13 = call i8* @calloc(i32 %12, i32 4)
  store i8* %13, i8** @is_valid, align 8
  %14 = load i32, i32* @cpu_count, align 4
  %15 = call i8* @calloc(i32 %14, i32 8)
  store i8* %15, i8** @mperf_previous_count, align 8
  %16 = load i32, i32* @cpu_count, align 4
  %17 = call i8* @calloc(i32 %16, i32 8)
  store i8* %17, i8** @aperf_previous_count, align 8
  %18 = load i32, i32* @cpu_count, align 4
  %19 = call i8* @calloc(i32 %18, i32 8)
  store i8* %19, i8** @mperf_current_count, align 8
  %20 = load i32, i32* @cpu_count, align 4
  %21 = call i8* @calloc(i32 %20, i32 8)
  store i8* %21, i8** @aperf_current_count, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @mperf_monitor, i32 0, i32 0), align 4
  %23 = call i32 @strlen(i32 %22)
  store i32 %23, i32* getelementptr inbounds (%struct.cpuidle_monitor, %struct.cpuidle_monitor* @mperf_monitor, i32 0, i32 1), align 4
  store %struct.cpuidle_monitor* @mperf_monitor, %struct.cpuidle_monitor** %1, align 8
  br label %24

24:                                               ; preds = %11, %10, %6
  %25 = load %struct.cpuidle_monitor*, %struct.cpuidle_monitor** %1, align 8
  ret %struct.cpuidle_monitor* %25
}

declare dso_local i64 @init_maxfreq_mode(...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
