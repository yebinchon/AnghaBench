; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_event_buffer_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events.c_trace_event_buffer_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_buffer = type { i8*, i32, i32, i32, i32, %struct.trace_event_file* }
%struct.trace_event_file = type { i32, %struct.trace_event_call* }
%struct.trace_event_call = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EVENT_FILE_FL_PID_FILTER = common dso_local global i32 0, align 4
@CONFIG_PREEMPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trace_event_buffer_reserve(%struct.trace_event_buffer* %0, %struct.trace_event_file* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.trace_event_buffer*, align 8
  %6 = alloca %struct.trace_event_file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.trace_event_call*, align 8
  store %struct.trace_event_buffer* %0, %struct.trace_event_buffer** %5, align 8
  store %struct.trace_event_file* %1, %struct.trace_event_file** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %10 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %9, i32 0, i32 1
  %11 = load %struct.trace_event_call*, %struct.trace_event_call** %10, align 8
  store %struct.trace_event_call* %11, %struct.trace_event_call** %8, align 8
  %12 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %13 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EVENT_FILE_FL_PID_FILTER, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %20 = call i64 @trace_event_ignore_this_pid(%struct.trace_event_file* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* null, i8** %4, align 8
  br label %75

23:                                               ; preds = %18, %3
  %24 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @local_save_flags(i32 %26)
  %28 = call i32 (...) @preempt_count()
  %29 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @CONFIG_PREEMPTION, align 4
  %32 = call i64 @IS_ENABLED(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %23
  %40 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %41 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %41, i32 0, i32 5
  store %struct.trace_event_file* %40, %struct.trace_event_file** %42, align 8
  %43 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %44 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %43, i32 0, i32 4
  %45 = load %struct.trace_event_file*, %struct.trace_event_file** %6, align 8
  %46 = load %struct.trace_event_call*, %struct.trace_event_call** %8, align 8
  %47 = getelementptr inbounds %struct.trace_event_call, %struct.trace_event_call* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %52 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @trace_event_buffer_lock_reserve(i32* %44, %struct.trace_event_file* %45, i32 %49, i64 %50, i32 %53, i32 %56)
  %58 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %59 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %39
  store i8* null, i8** %4, align 8
  br label %75

65:                                               ; preds = %39
  %66 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %67 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @ring_buffer_event_data(i32 %68)
  %70 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.trace_event_buffer*, %struct.trace_event_buffer** %5, align 8
  %73 = getelementptr inbounds %struct.trace_event_buffer, %struct.trace_event_buffer* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %4, align 8
  br label %75

75:                                               ; preds = %65, %64, %22
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i64 @trace_event_ignore_this_pid(%struct.trace_event_file*) #1

declare dso_local i32 @local_save_flags(i32) #1

declare dso_local i32 @preempt_count(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @trace_event_buffer_lock_reserve(i32*, %struct.trace_event_file*, i32, i64, i32, i32) #1

declare dso_local i8* @ring_buffer_event_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
