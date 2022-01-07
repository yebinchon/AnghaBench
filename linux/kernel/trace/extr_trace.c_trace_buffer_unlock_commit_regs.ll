; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_buffer_unlock_commit_regs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_buffer_unlock_commit_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_array = type { i32 }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.pt_regs = type { i32 }

@STACK_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_buffer_unlock_commit_regs(%struct.trace_array* %0, %struct.ring_buffer* %1, %struct.ring_buffer_event* %2, i64 %3, i32 %4, %struct.pt_regs* %5) #0 {
  %7 = alloca %struct.trace_array*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_regs*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %7, align 8
  store %struct.ring_buffer* %1, %struct.ring_buffer** %8, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.pt_regs* %5, %struct.pt_regs** %12, align 8
  %13 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %14 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %15 = call i32 @__buffer_unlock_commit(%struct.ring_buffer* %13, %struct.ring_buffer_event* %14)
  %16 = load %struct.trace_array*, %struct.trace_array** %7, align 8
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %20 = icmp ne %struct.pt_regs* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  br label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @STACK_SKIP, align 4
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ 0, %21 ], [ %23, %22 ]
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %12, align 8
  %28 = call i32 @ftrace_trace_stack(%struct.trace_array* %16, %struct.ring_buffer* %17, i64 %18, i32 %25, i32 %26, %struct.pt_regs* %27)
  %29 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @ftrace_trace_userstack(%struct.ring_buffer* %29, i64 %30, i32 %31)
  ret void
}

declare dso_local i32 @__buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ftrace_trace_stack(%struct.trace_array*, %struct.ring_buffer*, i64, i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @ftrace_trace_userstack(%struct.ring_buffer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
