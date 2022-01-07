; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_register_event_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_probe.c_trace_probe_register_event_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_probe = type { i32 }
%struct.trace_event_call = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_probe_register_event_call(%struct.trace_probe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_probe*, align 8
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca i32, align 4
  store %struct.trace_probe* %0, %struct.trace_probe** %3, align 8
  %6 = load %struct.trace_probe*, %struct.trace_probe** %3, align 8
  %7 = call %struct.trace_event_call* @trace_probe_event_call(%struct.trace_probe* %6)
  store %struct.trace_event_call* %7, %struct.trace_event_call** %4, align 8
  %8 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %9 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %8, i32 0, i32 0
  %10 = call i32 @register_trace_event(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %18 = call i32 @trace_add_event_call(%struct.trace_event_call* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %23 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %22, i32 0, i32 0
  %24 = call i32 @unregister_trace_event(i32* %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.trace_event_call* @trace_probe_event_call(%struct.trace_probe*) #1

declare dso_local i32 @register_trace_event(i32*) #1

declare dso_local i32 @trace_add_event_call(%struct.trace_event_call*) #1

declare dso_local i32 @unregister_trace_event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
