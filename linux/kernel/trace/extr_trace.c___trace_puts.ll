; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___trace_puts.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c___trace_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.print_entry = type { i64, i8* }

@global_trace = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRACE_ITER_PRINTK = common dso_local global i32 0, align 4
@tracing_selftest_running = common dso_local global i64 0, align 8
@tracing_disabled = common dso_local global i64 0, align 8
@TRACE_PRINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__trace_puts(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca %struct.ring_buffer*, align 8
  %10 = alloca %struct.print_entry*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 0), align 8
  %15 = load i32, i32* @TRACE_ITER_PRINTK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = call i32 (...) @preempt_count()
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* @tracing_selftest_running, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @tracing_disabled, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ true, %19 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %101

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 16, %34
  %36 = add i64 %35, 2
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @local_save_flags(i64 %38)
  %40 = load %struct.ring_buffer*, %struct.ring_buffer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @global_trace, i32 0, i32 1, i32 0), align 8
  store %struct.ring_buffer* %40, %struct.ring_buffer** %9, align 8
  %41 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %42 = load i32, i32* @TRACE_PRINT, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i64, i64* %11, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer* %41, i32 %42, i32 %43, i64 %44, i32 %45)
  store %struct.ring_buffer_event* %46, %struct.ring_buffer_event** %8, align 8
  %47 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %48 = icmp ne %struct.ring_buffer_event* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %101

50:                                               ; preds = %32
  %51 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %52 = call %struct.print_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %51)
  store %struct.print_entry* %52, %struct.print_entry** %10, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.print_entry*, %struct.print_entry** %10, align 8
  %55 = getelementptr inbounds %struct.print_entry, %struct.print_entry* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.print_entry*, %struct.print_entry** %10, align 8
  %57 = getelementptr inbounds %struct.print_entry, %struct.print_entry* %56, i32 0, i32 1
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @memcpy(i8** %57, i8* %58, i32 %59)
  %61 = load %struct.print_entry*, %struct.print_entry** %10, align 8
  %62 = getelementptr inbounds %struct.print_entry, %struct.print_entry* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 10
  br i1 %70, label %71, label %85

71:                                               ; preds = %50
  %72 = load %struct.print_entry*, %struct.print_entry** %10, align 8
  %73 = getelementptr inbounds %struct.print_entry, %struct.print_entry* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 10, i8* %77, align 1
  %78 = load %struct.print_entry*, %struct.print_entry** %10, align 8
  %79 = getelementptr inbounds %struct.print_entry, %struct.print_entry* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  br label %92

85:                                               ; preds = %50
  %86 = load %struct.print_entry*, %struct.print_entry** %10, align 8
  %87 = getelementptr inbounds %struct.print_entry, %struct.print_entry* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %85, %71
  %93 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %94 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %95 = call i32 @__buffer_unlock_commit(%struct.ring_buffer* %93, %struct.ring_buffer_event* %94)
  %96 = load %struct.ring_buffer*, %struct.ring_buffer** %9, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @ftrace_trace_stack(%struct.TYPE_5__* @global_trace, %struct.ring_buffer* %96, i64 %97, i32 4, i32 %98, i32* null)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %92, %49, %31, %18
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @preempt_count(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local_save_flags(i64) #1

declare dso_local %struct.ring_buffer_event* @__trace_buffer_lock_reserve(%struct.ring_buffer*, i32, i32, i64, i32) #1

declare dso_local %struct.print_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @__buffer_unlock_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ftrace_trace_stack(%struct.TYPE_5__*, %struct.ring_buffer*, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
