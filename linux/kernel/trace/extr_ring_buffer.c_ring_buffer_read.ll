; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i64 }
%struct.ring_buffer_iter = type { %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i32 }

@RINGBUF_TYPE_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @ring_buffer_read(%struct.ring_buffer_iter* %0, i32* %1) #0 {
  %3 = alloca %struct.ring_buffer_iter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ring_buffer_event*, align 8
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca i64, align 8
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %9 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %8, i32 0, i32 0
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  store %struct.ring_buffer_per_cpu* %10, %struct.ring_buffer_per_cpu** %6, align 8
  %11 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %12 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @raw_spin_lock_irqsave(i32* %12, i64 %13)
  br label %15

15:                                               ; preds = %28, %2
  %16 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.ring_buffer_event* @rb_iter_peek(%struct.ring_buffer_iter* %16, i32* %17)
  store %struct.ring_buffer_event* %18, %struct.ring_buffer_event** %5, align 8
  %19 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %20 = icmp ne %struct.ring_buffer_event* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %32

22:                                               ; preds = %15
  %23 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %24 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %15

29:                                               ; preds = %22
  %30 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %3, align 8
  %31 = call i32 @rb_advance_iter(%struct.ring_buffer_iter* %30)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %34 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %33, i32 0, i32 0
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @raw_spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  ret %struct.ring_buffer_event* %37
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ring_buffer_event* @rb_iter_peek(%struct.ring_buffer_iter*, i32*) #1

declare dso_local i32 @rb_advance_iter(%struct.ring_buffer_iter*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
