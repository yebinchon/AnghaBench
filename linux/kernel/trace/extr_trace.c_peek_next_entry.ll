; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_peek_next_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_peek_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_entry = type { i32 }
%struct.trace_iterator = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer_iter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trace_entry* (%struct.trace_iterator*, i32, i32*, i64*)* @peek_next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trace_entry* @peek_next_entry(%struct.trace_iterator* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.trace_entry*, align 8
  %6 = alloca %struct.trace_iterator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ring_buffer_event*, align 8
  %11 = alloca %struct.ring_buffer_iter*, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.ring_buffer_iter* @trace_buffer_iter(%struct.trace_iterator* %12, i32 %13)
  store %struct.ring_buffer_iter* %14, %struct.ring_buffer_iter** %11, align 8
  %15 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %11, align 8
  %16 = icmp ne %struct.ring_buffer_iter* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter* %18, i32* %19)
  store %struct.ring_buffer_event* %20, %struct.ring_buffer_event** %10, align 8
  br label %31

21:                                               ; preds = %4
  %22 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %23 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = call %struct.ring_buffer_event* @ring_buffer_peek(i32 %26, i32 %27, i32* %28, i64* %29)
  store %struct.ring_buffer_event* %30, %struct.ring_buffer_event** %10, align 8
  br label %31

31:                                               ; preds = %21, %17
  %32 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %33 = icmp ne %struct.ring_buffer_event* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %36 = call i32 @ring_buffer_event_length(%struct.ring_buffer_event* %35)
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %40 = call %struct.trace_entry* @ring_buffer_event_data(%struct.ring_buffer_event* %39)
  store %struct.trace_entry* %40, %struct.trace_entry** %5, align 8
  br label %44

41:                                               ; preds = %31
  %42 = load %struct.trace_iterator*, %struct.trace_iterator** %6, align 8
  %43 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  store %struct.trace_entry* null, %struct.trace_entry** %5, align 8
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  ret %struct.trace_entry* %45
}

declare dso_local %struct.ring_buffer_iter* @trace_buffer_iter(%struct.trace_iterator*, i32) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_iter_peek(%struct.ring_buffer_iter*, i32*) #1

declare dso_local %struct.ring_buffer_event* @ring_buffer_peek(i32, i32, i32*, i64*) #1

declare dso_local i32 @ring_buffer_event_length(%struct.ring_buffer_event*) #1

declare dso_local %struct.trace_entry* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
