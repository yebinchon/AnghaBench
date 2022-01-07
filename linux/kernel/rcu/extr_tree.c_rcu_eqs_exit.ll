; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_eqs_exit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_rcu_eqs_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_data = type { i64, i32, i32 }

@rcu_data = common dso_local global i32 0, align 4
@CONFIG_RCU_EQS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"End\00", align 1
@current = common dso_local global i32 0, align 4
@DYNTICK_IRQ_NONIDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rcu_eqs_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_eqs_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcu_data*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = call i32 (...) @lockdep_assert_irqs_disabled()
  %6 = call %struct.rcu_data* @this_cpu_ptr(i32* @rcu_data)
  store %struct.rcu_data* %6, %struct.rcu_data** %3, align 8
  %7 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %8 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @CONFIG_RCU_EQS_DEBUG, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = icmp slt i64 %14, 0
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i1 [ false, %1 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %24 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %68

27:                                               ; preds = %16
  %28 = call i32 (...) @rcu_dynticks_task_exit()
  %29 = call i32 (...) @rcu_dynticks_eqs_exit()
  %30 = call i32 (...) @rcu_cleanup_after_idle()
  %31 = call i32 @TPS(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %33 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %36 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @trace_rcu_dyntick(i32 %31, i64 %34, i32 1, i32 %37)
  %39 = load i32, i32* @CONFIG_RCU_EQS_DEBUG, align 4
  %40 = call i64 @IS_ENABLED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @current, align 4
  %47 = call i32 @is_idle_task(i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %45, %42, %27
  %51 = phi i1 [ false, %42 ], [ false, %27 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @WARN_ON_ONCE(i32 %52)
  %54 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %55 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @WRITE_ONCE(i64 %56, i32 1)
  %58 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %59 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @WARN_ON_ONCE(i32 %60)
  %62 = load %struct.rcu_data*, %struct.rcu_data** %3, align 8
  %63 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* @DYNTICK_IRQ_NONIDLE, align 4
  %67 = call i32 @WRITE_ONCE(i64 %65, i32 %66)
  br label %68

68:                                               ; preds = %50, %22
  ret void
}

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local %struct.rcu_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @rcu_dynticks_task_exit(...) #1

declare dso_local i32 @rcu_dynticks_eqs_exit(...) #1

declare dso_local i32 @rcu_cleanup_after_idle(...) #1

declare dso_local i32 @trace_rcu_dyntick(i32, i64, i32, i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @is_idle_task(i32) #1

declare dso_local i32 @WRITE_ONCE(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
