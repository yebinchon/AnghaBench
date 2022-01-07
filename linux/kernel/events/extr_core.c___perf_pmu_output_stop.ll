; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_pmu_output_stop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c___perf_pmu_output_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pmu* }
%struct.pmu = type { i32 }
%struct.perf_cpu_context = type { i32*, i32 }
%struct.remote_output = type { i32, i32 }

@__perf_event_output_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__perf_pmu_output_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__perf_pmu_output_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.pmu*, align 8
  %5 = alloca %struct.perf_cpu_context*, align 8
  %6 = alloca %struct.remote_output, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.perf_event*
  store %struct.perf_event* %8, %struct.perf_event** %3, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.pmu*, %struct.pmu** %12, align 8
  store %struct.pmu* %13, %struct.pmu** %4, align 8
  %14 = load %struct.pmu*, %struct.pmu** %4, align 8
  %15 = getelementptr inbounds %struct.pmu, %struct.pmu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.perf_cpu_context* @this_cpu_ptr(i32 %16)
  store %struct.perf_cpu_context* %17, %struct.perf_cpu_context** %5, align 8
  %18 = getelementptr inbounds %struct.remote_output, %struct.remote_output* %6, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.remote_output, %struct.remote_output* %6, i32 0, i32 1
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %25 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %24, i32 0, i32 1
  %26 = load i32, i32* @__perf_event_output_stop, align 4
  %27 = call i32 @perf_iterate_ctx(i32* %25, i32 %26, %struct.remote_output* %6, i32 0)
  %28 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %29 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.perf_cpu_context*, %struct.perf_cpu_context** %5, align 8
  %34 = getelementptr inbounds %struct.perf_cpu_context, %struct.perf_cpu_context* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @__perf_event_output_stop, align 4
  %37 = call i32 @perf_iterate_ctx(i32* %35, i32 %36, %struct.remote_output* %6, i32 0)
  br label %38

38:                                               ; preds = %32, %1
  %39 = call i32 (...) @rcu_read_unlock()
  %40 = getelementptr inbounds %struct.remote_output, %struct.remote_output* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

declare dso_local %struct.perf_cpu_context* @this_cpu_ptr(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @perf_iterate_ctx(i32*, i32, %struct.remote_output*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
