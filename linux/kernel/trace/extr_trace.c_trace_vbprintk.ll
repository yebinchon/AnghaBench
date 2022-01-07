; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_vbprintk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_vbprintk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_call = type { i32 }
%struct.trace_array = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.bprint_entry = type { i64, i8*, i32 }

@event_bprint = common dso_local global %struct.trace_event_call zeroinitializer, align 4
@global_trace = common dso_local global %struct.trace_array zeroinitializer, align 8
@tracing_selftest_running = common dso_local global i64 0, align 8
@tracing_disabled = common dso_local global i64 0, align 8
@TRACE_BUF_SIZE = common dso_local global i32 0, align 4
@TRACE_BPRINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_vbprintk(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trace_event_call*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca %struct.ring_buffer*, align 8
  %11 = alloca %struct.trace_array*, align 8
  %12 = alloca %struct.bprint_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.trace_event_call* @event_bprint, %struct.trace_event_call** %8, align 8
  store %struct.trace_array* @global_trace, %struct.trace_array** %11, align 8
  store i32 0, i32* %15, align 4
  %18 = load i64, i64* @tracing_selftest_running, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i64, i64* @tracing_disabled, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %3
  %24 = phi i1 [ true, %3 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %118

29:                                               ; preds = %23
  %30 = call i32 (...) @pause_graph_tracing()
  %31 = call i32 (...) @preempt_count()
  store i32 %31, i32* %17, align 4
  %32 = call i32 (...) @preempt_disable_notrace()
  %33 = call i8* (...) @get_trace_buf()
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %15, align 4
  br label %114

37:                                               ; preds = %29
  %38 = load i8*, i8** %14, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* @TRACE_BUF_SIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @vbin_printf(i32* %39, i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* @TRACE_BUF_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = icmp ugt i64 %48, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %37
  br label %112

57:                                               ; preds = %53
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @local_save_flags(i64 %58)
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = add i64 24, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %16, align 4
  %65 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  %66 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.ring_buffer*, %struct.ring_buffer** %67, align 8
  store %struct.ring_buffer* %68, %struct.ring_buffer** %10, align 8
  %69 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %70 = load i32, i32* @TRACE_BPRINT, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i64, i64* %13, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer* %69, i32 %70, i32 %71, i64 %72, i32 %73)
  store %struct.ring_buffer_event* %74, %struct.ring_buffer_event** %9, align 8
  %75 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %76 = icmp ne %struct.ring_buffer_event* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %57
  br label %112

78:                                               ; preds = %57
  %79 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %80 = call %struct.bprint_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %79)
  store %struct.bprint_entry* %80, %struct.bprint_entry** %12, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.bprint_entry*, %struct.bprint_entry** %12, align 8
  %83 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.bprint_entry*, %struct.bprint_entry** %12, align 8
  %86 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.bprint_entry*, %struct.bprint_entry** %12, align 8
  %88 = getelementptr inbounds %struct.bprint_entry, %struct.bprint_entry* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32 %89, i8* %90, i32 %94)
  %96 = load %struct.trace_event_call*, %struct.trace_event_call** %8, align 8
  %97 = load %struct.bprint_entry*, %struct.bprint_entry** %12, align 8
  %98 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %99 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %100 = call i32 @call_filter_check_discard(%struct.trace_event_call* %96, %struct.bprint_entry* %97, %struct.ring_buffer* %98, %struct.ring_buffer_event* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %78
  %103 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %104 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %105 = call i32 @__buffer_unlock_commit(%struct.ring_buffer* %103, %struct.ring_buffer_event* %104)
  %106 = load %struct.trace_array*, %struct.trace_array** %11, align 8
  %107 = load %struct.ring_buffer*, %struct.ring_buffer** %10, align 8
  %108 = load i64, i64* %13, align 8
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @ftrace_trace_stack(%struct.trace_array* %106, %struct.ring_buffer* %107, i64 %108, i32 6, i32 %109, i32* null)
  br label %111

111:                                              ; preds = %102, %78
  br label %112

112:                                              ; preds = %111, %77, %56
  %113 = call i32 (...) @put_trace_buf()
  br label %114

114:                                              ; preds = %112, %36
  %115 = call i32 (...) @preempt_enable_notrace()
  %116 = call i32 (...) @unpause_graph_tracing()
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %28
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pause_graph_tracing(...) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local i8* @get_trace_buf(...) #1

declare dso_local i32 @vbin_printf(i32*, i32, i8*, i32) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.bprint_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @call_filter_check_discard(%struct.trace_event_call*, %struct.bprint_entry*, %struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @__buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ftrace_trace_stack(%struct.trace_array*, %struct.ring_buffer*, i64, i32, i32, i32*) #1

declare dso_local i32 @put_trace_buf(...) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

declare dso_local i32 @unpause_graph_tracing(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
