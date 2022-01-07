; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_event_perf.c_perf_trace_del.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_event_perf.c_perf_trace_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.trace_event_call*, i32, %struct.perf_event*)* }

@TRACE_REG_PERF_DEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_trace_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_event_call*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 1
  %8 = load %struct.trace_event_call*, %struct.trace_event_call** %7, align 8
  store %struct.trace_event_call* %8, %struct.trace_event_call** %5, align 8
  %9 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %10 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.trace_event_call*, i32, %struct.perf_event*)*, i32 (%struct.trace_event_call*, i32, %struct.perf_event*)** %12, align 8
  %14 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %15 = load i32, i32* @TRACE_REG_PERF_DEL, align 4
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = call i32 %13(%struct.trace_event_call* %14, i32 %15, %struct.perf_event* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %20, i32 0, i32 0
  %22 = call i32 @hlist_del_rcu(i32* %21)
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @hlist_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
