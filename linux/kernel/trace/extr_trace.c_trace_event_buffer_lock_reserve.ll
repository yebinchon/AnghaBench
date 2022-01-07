; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_event_buffer_lock_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_event_buffer_lock_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i64* }
%struct.trace_event_file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ring_buffer* }

@EVENT_FILE_FL_SOFT_DISABLED = common dso_local global i32 0, align 4
@EVENT_FILE_FL_FILTERED = common dso_local global i32 0, align 4
@trace_buffered_event = common dso_local global i32 0, align 4
@trace_buffered_event_cnt = common dso_local global i32 0, align 4
@EVENT_FILE_FL_TRIGGER_COND = common dso_local global i32 0, align 4
@temp_buffer = common dso_local global %struct.ring_buffer* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @trace_event_buffer_lock_reserve(%struct.ring_buffer** %0, %struct.trace_event_file* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca %struct.ring_buffer**, align 8
  %9 = alloca %struct.trace_event_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ring_buffer_event*, align 8
  %15 = alloca i32, align 4
  store %struct.ring_buffer** %0, %struct.ring_buffer*** %8, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %17 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.ring_buffer*, %struct.ring_buffer** %20, align 8
  %22 = load %struct.ring_buffer**, %struct.ring_buffer*** %8, align 8
  store %struct.ring_buffer* %21, %struct.ring_buffer** %22, align 8
  %23 = load %struct.ring_buffer**, %struct.ring_buffer*** %8, align 8
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %23, align 8
  %25 = call i32 @ring_buffer_time_stamp_abs(%struct.ring_buffer* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %6
  %28 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %29 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EVENT_FILE_FL_SOFT_DISABLED, align 4
  %32 = load i32, i32* @EVENT_FILE_FL_FILTERED, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %60

36:                                               ; preds = %27
  %37 = load i32, i32* @trace_buffered_event, align 4
  %38 = call %struct.ring_buffer_event* @this_cpu_read(i32 %37)
  store %struct.ring_buffer_event* %38, %struct.ring_buffer_event** %14, align 8
  %39 = icmp ne %struct.ring_buffer_event* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i32, i32* @trace_buffered_event_cnt, align 4
  %42 = call i32 @this_cpu_inc_return(i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @trace_event_setup(%struct.ring_buffer_event* %46, i32 %47, i64 %48, i32 %49)
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  %53 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %51, i64* %55, align 8
  %56 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  store %struct.ring_buffer_event* %56, %struct.ring_buffer_event** %7, align 8
  br label %89

57:                                               ; preds = %40
  %58 = load i32, i32* @trace_buffered_event_cnt, align 4
  %59 = call i32 @this_cpu_dec(i32 %58)
  br label %60

60:                                               ; preds = %57, %36, %27, %6
  %61 = load %struct.ring_buffer**, %struct.ring_buffer*** %8, align 8
  %62 = load %struct.ring_buffer*, %struct.ring_buffer** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer* %62, i32 %63, i64 %64, i64 %65, i32 %66)
  store %struct.ring_buffer_event* %67, %struct.ring_buffer_event** %14, align 8
  %68 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  %69 = icmp ne %struct.ring_buffer_event* %68, null
  br i1 %69, label %87, label %70

70:                                               ; preds = %60
  %71 = load %struct.trace_event_file*, %struct.trace_event_file** %9, align 8
  %72 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EVENT_FILE_FL_TRIGGER_COND, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.ring_buffer*, %struct.ring_buffer** @temp_buffer, align 8
  %79 = load %struct.ring_buffer**, %struct.ring_buffer*** %8, align 8
  store %struct.ring_buffer* %78, %struct.ring_buffer** %79, align 8
  %80 = load %struct.ring_buffer**, %struct.ring_buffer*** %8, align 8
  %81 = load %struct.ring_buffer*, %struct.ring_buffer** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer* %81, i32 %82, i64 %83, i64 %84, i32 %85)
  store %struct.ring_buffer_event* %86, %struct.ring_buffer_event** %14, align 8
  br label %87

87:                                               ; preds = %77, %70, %60
  %88 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %14, align 8
  store %struct.ring_buffer_event* %88, %struct.ring_buffer_event** %7, align 8
  br label %89

89:                                               ; preds = %87, %45
  %90 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  ret %struct.ring_buffer_event* %90
}

declare dso_local i32 @ring_buffer_time_stamp_abs(%struct.ring_buffer*) #1

declare dso_local %struct.ring_buffer_event* @this_cpu_read(i32) #1

declare dso_local i32 @this_cpu_inc_return(i32) #1

declare dso_local i32 @trace_event_setup(%struct.ring_buffer_event*, i32, i64, i32) #1

declare dso_local i32 @this_cpu_dec(i32) #1

declare dso_local %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
