; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_find_event_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_find_event_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ftrace_event_field = type { i32 }
%struct.trace_event_call = type { i32 }

@ftrace_generic_fields = common dso_local global %struct.list_head zeroinitializer, align 4
@ftrace_common_fields = common dso_local global %struct.list_head zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ftrace_event_field* @trace_find_event_field(%struct.trace_event_call* %0, i8* %1) #0 {
  %3 = alloca %struct.ftrace_event_field*, align 8
  %4 = alloca %struct.trace_event_call*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ftrace_event_field*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.trace_event_call* %0, %struct.trace_event_call** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.trace_event_call*, %struct.trace_event_call** %4, align 8
  %9 = call %struct.list_head* @trace_get_fields(%struct.trace_event_call* %8)
  store %struct.list_head* %9, %struct.list_head** %7, align 8
  %10 = load %struct.list_head*, %struct.list_head** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.ftrace_event_field* @__find_event_field(%struct.list_head* %10, i8* %11)
  store %struct.ftrace_event_field* %12, %struct.ftrace_event_field** %6, align 8
  %13 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %6, align 8
  %14 = icmp ne %struct.ftrace_event_field* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %6, align 8
  store %struct.ftrace_event_field* %16, %struct.ftrace_event_field** %3, align 8
  br label %27

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.ftrace_event_field* @__find_event_field(%struct.list_head* @ftrace_generic_fields, i8* %18)
  store %struct.ftrace_event_field* %19, %struct.ftrace_event_field** %6, align 8
  %20 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %6, align 8
  %21 = icmp ne %struct.ftrace_event_field* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %6, align 8
  store %struct.ftrace_event_field* %23, %struct.ftrace_event_field** %3, align 8
  br label %27

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = call %struct.ftrace_event_field* @__find_event_field(%struct.list_head* @ftrace_common_fields, i8* %25)
  store %struct.ftrace_event_field* %26, %struct.ftrace_event_field** %3, align 8
  br label %27

27:                                               ; preds = %24, %22, %15
  %28 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %3, align 8
  ret %struct.ftrace_event_field* %28
}

declare dso_local %struct.list_head* @trace_get_fields(%struct.trace_event_call*) #1

declare dso_local %struct.ftrace_event_field* @__find_event_field(%struct.list_head*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
