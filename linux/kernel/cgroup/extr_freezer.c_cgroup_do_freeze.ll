; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_do_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_do_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.css_task_iter = type { i32 }
%struct.task_struct = type { i32 }

@cgroup_mutex = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4
@CGRP_FREEZE = common dso_local global i32 0, align 4
@unfreeze = common dso_local global i32 0, align 4
@PF_KTHREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup*, i32)* @cgroup_do_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_do_freeze(%struct.cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.css_task_iter, align 4
  %6 = alloca %struct.task_struct*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  %8 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i32, i32* @CGRP_FREEZE, align 4
  %13 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %14 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %13, i32 0, i32 3
  %15 = call i32 @set_bit(i32 %12, i32* %14)
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @CGRP_FREEZE, align 4
  %18 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %19 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %18, i32 0, i32 3
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %16, %11
  %22 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %28 = call i32 @TRACE_CGROUP_PATH(i32 %26, %struct.cgroup* %27)
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @unfreeze, align 4
  %31 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %32 = call i32 @TRACE_CGROUP_PATH(i32 %30, %struct.cgroup* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %35 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %34, i32 0, i32 2
  %36 = call i32 @css_task_iter_start(i32* %35, i32 0, %struct.css_task_iter* %5)
  br label %37

37:                                               ; preds = %48, %47, %33
  %38 = call %struct.task_struct* @css_task_iter_next(%struct.css_task_iter* %5)
  store %struct.task_struct* %38, %struct.task_struct** %6, align 8
  %39 = icmp ne %struct.task_struct* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PF_KTHREAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %37

48:                                               ; preds = %40
  %49 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @cgroup_freeze_task(%struct.task_struct* %49, i32 %50)
  br label %37

52:                                               ; preds = %37
  %53 = call i32 @css_task_iter_end(%struct.css_task_iter* %5)
  %54 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %55 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %56 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %59 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %52
  %64 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %65 = call i32 @cgroup_update_frozen(%struct.cgroup* %64)
  br label %66

66:                                               ; preds = %63, %52
  %67 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @TRACE_CGROUP_PATH(i32, %struct.cgroup*) #1

declare dso_local i32 @css_task_iter_start(i32*, i32, %struct.css_task_iter*) #1

declare dso_local %struct.task_struct* @css_task_iter_next(%struct.css_task_iter*) #1

declare dso_local i32 @cgroup_freeze_task(%struct.task_struct*, i32) #1

declare dso_local i32 @css_task_iter_end(%struct.css_task_iter*) #1

declare dso_local i32 @cgroup_update_frozen(%struct.cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
