; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_freezer_migrate_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_freezer_migrate_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i64 }
%struct.cgroup = type { i32 }

@css_set_lock = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@CGRP_FREEZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_freezer_migrate_task(%struct.task_struct* %0, %struct.cgroup* %1, %struct.cgroup* %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cgroup*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  store %struct.cgroup* %2, %struct.cgroup** %6, align 8
  %7 = call i32 @lockdep_assert_held(i32* @css_set_lock)
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PF_KTHREAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %22 = call i32 @cgroup_inc_frozen_cnt(%struct.cgroup* %21)
  %23 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %24 = call i32 @cgroup_dec_frozen_cnt(%struct.cgroup* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %27 = call i32 @cgroup_update_frozen(%struct.cgroup* %26)
  %28 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %29 = call i32 @cgroup_update_frozen(%struct.cgroup* %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = load i32, i32* @CGRP_FREEZE, align 4
  %32 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %33 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %32, i32 0, i32 0
  %34 = call i32 @test_bit(i32 %31, i32* %33)
  %35 = call i32 @cgroup_freeze_task(%struct.task_struct* %30, i32 %34)
  br label %36

36:                                               ; preds = %25, %14
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cgroup_inc_frozen_cnt(%struct.cgroup*) #1

declare dso_local i32 @cgroup_dec_frozen_cnt(%struct.cgroup*) #1

declare dso_local i32 @cgroup_update_frozen(%struct.cgroup*) #1

declare dso_local i32 @cgroup_freeze_task(%struct.task_struct*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
