; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_peek.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i64 }
%struct.ring_buffer = type { i32, %struct.ring_buffer_per_cpu** }
%struct.ring_buffer_per_cpu = type { i32 }

@RINGBUF_TYPE_PADDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @ring_buffer_peek(%struct.ring_buffer* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.ring_buffer_event*, align 8
  %6 = alloca %struct.ring_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ring_buffer_per_cpu*, align 8
  %11 = alloca %struct.ring_buffer_event*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %14, i32 0, i32 1
  %16 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %16, i64 %18
  %20 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %19, align 8
  store %struct.ring_buffer_per_cpu* %20, %struct.ring_buffer_per_cpu** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cpumask_test_cpu(i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %5, align 8
  br label %66

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @local_irq_save(i64 %30)
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %10, align 8
  %33 = call i32 @rb_reader_lock(%struct.ring_buffer_per_cpu* %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %10, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = call %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu* %34, i32* %35, i64* %36)
  store %struct.ring_buffer_event* %37, %struct.ring_buffer_event** %11, align 8
  %38 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %39 = icmp ne %struct.ring_buffer_event* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %42 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %10, align 8
  %48 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %47)
  br label %49

49:                                               ; preds = %46, %40, %29
  %50 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %10, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @rb_reader_unlock(%struct.ring_buffer_per_cpu* %50, i32 %51)
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @local_irq_restore(i64 %53)
  %55 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %56 = icmp ne %struct.ring_buffer_event* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  %59 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RINGBUF_TYPE_PADDING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %29

64:                                               ; preds = %57, %49
  %65 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %11, align 8
  store %struct.ring_buffer_event* %65, %struct.ring_buffer_event** %5, align 8
  br label %66

66:                                               ; preds = %64, %27
  %67 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  ret %struct.ring_buffer_event* %67
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rb_reader_lock(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu*, i32*, i64*) #1

declare dso_local i32 @rb_advance_reader(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_reader_unlock(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
