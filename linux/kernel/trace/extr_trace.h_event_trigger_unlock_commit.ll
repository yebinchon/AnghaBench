; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.h_event_trigger_unlock_commit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.h_event_trigger_unlock_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i32 }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }

@ETT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_event_file*, %struct.ring_buffer*, %struct.ring_buffer_event*, i8*, i64, i32)* @event_trigger_unlock_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_trigger_unlock_commit(%struct.trace_event_file* %0, %struct.ring_buffer* %1, %struct.ring_buffer_event* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.trace_event_file*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.trace_event_file* %0, %struct.trace_event_file** %7, align 8
  store %struct.ring_buffer* %1, %struct.ring_buffer** %8, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @ETT_NONE, align 4
  store i32 %14, i32* %13, align 4
  %15 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %17 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @__event_trigger_test_discard(%struct.trace_event_file* %15, %struct.ring_buffer* %16, %struct.ring_buffer_event* %17, i8* %18, i32* %13)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %6
  %22 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %23 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %26 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @trace_buffer_unlock_commit(i32 %24, %struct.ring_buffer* %25, %struct.ring_buffer_event* %26, i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %6
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @event_triggers_post_call(%struct.trace_event_file* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @__event_trigger_test_discard(%struct.trace_event_file*, %struct.ring_buffer*, %struct.ring_buffer_event*, i8*, i32*) #1

declare dso_local i32 @trace_buffer_unlock_commit(i32, %struct.ring_buffer*, %struct.ring_buffer_event*, i64, i32) #1

declare dso_local i32 @event_triggers_post_call(%struct.trace_event_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
