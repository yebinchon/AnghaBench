; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_booster_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcutorture_booster_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@boost_tasks = common dso_local global %struct.task_struct** null, align 8
@boost_mutex = common dso_local global i32 0, align 4
@rcu_torture_boost = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rcutorture_booster_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcutorture_booster_cleanup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.task_struct**, %struct.task_struct*** @boost_tasks, align 8
  %6 = load i32, i32* %3, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %5, i64 %7
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %10 = icmp eq %struct.task_struct* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = call i32 @mutex_lock(i32* @boost_mutex)
  %14 = load %struct.task_struct**, %struct.task_struct*** @boost_tasks, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %14, i64 %16
  %18 = load %struct.task_struct*, %struct.task_struct** %17, align 8
  store %struct.task_struct* %18, %struct.task_struct** %4, align 8
  %19 = load %struct.task_struct**, %struct.task_struct*** @boost_tasks, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %19, i64 %21
  store %struct.task_struct* null, %struct.task_struct** %22, align 8
  %23 = call i32 (...) @rcu_torture_enable_rt_throttle()
  %24 = call i32 @mutex_unlock(i32* @boost_mutex)
  %25 = load i32, i32* @rcu_torture_boost, align 4
  %26 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %27 = call i32 @torture_stop_kthread(i32 %25, %struct.task_struct* %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %12, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_torture_enable_rt_throttle(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @torture_stop_kthread(i32, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
