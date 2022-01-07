; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_lock_task_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_lock_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32* }
%struct.perf_event_context = type { %struct.task_struct*, i32, i32 }

@TASK_TOMBSTONE = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event_context* (%struct.task_struct*, i32, i64*)* @perf_lock_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event_context* @perf_lock_task_context(%struct.task_struct* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.perf_event_context*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  br label %8

8:                                                ; preds = %37, %3
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @local_irq_save(i64 %10)
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.perf_event_context* @rcu_dereference(i32 %19)
  store %struct.perf_event_context* %20, %struct.perf_event_context** %7, align 8
  %21 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %22 = icmp ne %struct.perf_event_context* %21, null
  br i1 %22, label %23, label %69

23:                                               ; preds = %8
  %24 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %25 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %24, i32 0, i32 1
  %26 = call i32 @raw_spin_lock(i32* %25)
  %27 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.perf_event_context* @rcu_dereference(i32 %34)
  %36 = icmp ne %struct.perf_event_context* %27, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %23
  %38 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %39 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %38, i32 0, i32 1
  %40 = call i32 @raw_spin_unlock(i32* %39)
  %41 = call i32 (...) @rcu_read_unlock()
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @local_irq_restore(i64 %43)
  br label %8

45:                                               ; preds = %23
  %46 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %47 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %46, i32 0, i32 0
  %48 = load %struct.task_struct*, %struct.task_struct** %47, align 8
  %49 = load %struct.task_struct*, %struct.task_struct** @TASK_TOMBSTONE, align 8
  %50 = icmp eq %struct.task_struct* %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %45
  %52 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %53 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %52, i32 0, i32 2
  %54 = call i32 @refcount_inc_not_zero(i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %58 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %57, i32 0, i32 1
  %59 = call i32 @raw_spin_unlock(i32* %58)
  store %struct.perf_event_context* null, %struct.perf_event_context** %7, align 8
  br label %68

60:                                               ; preds = %51
  %61 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %62 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %61, i32 0, i32 0
  %63 = load %struct.task_struct*, %struct.task_struct** %62, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %65 = icmp ne %struct.task_struct* %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON_ONCE(i32 %66)
  br label %68

68:                                               ; preds = %60, %56
  br label %69

69:                                               ; preds = %68, %8
  %70 = call i32 (...) @rcu_read_unlock()
  %71 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  %72 = icmp ne %struct.perf_event_context* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64*, i64** %6, align 8
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @local_irq_restore(i64 %75)
  br label %77

77:                                               ; preds = %73, %69
  %78 = load %struct.perf_event_context*, %struct.perf_event_context** %7, align 8
  ret %struct.perf_event_context* %78
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.perf_event_context* @rcu_dereference(i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
