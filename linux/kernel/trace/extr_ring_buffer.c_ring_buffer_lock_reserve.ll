; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_lock_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_lock_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32, i32 }
%struct.ring_buffer_per_cpu = type { i32 }

@BUF_MAX_DATA_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ring_buffer_event* @ring_buffer_lock_reserve(%struct.ring_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.ring_buffer_event*, align 8
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca %struct.ring_buffer_event*, align 8
  %8 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @preempt_disable_notrace()
  %10 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %10, i32 0, i32 2
  %12 = call i32 @atomic_read(i32* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %70

16:                                               ; preds = %2
  %17 = call i32 (...) @raw_smp_processor_id()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @cpumask_test_cpu(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %70

29:                                               ; preds = %16
  %30 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %30, i32 0, i32 0
  %32 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %32, i64 %34
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %35, align 8
  store %struct.ring_buffer_per_cpu* %36, %struct.ring_buffer_per_cpu** %6, align 8
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %37, i32 0, i32 0
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %70

43:                                               ; preds = %29
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @BUF_MAX_DATA_SIZE, align 8
  %46 = icmp ugt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %70

51:                                               ; preds = %43
  %52 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %53 = call i32 @trace_recursive_lock(%struct.ring_buffer_per_cpu* %52)
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %70

57:                                               ; preds = %51
  %58 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %59 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call %struct.ring_buffer_event* @rb_reserve_next_event(%struct.ring_buffer* %58, %struct.ring_buffer_per_cpu* %59, i64 %60)
  store %struct.ring_buffer_event* %61, %struct.ring_buffer_event** %7, align 8
  %62 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  %63 = icmp ne %struct.ring_buffer_event* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %67

65:                                               ; preds = %57
  %66 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %7, align 8
  store %struct.ring_buffer_event* %66, %struct.ring_buffer_event** %3, align 8
  br label %72

67:                                               ; preds = %64
  %68 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %69 = call i32 @trace_recursive_unlock(%struct.ring_buffer_per_cpu* %68)
  br label %70

70:                                               ; preds = %67, %56, %50, %42, %28, %15
  %71 = call i32 (...) @preempt_enable_notrace()
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  ret %struct.ring_buffer_event* %73
}

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @trace_recursive_lock(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.ring_buffer_event* @rb_reserve_next_event(%struct.ring_buffer*, %struct.ring_buffer_per_cpu*, i64) #1

declare dso_local i32 @trace_recursive_unlock(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
