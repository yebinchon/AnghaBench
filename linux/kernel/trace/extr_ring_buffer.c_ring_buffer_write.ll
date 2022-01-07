; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32, i32 }
%struct.ring_buffer_per_cpu = type { i32 }
%struct.ring_buffer_event = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@BUF_MAX_DATA_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_write(%struct.ring_buffer* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.ring_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ring_buffer_per_cpu*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  %14 = call i32 (...) @preempt_disable_notrace()
  %15 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %15, i32 0, i32 2
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %77

20:                                               ; preds = %3
  %21 = call i32 (...) @raw_smp_processor_id()
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @cpumask_test_cpu(i32 %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %77

29:                                               ; preds = %20
  %30 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %30, i32 0, i32 0
  %32 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %32, i64 %34
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %35, align 8
  store %struct.ring_buffer_per_cpu* %36, %struct.ring_buffer_per_cpu** %7, align 8
  %37 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %38 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %37, i32 0, i32 0
  %39 = call i64 @atomic_read(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %77

42:                                               ; preds = %29
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @BUF_MAX_DATA_SIZE, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %77

47:                                               ; preds = %42
  %48 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %49 = call i32 @trace_recursive_lock(%struct.ring_buffer_per_cpu* %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %77

53:                                               ; preds = %47
  %54 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %55 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call %struct.ring_buffer_event* @rb_reserve_next_event(%struct.ring_buffer* %54, %struct.ring_buffer_per_cpu* %55, i64 %56)
  store %struct.ring_buffer_event* %57, %struct.ring_buffer_event** %8, align 8
  %58 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %59 = icmp ne %struct.ring_buffer_event* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %74

61:                                               ; preds = %53
  %62 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %63 = call i8* @rb_event_data(%struct.ring_buffer_event* %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %69 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %70 = call i32 @rb_commit(%struct.ring_buffer_per_cpu* %68, %struct.ring_buffer_event* %69)
  %71 = load %struct.ring_buffer*, %struct.ring_buffer** %4, align 8
  %72 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %73 = call i32 @rb_wakeups(%struct.ring_buffer* %71, %struct.ring_buffer_per_cpu* %72)
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %61, %60
  %75 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %76 = call i32 @trace_recursive_unlock(%struct.ring_buffer_per_cpu* %75)
  br label %77

77:                                               ; preds = %74, %52, %46, %41, %28, %19
  %78 = call i32 (...) @preempt_enable_notrace()
  %79 = load i32, i32* %10, align 4
  ret i32 %79
}

declare dso_local i32 @preempt_disable_notrace(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_recursive_lock(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.ring_buffer_event* @rb_reserve_next_event(%struct.ring_buffer*, %struct.ring_buffer_per_cpu*, i64) #1

declare dso_local i8* @rb_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @rb_commit(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @rb_wakeups(%struct.ring_buffer*, %struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @trace_recursive_unlock(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @preempt_enable_notrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
