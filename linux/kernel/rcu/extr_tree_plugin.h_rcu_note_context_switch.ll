; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_plugin.h_rcu_note_context_switch.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_plugin.h_rcu_note_context_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Start context switch\00", align 1
@rcu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"End context switch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rcu_note_context_switch(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @TPS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @trace_rcu_utilization(i32 %3)
  %5 = call i32 (...) @rcu_qs()
  %6 = call i32 @this_cpu_ptr(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 1))
  %7 = call i32 @smp_load_acquire(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 1), align 4
  %12 = call i32 @this_cpu_write(i32 %11, i32 0)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_data, i32 0, i32 0), align 4
  %14 = call i32 @raw_cpu_read(i32 %13)
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 (...) @rcu_momentary_dyntick_idle()
  br label %19

19:                                               ; preds = %17, %10
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @current, align 4
  %24 = call i32 @rcu_tasks_qs(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %9
  %27 = call i32 @TPS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %28 = call i32 @trace_rcu_utilization(i32 %27)
  ret void
}

declare dso_local i32 @trace_rcu_utilization(i32) #1

declare dso_local i32 @TPS(i8*) #1

declare dso_local i32 @rcu_qs(...) #1

declare dso_local i32 @smp_load_acquire(i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @raw_cpu_read(i32) #1

declare dso_local i32 @rcu_momentary_dyntick_idle(...) #1

declare dso_local i32 @rcu_tasks_qs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
