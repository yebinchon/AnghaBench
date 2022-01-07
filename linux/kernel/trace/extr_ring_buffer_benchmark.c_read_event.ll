; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_read_event.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer_benchmark.c_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }

@buffer = common dso_local global i32 0, align 4
@EVENT_DROPPED = common dso_local global i32 0, align 4
@read = common dso_local global i32 0, align 4
@EVENT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @buffer, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.ring_buffer_event* @ring_buffer_consume(i32 %7, i32 %8, i32* %6, i32* null)
  store %struct.ring_buffer_event* %9, %struct.ring_buffer_event** %4, align 8
  %10 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %11 = icmp ne %struct.ring_buffer_event* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EVENT_DROPPED, align 4
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %16 = call i32* @ring_buffer_event_data(%struct.ring_buffer_event* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = call i32 (...) @TEST_ERROR()
  %23 = load i32, i32* @EVENT_DROPPED, align 4
  store i32 %23, i32* %2, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @read, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @read, align 4
  %27 = load i32, i32* @EVENT_FOUND, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %21, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.ring_buffer_event* @ring_buffer_consume(i32, i32, i32*, i32*) #1

declare dso_local i32* @ring_buffer_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @TEST_ERROR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
