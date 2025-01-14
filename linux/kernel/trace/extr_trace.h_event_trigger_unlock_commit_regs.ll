; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.h_event_trigger_unlock_commit_regs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.h_event_trigger_unlock_commit_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i32 }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.pt_regs = type { i32 }

@ETT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_event_file*, %struct.ring_buffer*, %struct.ring_buffer_event*, i8*, i64, i32, %struct.pt_regs*)* @event_trigger_unlock_commit_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_trigger_unlock_commit_regs(%struct.trace_event_file* %0, %struct.ring_buffer* %1, %struct.ring_buffer_event* %2, i8* %3, i64 %4, i32 %5, %struct.pt_regs* %6) #0 {
  %8 = alloca %struct.trace_event_file*, align 8
  %9 = alloca %struct.ring_buffer*, align 8
  %10 = alloca %struct.ring_buffer_event*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pt_regs*, align 8
  %15 = alloca i32, align 4
  store %struct.trace_event_file* %0, %struct.trace_event_file** %8, align 8
  store %struct.ring_buffer* %1, %struct.ring_buffer** %9, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.pt_regs* %6, %struct.pt_regs** %14, align 8
  %16 = load i32, i32* @ETT_NONE, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %19 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @__event_trigger_test_discard(%struct.trace_event_file* %17, %struct.ring_buffer* %18, %struct.ring_buffer_event* %19, i8* %20, i32* %15)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %7
  %24 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %25 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %28 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %14, align 8
  %32 = call i32 @trace_buffer_unlock_commit_regs(i32 %26, %struct.ring_buffer* %27, %struct.ring_buffer_event* %28, i64 %29, i32 %30, %struct.pt_regs* %31)
  br label %33

33:                                               ; preds = %23, %7
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.trace_event_file*, %struct.trace_event_file** %8, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @event_triggers_post_call(%struct.trace_event_file* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @__event_trigger_test_discard(%struct.trace_event_file*, %struct.ring_buffer*, %struct.ring_buffer_event*, i8*, i32*) #1

declare dso_local i32 @trace_buffer_unlock_commit_regs(i32, %struct.ring_buffer*, %struct.ring_buffer_event*, i64, i32, %struct.pt_regs*) #1

declare dso_local i32 @event_triggers_post_call(%struct.trace_event_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
