; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_synchronize_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree.c_synchronize_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rcu_bh_lock_map = common dso_local global i32 0, align 4
@rcu_lock_map = common dso_local global i32 0, align 4
@rcu_sched_lock_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Illegal synchronize_rcu() in RCU read-side critical section\00", align 1
@call_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synchronize_rcu() #0 {
  %1 = call i64 @lock_is_held(i32* @rcu_bh_lock_map)
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = call i64 @lock_is_held(i32* @rcu_lock_map)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = call i64 @lock_is_held(i32* @rcu_sched_lock_map)
  %8 = icmp ne i64 %7, 0
  br label %9

9:                                                ; preds = %6, %3, %0
  %10 = phi i1 [ true, %3 ], [ true, %0 ], [ %8, %6 ]
  %11 = zext i1 %10 to i32
  %12 = call i32 @RCU_LOCKDEP_WARN(i32 %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 (...) @rcu_blocking_is_gp()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %24

16:                                               ; preds = %9
  %17 = call i64 (...) @rcu_gp_is_expedited()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 (...) @synchronize_rcu_expedited()
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @call_rcu, align 4
  %23 = call i32 @wait_rcu_gp(i32 %22)
  br label %24

24:                                               ; preds = %15, %21, %19
  ret void
}

declare dso_local i32 @RCU_LOCKDEP_WARN(i32, i8*) #1

declare dso_local i64 @lock_is_held(i32*) #1

declare dso_local i64 @rcu_blocking_is_gp(...) #1

declare dso_local i64 @rcu_gp_is_expedited(...) #1

declare dso_local i32 @synchronize_rcu_expedited(...) #1

declare dso_local i32 @wait_rcu_gp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
