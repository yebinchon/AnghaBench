; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_eqs_enter.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_eqs_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_data = type { i64, i32, i32 }

@rcu_data = common dso_local global i32 0, align 4
@DYNTICK_IRQ_NONIDLE = common dso_local global i64 0, align 8
@CONFIG_RCU_EQS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Start\00", align 1
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rcu_eqs_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_eqs_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcu_data*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.rcu_data* @this_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %4, %struct.rcu_data** %3, align 8
  %5 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %6 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DYNTICK_IRQ_NONIDLE, align 8
  %9 = icmp ne i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON_ONCE(i32 %10)
  %12 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %13 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @WRITE_ONCE(i32 %15, i32 0)
  %17 = load i32, i32* @CONFIG_RCU_EQS_DEBUG, align 4
  %18 = call i64 @IS_ENABLED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %22 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %20, %1
  %26 = phi i1 [ false, %1 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %30 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %35 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 8
  br label %75

38:                                               ; preds = %25
  %39 = call i32 (...) @lockdep_assert_irqs_disabled()
  %40 = call i32 @TPS(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %42 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %45 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @trace_rcu_dyntick(i32 %40, i32 %43, i32 0, i32 %46)
  %48 = load i32, i32* @CONFIG_RCU_EQS_DEBUG, align 4
  %49 = call i64 @IS_ENABLED(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %38
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @current, align 4
  %56 = call i32 @is_idle_task(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %54, %51, %38
  %60 = phi i1 [ false, %51 ], [ false, %38 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @WARN_ON_ONCE(i32 %61)
  %63 = call %struct.rcu_data* @this_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %63, %struct.rcu_data** %3, align 8
  %64 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %65 = call i32 @do_nocb_deferred_wakeup(%struct.rcu_data* %64)
  %66 = call i32 (...) @rcu_prepare_for_idle()
  %67 = load i32, i32* @current, align 4
  %68 = call i32 @rcu_preempt_deferred_qs(i32 %67)
  %69 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %70 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @WRITE_ONCE(i32 %71, i32 0)
  %73 = call i32 (...) @rcu_dynticks_eqs_enter()
  %74 = call i32 (...) @rcu_dynticks_task_enter()
  br label %75

75:                                               ; preds = %59, %33
  ret void
}

declare dso_local %struct.rcu_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local i32 @trace_rcu_dyntick(i32, i32, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @is_idle_task(i32) #1

declare dso_local i32 @do_nocb_deferred_wakeup(%struct.rcu_data*) #1

declare dso_local i32 @rcu_prepare_for_idle(...) #1

declare dso_local i32 @rcu_preempt_deferred_qs(i32) #1

declare dso_local i32 @rcu_dynticks_eqs_enter(...) #1

declare dso_local i32 @rcu_dynticks_task_enter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
