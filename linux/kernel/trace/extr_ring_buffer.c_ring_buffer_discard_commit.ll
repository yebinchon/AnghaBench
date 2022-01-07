; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_discard_commit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_discard_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu** }
%struct.ring_buffer_per_cpu = type { i32 }
%struct.ring_buffer_event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ring_buffer_discard_commit(%struct.ring_buffer* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %3, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %4, align 8
  %7 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %8 = call i32 @rb_event_discard(%struct.ring_buffer_event* %7)
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %6, align 4
  %10 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %10, i32 0, i32 0
  %12 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %12, i64 %14
  %16 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %15, align 8
  store %struct.ring_buffer_per_cpu* %16, %struct.ring_buffer_per_cpu** %5, align 8
  %17 = load %struct.ring_buffer*, %struct.ring_buffer** %3, align 8
  %18 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %18, i32 0, i32 0
  %20 = call i32 @local_read(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @RB_WARN_ON(%struct.ring_buffer* %17, i32 %23)
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %26 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %27 = call i32 @rb_decrement_entry(%struct.ring_buffer_per_cpu* %25, %struct.ring_buffer_event* %26)
  %28 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %29 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %30 = call i64 @rb_try_to_discard(%struct.ring_buffer_per_cpu* %28, %struct.ring_buffer_event* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %35 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %36 = call i32 @rb_update_write_stamp(%struct.ring_buffer_per_cpu* %34, %struct.ring_buffer_event* %35)
  br label %37

37:                                               ; preds = %33, %32
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %39 = call i32 @rb_end_commit(%struct.ring_buffer_per_cpu* %38)
  %40 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %41 = call i32 @trace_recursive_unlock(%struct.ring_buffer_per_cpu* %40)
  %42 = call i32 (...) @preempt_enable_notrace()
  ret void
}

declare dso_local i32 @rb_event_discard(%struct.ring_buffer_event*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @RB_WARN_ON(%struct.ring_buffer*, i32) #1

declare dso_local i32 @local_read(i32*) #1

declare dso_local i32 @rb_decrement_entry(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i64 @rb_try_to_discard(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @rb_update_write_stamp(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @rb_end_commit(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @trace_recursive_unlock(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
