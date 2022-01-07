; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_hwlat_tracer_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_hwlat.c_hwlat_tracer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i64 }
%struct.TYPE_2__ = type { i64 }

@hwlat_busy = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@hwlat_trace = common dso_local global %struct.trace_array* null, align 8
@disable_migrate = common dso_local global i32 0, align 4
@hwlat_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tracing_thresh = common dso_local global i64 0, align 8
@save_tracing_thresh = common dso_local global i64 0, align 8
@last_tracing_thresh = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_array*)* @hwlat_tracer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwlat_tracer_init(%struct.trace_array* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_array*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  %4 = load i32, i32* @hwlat_busy, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EBUSY, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  store %struct.trace_array* %10, %struct.trace_array** @hwlat_trace, align 8
  store i32 0, i32* @disable_migrate, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwlat_data, i32 0, i32 0), align 8
  %11 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %12 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* @tracing_thresh, align 8
  store i64 %13, i64* @save_tracing_thresh, align 8
  %14 = load i64, i64* @tracing_thresh, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load i64, i64* @last_tracing_thresh, align 8
  store i64 %17, i64* @tracing_thresh, align 8
  br label %18

18:                                               ; preds = %16, %9
  %19 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %20 = call i64 @tracer_tracing_is_on(%struct.trace_array* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %24 = call i32 @hwlat_tracer_start(%struct.trace_array* %23)
  br label %25

25:                                               ; preds = %22, %18
  store i32 1, i32* @hwlat_busy, align 4
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @tracer_tracing_is_on(%struct.trace_array*) #1

declare dso_local i32 @hwlat_tracer_start(%struct.trace_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
