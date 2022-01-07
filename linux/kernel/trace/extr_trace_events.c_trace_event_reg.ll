; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_event_reg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_event_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.trace_event_file = type { i32, %struct.TYPE_2__*, i32 }

@TRACE_EVENT_FL_TRACEPOINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_event_reg(%struct.trace_event_call* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_event_call*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.trace_event_file*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.trace_event_file*
  store %struct.trace_event_file* %10, %struct.trace_event_file** %8, align 8
  %11 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %12 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TRACE_EVENT_FL_TRACEPOINT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %43 [
    i32 129, label %21
    i32 128, label %32
  ]

21:                                               ; preds = %3
  %22 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %23 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %26 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %31 = call i32 @tracepoint_probe_register(i32 %24, i32 %29, %struct.trace_event_file* %30)
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %3
  %33 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %34 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.trace_event_call*, %struct.trace_event_call** %5, align 8
  %37 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %42 = call i32 @tracepoint_probe_unregister(i32 %35, i32 %40, %struct.trace_event_file* %41)
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %32, %21
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tracepoint_probe_register(i32, i32, %struct.trace_event_file*) #1

declare dso_local i32 @tracepoint_probe_unregister(i32, i32, %struct.trace_event_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
