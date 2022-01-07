; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_install_in_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_install_in_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event_context = type { i32, %struct.task_struct*, i32 }
%struct.perf_event = type { i32, i32 }

@__perf_install_in_context = common dso_local global i32 0, align 4
@TASK_TOMBSTONE = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event_context*, %struct.perf_event*, i32)* @perf_install_in_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_install_in_context(%struct.perf_event_context* %0, %struct.perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event_context*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  store %struct.perf_event_context* %0, %struct.perf_event_context** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %9 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %8, i32 0, i32 1
  %10 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %11 = call %struct.task_struct* @READ_ONCE(%struct.task_struct* %10)
  store %struct.task_struct* %11, %struct.task_struct** %7, align 8
  %12 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %13 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %12, i32 0, i32 2
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %17 = call i32 @exclusive_event_installable(%struct.perf_event* %15, %struct.perf_event_context* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON_ONCE(i32 %20)
  %22 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 1
  %33 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %34 = call i32 @smp_store_release(i32* %32, %struct.perf_event_context* %33)
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = icmp ne %struct.task_struct* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @__perf_install_in_context, align 4
  %40 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %41 = call i32 @cpu_function_call(i32 %38, i32 %39, %struct.perf_event* %40)
  br label %91

42:                                               ; preds = %30
  %43 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** @TASK_TOMBSTONE, align 8
  %45 = icmp eq %struct.task_struct* %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %91

50:                                               ; preds = %42
  %51 = call i32 (...) @smp_mb()
  br label %52

52:                                               ; preds = %80, %50
  %53 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %54 = load i32, i32* @__perf_install_in_context, align 4
  %55 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %56 = call i32 @task_function_call(%struct.task_struct* %53, i32 %54, %struct.perf_event* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %91

59:                                               ; preds = %52
  %60 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %61 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %60, i32 0, i32 0
  %62 = call i32 @raw_spin_lock_irq(i32* %61)
  %63 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %64 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %63, i32 0, i32 1
  %65 = load %struct.task_struct*, %struct.task_struct** %64, align 8
  store %struct.task_struct* %65, %struct.task_struct** %7, align 8
  %66 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %67 = load %struct.task_struct*, %struct.task_struct** @TASK_TOMBSTONE, align 8
  %68 = icmp eq %struct.task_struct* %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i64 @WARN_ON_ONCE(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %74 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %73, i32 0, i32 0
  %75 = call i32 @raw_spin_unlock_irq(i32* %74)
  br label %91

76:                                               ; preds = %59
  %77 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %78 = call i64 @task_curr(%struct.task_struct* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %82 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %81, i32 0, i32 0
  %83 = call i32 @raw_spin_unlock_irq(i32* %82)
  br label %52

84:                                               ; preds = %76
  %85 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %86 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %87 = call i32 @add_event_to_ctx(%struct.perf_event* %85, %struct.perf_event_context* %86)
  %88 = load %struct.perf_event_context*, %struct.perf_event_context** %4, align 8
  %89 = getelementptr inbounds %struct.perf_event_context, %struct.perf_event_context* %88, i32 0, i32 0
  %90 = call i32 @raw_spin_unlock_irq(i32* %89)
  br label %91

91:                                               ; preds = %84, %72, %58, %49, %37
  ret void
}

declare dso_local %struct.task_struct* @READ_ONCE(%struct.task_struct*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @exclusive_event_installable(%struct.perf_event*, %struct.perf_event_context*) #1

declare dso_local i32 @smp_store_release(i32*, %struct.perf_event_context*) #1

declare dso_local i32 @cpu_function_call(i32, i32, %struct.perf_event*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @task_function_call(%struct.task_struct*, i32, %struct.perf_event*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i64 @task_curr(%struct.task_struct*) #1

declare dso_local i32 @add_event_to_ctx(%struct.perf_event*, %struct.perf_event_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
