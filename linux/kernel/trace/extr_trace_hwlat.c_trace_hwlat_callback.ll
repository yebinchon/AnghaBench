; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_trace_hwlat_callback.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_trace_hwlat_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nmi_cpu = common dso_local global i64 0, align 8
@CONFIG_GENERIC_SCHED_CLOCK = common dso_local global i32 0, align 4
@nmi_ts_start = common dso_local global i64 0, align 8
@nmi_total_ts = common dso_local global i32 0, align 4
@nmi_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_hwlat_callback(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @smp_processor_id()
  %4 = load i64, i64* @nmi_cpu, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %31

7:                                                ; preds = %1
  %8 = load i32, i32* @CONFIG_GENERIC_SCHED_CLOCK, align 4
  %9 = call i32 @IS_ENABLED(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i64 (...) @time_get()
  store i64 %15, i64* @nmi_ts_start, align 8
  br label %24

16:                                               ; preds = %11
  %17 = call i64 (...) @time_get()
  %18 = load i64, i64* @nmi_ts_start, align 8
  %19 = sub nsw i64 %17, %18
  %20 = load i32, i32* @nmi_total_ts, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @nmi_total_ts, align 4
  br label %24

24:                                               ; preds = %16, %14
  br label %25

25:                                               ; preds = %24, %7
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @nmi_count, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @nmi_count, align 4
  br label %31

31:                                               ; preds = %6, %28, %25
  ret void
}

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @time_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
