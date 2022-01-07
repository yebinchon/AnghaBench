; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_leave_frozen.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_freezer.c_cgroup_leave_frozen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cgroup = type { i32 }

@css_set_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@CGRP_FREEZE = common dso_local global i32 0, align 4
@JOBCTL_TRAP_FREEZE = common dso_local global i32 0, align 4
@TIF_SIGPENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_leave_frozen(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cgroup*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %6 = call %struct.cgroup* @task_dfl_cgroup(%struct.TYPE_5__* %5)
  store %struct.cgroup* %6, %struct.cgroup** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @CGRP_FREEZE, align 4
  %11 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %12 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %17 = call i32 @cgroup_dec_frozen_cnt(%struct.cgroup* %16)
  %18 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %19 = call i32 @cgroup_update_frozen(%struct.cgroup* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON_ONCE(i32 %25)
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %55

29:                                               ; preds = %9
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @JOBCTL_TRAP_FREEZE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i32, i32* @JOBCTL_TRAP_FREEZE, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @TIF_SIGPENDING, align 4
  %48 = call i32 @set_thread_flag(i32 %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @spin_unlock(i32* %52)
  br label %54

54:                                               ; preds = %36, %29
  br label %55

55:                                               ; preds = %54, %15
  %56 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cgroup* @task_dfl_cgroup(%struct.TYPE_5__*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cgroup_dec_frozen_cnt(%struct.cgroup*) #1

declare dso_local i32 @cgroup_update_frozen(%struct.cgroup*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
