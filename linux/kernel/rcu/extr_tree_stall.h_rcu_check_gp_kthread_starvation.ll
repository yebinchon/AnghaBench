; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_rcu_check_gp_kthread_starvation.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_rcu_check_gp_kthread_starvation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, %struct.task_struct* }
%struct.task_struct = type { i32 }

@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"%s kthread starved for %ld jiffies! g%ld f%#x %s(%d) ->state=%#lx ->cpu=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"RCU grace-period kthread stack dump:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rcu_check_gp_kthread_starvation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_check_gp_kthread_starvation() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.task_struct*, %struct.task_struct** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 5), align 8
  store %struct.task_struct* %3, %struct.task_struct** %1, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 4), align 8
  %6 = call i64 @READ_ONCE(i32 %5)
  %7 = sub i64 %4, %6
  store i64 %7, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i32, i32* @HZ, align 4
  %10 = mul nsw i32 2, %9
  %11 = sext i32 %10 to i64
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %0
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 3), align 4
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @rcu_seq_current(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 2))
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1), align 4
  %18 = call i64 @READ_ONCE(i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 8
  %20 = call i32 @gp_state_getname(i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %23 = icmp ne %struct.task_struct* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ -1, %28 ]
  %31 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %32 = icmp ne %struct.task_struct* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %35 = call i32 @task_cpu(%struct.task_struct* %34)
  br label %37

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %33
  %38 = phi i32 [ %35, %33 ], [ -1, %36 ]
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %15, i64 %16, i64 %18, i32 %20, i32 %21, i32 %30, i32 %38)
  %40 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %41 = icmp ne %struct.task_struct* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %45 = call i32 @sched_show_task(%struct.task_struct* %44)
  %46 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %47 = call i32 @wake_up_process(%struct.task_struct* %46)
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %0
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @rcu_seq_current(i32*) #1

declare dso_local i32 @gp_state_getname(i32) #1

declare dso_local i32 @task_cpu(%struct.task_struct*) #1

declare dso_local i32 @sched_show_task(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
