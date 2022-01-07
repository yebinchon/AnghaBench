; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c___synchronize_srcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c___synchronize_srcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i32 }
%struct.rcu_synchronize = type { i32, i32 }

@rcu_bh_lock_map = common dso_local global i32 0, align 4
@rcu_lock_map = common dso_local global i32 0, align 4
@rcu_sched_lock_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Illegal synchronize_srcu() in same-type SRCU (or in RCU) read-side critical section\00", align 1
@rcu_scheduler_active = common dso_local global i64 0, align 8
@RCU_SCHEDULER_INACTIVE = common dso_local global i64 0, align 8
@wakeme_after_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcu_struct*, i32)* @__synchronize_srcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__synchronize_srcu(%struct.srcu_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.srcu_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcu_synchronize, align 4
  store %struct.srcu_struct* %0, %struct.srcu_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %7 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %6, i32 0, i32 0
  %8 = call i64 @lock_is_held(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = call i64 @lock_is_held(i32* @rcu_bh_lock_map)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = call i64 @lock_is_held(i32* @rcu_lock_map)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i64 @lock_is_held(i32* @rcu_sched_lock_map)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %16, %13, %10, %2
  %20 = phi i1 [ true, %13 ], [ true, %10 ], [ true, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @RCU_LOCKDEP_WARN(i32 %21, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* @rcu_scheduler_active, align 8
  %24 = load i64, i64* @RCU_SCHEDULER_INACTIVE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %45

27:                                               ; preds = %19
  %28 = call i32 (...) @might_sleep()
  %29 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %30 = call i32 @check_init_srcu_struct(%struct.srcu_struct* %29)
  %31 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %5, i32 0, i32 1
  %32 = call i32 @init_completion(i32* %31)
  %33 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %5, i32 0, i32 0
  %34 = call i32 @init_rcu_head_on_stack(i32* %33)
  %35 = load %struct.srcu_struct*, %struct.srcu_struct** %3, align 8
  %36 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %5, i32 0, i32 0
  %37 = load i32, i32* @wakeme_after_rcu, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @__call_srcu(%struct.srcu_struct* %35, i32* %36, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %5, i32 0, i32 1
  %41 = call i32 @wait_for_completion(i32* %40)
  %42 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %5, i32 0, i32 0
  %43 = call i32 @destroy_rcu_head_on_stack(i32* %42)
  %44 = call i32 (...) @smp_mb()
  br label %45

45:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @RCU_LOCKDEP_WARN(i32, i8*) #1

declare dso_local i64 @lock_is_held(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @check_init_srcu_struct(%struct.srcu_struct*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @init_rcu_head_on_stack(i32*) #1

declare dso_local i32 @__call_srcu(%struct.srcu_struct*, i32*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @destroy_rcu_head_on_stack(i32*) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
