; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_init_trace_event_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_kprobe.c_init_trace_event_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_kprobe = type { i32 }
%struct.trace_event_call = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@kretprobe_funcs = common dso_local global i32 0, align 4
@kretprobe_event_define_fields = common dso_local global i32 0, align 4
@kprobe_funcs = common dso_local global i32 0, align 4
@kprobe_event_define_fields = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_KPROBE = common dso_local global i32 0, align 4
@kprobe_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_kprobe*)* @init_trace_event_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_trace_event_call(%struct.trace_kprobe* %0) #0 {
  %2 = alloca %struct.trace_kprobe*, align 8
  %3 = alloca %struct.trace_event_call*, align 8
  store %struct.trace_kprobe* %0, %struct.trace_kprobe** %2, align 8
  %4 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %5 = getelementptr inbounds %struct.trace_kprobe, %struct.trace_kprobe* %4, i32 0, i32 0
  %6 = call %struct.trace_event_call* @trace_probe_event_call(i32* %5)
  store %struct.trace_event_call* %6, %struct.trace_event_call** %3, align 8
  %7 = load %struct.trace_kprobe*, %struct.trace_kprobe** %2, align 8
  %8 = call i64 @trace_kprobe_is_return(%struct.trace_kprobe* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %12 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32* @kretprobe_funcs, i32** %13, align 8
  %14 = load i32, i32* @kretprobe_event_define_fields, align 4
  %15 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %16 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %14, i32* %18, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %21 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32* @kprobe_funcs, i32** %22, align 8
  %23 = load i32, i32* @kprobe_event_define_fields, align 4
  %24 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %25 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %10
  %29 = load i32, i32* @TRACE_EVENT_FL_KPROBE, align 4
  %30 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %31 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @kprobe_register, align 4
  %33 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %34 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 4
  ret void
}

declare dso_local %struct.trace_event_call* @trace_probe_event_call(i32*) #1

declare dso_local i64 @trace_kprobe_is_return(%struct.trace_kprobe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
