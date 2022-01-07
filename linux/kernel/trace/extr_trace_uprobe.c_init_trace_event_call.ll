; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_init_trace_event_call.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_uprobe.c_init_trace_event_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_uprobe = type { i32 }
%struct.trace_event_call = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32* }

@uprobe_funcs = common dso_local global i32 0, align 4
@uprobe_event_define_fields = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_UPROBE = common dso_local global i32 0, align 4
@TRACE_EVENT_FL_CAP_ANY = common dso_local global i32 0, align 4
@trace_uprobe_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_uprobe*)* @init_trace_event_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_trace_event_call(%struct.trace_uprobe* %0) #0 {
  %2 = alloca %struct.trace_uprobe*, align 8
  %3 = alloca %struct.trace_event_call*, align 8
  store %struct.trace_uprobe* %0, %struct.trace_uprobe** %2, align 8
  %4 = load %struct.trace_uprobe*, %struct.trace_uprobe** %2, align 8
  %5 = getelementptr inbounds %struct.trace_uprobe, %struct.trace_uprobe* %4, i32 0, i32 0
  %6 = call %struct.trace_event_call* @trace_probe_event_call(i32* %5)
  store %struct.trace_event_call* %6, %struct.trace_event_call** %3, align 8
  %7 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %8 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32* @uprobe_funcs, i32** %9, align 8
  %10 = load i32, i32* @uprobe_event_define_fields, align 4
  %11 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %12 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @TRACE_EVENT_FL_UPROBE, align 4
  %16 = load i32, i32* @TRACE_EVENT_FL_CAP_ANY, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %19 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @trace_uprobe_register, align 4
  %21 = load %struct.trace_event_call*, %struct.trace_event_call** %3, align 8
  %22 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  ret void
}

declare dso_local %struct.trace_event_call* @trace_probe_event_call(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
