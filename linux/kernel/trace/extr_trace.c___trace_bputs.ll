; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___trace_bputs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___trace_bputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.bputs_entry = type { i64, i8* }

@global_trace = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRACE_ITER_PRINTK = common dso_local global i32 0, align 4
@tracing_selftest_running = common dso_local global i64 0, align 8
@tracing_disabled = common dso_local global i64 0, align 8
@TRACE_BPUTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__trace_bputs(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca %struct.ring_buffer*, align 8
  %8 = alloca %struct.bputs_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 16, i32* %10, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 0), align 8
  %13 = load i32, i32* @TRACE_ITER_PRINTK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = call i32 (...) @preempt_count()
  store i32 %18, i32* %11, align 4
  %19 = load i64, i64* @tracing_selftest_running, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @tracing_disabled, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ true, %17 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %59

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @local_save_flags(i64 %31)
  %33 = load %struct.ring_buffer*, %struct.ring_buffer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 1, i32 0), align 8
  store %struct.ring_buffer* %33, %struct.ring_buffer** %7, align 8
  %34 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %35 = load i32, i32* @TRACE_BPUTS, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer* %34, i32 %35, i32 %36, i64 %37, i32 %38)
  store %struct.ring_buffer_event* %39, %struct.ring_buffer_event** %6, align 8
  %40 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %41 = icmp ne %struct.ring_buffer_event* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %59

43:                                               ; preds = %30
  %44 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %45 = call %struct.bputs_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %44)
  store %struct.bputs_entry* %45, %struct.bputs_entry** %8, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.bputs_entry*, %struct.bputs_entry** %8, align 8
  %48 = getelementptr inbounds %struct.bputs_entry, %struct.bputs_entry* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.bputs_entry*, %struct.bputs_entry** %8, align 8
  %51 = getelementptr inbounds %struct.bputs_entry, %struct.bputs_entry* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %53 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %54 = call i32 @__buffer_unlock_commit(%struct.ring_buffer* %52, %struct.ring_buffer_event* %53)
  %55 = load %struct.ring_buffer*, %struct.ring_buffer** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ftrace_trace_stack(%struct.TYPE_5__* @global_trace, %struct.ring_buffer* %55, i64 %56, i32 4, i32 %57, i32* null)
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %43, %42, %29, %16
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @preempt_count(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.bputs_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @__buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ftrace_trace_stack(%struct.TYPE_5__*, %struct.ring_buffer*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
