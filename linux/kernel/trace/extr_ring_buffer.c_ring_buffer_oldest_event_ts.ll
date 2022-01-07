; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_oldest_event_ts.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_oldest_event_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32 }
%struct.ring_buffer_per_cpu = type { i32, %struct.buffer_page*, %struct.buffer_page* }
%struct.buffer_page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_oldest_event_ts(%struct.ring_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ring_buffer_per_cpu*, align 8
  %8 = alloca %struct.buffer_page*, align 8
  %9 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cpumask_test_cpu(i32 %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %18, i32 0, i32 0
  %20 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %20, i64 %22
  %24 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %23, align 8
  store %struct.ring_buffer_per_cpu* %24, %struct.ring_buffer_per_cpu** %7, align 8
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @raw_spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %30 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %29, i32 0, i32 2
  %31 = load %struct.buffer_page*, %struct.buffer_page** %30, align 8
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %33 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %32, i32 0, i32 1
  %34 = load %struct.buffer_page*, %struct.buffer_page** %33, align 8
  %35 = icmp eq %struct.buffer_page* %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %17
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %37, i32 0, i32 1
  %39 = load %struct.buffer_page*, %struct.buffer_page** %38, align 8
  store %struct.buffer_page* %39, %struct.buffer_page** %8, align 8
  br label %43

40:                                               ; preds = %17
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %42 = call %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu* %41)
  store %struct.buffer_page* %42, %struct.buffer_page** %8, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %45 = icmp ne %struct.buffer_page* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %48 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %54 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %53, i32 0, i32 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @raw_spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
