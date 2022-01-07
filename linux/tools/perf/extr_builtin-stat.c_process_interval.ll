; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_process_interval.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_process_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timespec = type { i32, i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@ref_time = common dso_local global i32 0, align 4
@STAT_RECORD = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to write stat round event\0A\00", align 1
@walltime_nsecs_stats = common dso_local global i32 0, align 4
@stat_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @process_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_interval() #0 {
  %1 = alloca %struct.timespec, align 8
  %2 = alloca %struct.timespec, align 8
  %3 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %4 = call i32 @clock_gettime(i32 %3, %struct.timespec* %1)
  %5 = call i32 @diff_timespec(%struct.timespec* %2, %struct.timespec* %1, i32* @ref_time)
  %6 = call i32 @read_counters(%struct.timespec* %2)
  %7 = load i64, i64* @STAT_RECORD, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NSEC_PER_SEC, align 4
  %13 = mul nsw i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %14, %16
  %18 = load i32, i32* @INTERVAL, align 4
  %19 = call i64 @WRITE_STAT_ROUND_EVENT(i64 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %9
  br label %24

24:                                               ; preds = %23, %0
  %25 = call i32 @init_stats(i32* @walltime_nsecs_stats)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @stat_config, i32 0, i32 0), align 4
  %27 = mul nsw i32 %26, 1000000
  %28 = call i32 @update_stats(i32* @walltime_nsecs_stats, i32 %27)
  %29 = call i32 @print_counters(%struct.timespec* %2, i32 0, i32* null)
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @diff_timespec(%struct.timespec*, %struct.timespec*, i32*) #1

declare dso_local i32 @read_counters(%struct.timespec*) #1

declare dso_local i64 @WRITE_STAT_ROUND_EVENT(i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @init_stats(i32*) #1

declare dso_local i32 @update_stats(i32*, i32) #1

declare dso_local i32 @print_counters(%struct.timespec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
