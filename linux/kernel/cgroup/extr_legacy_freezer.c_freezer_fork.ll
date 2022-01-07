; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_fork.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_legacy_freezer.c_freezer_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.freezer = type { i32 }

@freezer_cgrp_id = common dso_local global i32 0, align 4
@freezer_mutex = common dso_local global i32 0, align 4
@CGROUP_FREEZING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @freezer_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freezer_fork(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.freezer*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %4 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %5 = load i32, i32* @freezer_cgrp_id, align 4
  %6 = call i64 @task_css_is_root(%struct.task_struct* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = call i32 @mutex_lock(i32* @freezer_mutex)
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %13 = call %struct.freezer* @task_freezer(%struct.task_struct* %12)
  store %struct.freezer* %13, %struct.freezer** %3, align 8
  %14 = load %struct.freezer*, %struct.freezer** %3, align 8
  %15 = getelementptr inbounds %struct.freezer, %struct.freezer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CGROUP_FREEZING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %22 = call i32 @freeze_task(%struct.task_struct* %21)
  br label %23

23:                                               ; preds = %20, %9
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = call i32 @mutex_unlock(i32* @freezer_mutex)
  br label %26

26:                                               ; preds = %23, %8
  ret void
}

declare dso_local i64 @task_css_is_root(%struct.task_struct*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.freezer* @task_freezer(%struct.task_struct*) #1

declare dso_local i32 @freeze_task(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
