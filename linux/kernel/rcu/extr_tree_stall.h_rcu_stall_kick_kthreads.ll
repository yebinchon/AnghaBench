; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_rcu_stall_kick_kthreads.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_tree_stall.h_rcu_stall_kick_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@rcu_kick_kthreads = common dso_local global i32 0, align 4
@rcu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Kicking %s grace-period kthread\0A\00", align 1
@DUMP_ALL = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rcu_stall_kick_kthreads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcu_stall_kick_kthreads() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @rcu_kick_kthreads, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %34

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 8
  %7 = call i64 @READ_ONCE(i32 %6)
  store i64 %7, i64* %1, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = load i64, i64* %1, align 8
  %10 = call i64 @time_after(i32 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %5
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = call i64 (...) @rcu_gp_in_progress()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 3), align 4
  %20 = call i64 @READ_ONCE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18, %15
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 2), align 8
  %24 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @DUMP_ALL, align 4
  %26 = call i32 @rcu_ftrace_dump(i32 %25)
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 1), align 8
  %28 = call i32 @wake_up_process(i64 %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rcu_state, i32 0, i32 0), align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @HZ, align 8
  %32 = add i64 %30, %31
  %33 = call i32 @WRITE_ONCE(i32 %29, i64 %32)
  br label %34

34:                                               ; preds = %4, %22, %18, %12, %5
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i64 @rcu_gp_in_progress(...) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @rcu_ftrace_dump(i32) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
