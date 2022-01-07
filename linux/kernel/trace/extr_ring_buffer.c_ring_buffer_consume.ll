; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_consume.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i64 }
%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32 }
%struct.ring_buffer_per_cpu = type { i64 }

@RINGBUF_TYPE_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @ring_buffer_consume(%struct.ring_buffer* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ring_buffer_per_cpu*, align 8
  %10 = alloca %struct.ring_buffer_event*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %10, align 8
  br label %13

13:                                               ; preds = %61, %4
  %14 = call i32 (...) @preempt_disable()
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @cpumask_test_cpu(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %51

22:                                               ; preds = %13
  %23 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %23, i32 0, i32 0
  %25 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %25, i64 %27
  %29 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %28, align 8
  store %struct.ring_buffer_per_cpu* %29, %struct.ring_buffer_per_cpu** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  %33 = call i32 @rb_reader_lock(%struct.ring_buffer_per_cpu* %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = call %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu* %34, i32* %35, i64* %36)
  store %struct.ring_buffer_event* %37, %struct.ring_buffer_event** %10, align 8
  %38 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %39 = icmp ne %struct.ring_buffer_event* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  %44 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %43)
  br label %45

45:                                               ; preds = %40, %22
  %46 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %9, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @rb_reader_unlock(%struct.ring_buffer_per_cpu* %46, i32 %47)
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @local_irq_restore(i64 %49)
  br label %51

51:                                               ; preds = %45, %21
  %52 = call i32 (...) @preempt_enable()
  %53 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %54 = icmp ne %struct.ring_buffer_event* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  %57 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %13

62:                                               ; preds = %55, %51
  %63 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %10, align 8
  ret %struct.ring_buffer_event* %63
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rb_reader_lock(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu*, i32*, i64*) #1

declare dso_local i32 @rb_advance_reader(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_reader_unlock(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
