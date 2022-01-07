; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.h___event_trigger_test_discard.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.h___event_trigger_test_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_event_file = type { i64, i32 }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }

@EVENT_FILE_FL_TRIGGER_COND = common dso_local global i64 0, align 8
@EVENT_FILE_FL_SOFT_DISABLED_BIT = common dso_local global i32 0, align 4
@EVENT_FILE_FL_FILTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_event_file*, %struct.ring_buffer*, %struct.ring_buffer_event*, i8*, i32*)* @__event_trigger_test_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__event_trigger_test_discard(%struct.trace_event_file* %0, %struct.ring_buffer* %1, %struct.ring_buffer_event* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_event_file*, align 8
  %8 = alloca %struct.ring_buffer*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.trace_event_file* %0, %struct.trace_event_file** %7, align 8
  store %struct.ring_buffer* %1, %struct.ring_buffer** %8, align 8
  store %struct.ring_buffer_event* %2, %struct.ring_buffer_event** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %14 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i64, i64* @EVENT_FILE_FL_TRIGGER_COND, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %24 = call i32 @event_triggers_call(%struct.trace_event_file* %21, i8* %22, %struct.ring_buffer_event* %23)
  %25 = load i32*, i32** %11, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %5
  %27 = load i32, i32* @EVENT_FILE_FL_SOFT_DISABLED_BIT, align 4
  %28 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %29 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %26
  %33 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %34 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @EVENT_FILE_FL_FILTERED, align 4
  %37 = sext i32 %36 to i64
  %38 = and i64 %35, %37
  %39 = trunc i64 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load %struct.trace_event_file*, %struct.trace_event_file** %7, align 8
  %44 = getelementptr inbounds %struct.trace_event_file, %struct.trace_event_file* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @filter_match_preds(i32 %45, i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42, %26
  %50 = load %struct.ring_buffer*, %struct.ring_buffer** %8, align 8
  %51 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %52 = call i32 @__trace_event_discard_commit(%struct.ring_buffer* %50, %struct.ring_buffer_event* %51)
  store i32 1, i32* %6, align 4
  br label %54

53:                                               ; preds = %42, %32
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @event_triggers_call(%struct.trace_event_file*, i8*, %struct.ring_buffer_event*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @filter_match_preds(i32, i8*) #1

declare dso_local i32 @__trace_event_discard_commit(%struct.ring_buffer*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
