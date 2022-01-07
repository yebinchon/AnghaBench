; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_bind.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cgroup_subsys_state = type { i32 }

@cpuset_rwsem = common dso_local global i32 0, align 4
@callback_lock = common dso_local global i32 0, align 4
@top_cpuset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@node_possible_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys_state*)* @cpuset_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_bind(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %2, align 8
  %3 = call i32 @percpu_down_write(i32* @cpuset_rwsem)
  %4 = call i32 @spin_lock_irq(i32* @callback_lock)
  %5 = call i64 (...) @is_in_v2_mode()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 3), align 4
  %9 = load i32, i32* @cpu_possible_mask, align 4
  %10 = call i32 @cpumask_copy(i32 %8, i32 %9)
  %11 = load i32, i32* @node_possible_map, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 1), align 4
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 3), align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 2), align 4
  %15 = call i32 @cpumask_copy(i32 %13, i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 0), align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 1), align 4
  br label %17

17:                                               ; preds = %12, %7
  %18 = call i32 @spin_unlock_irq(i32* @callback_lock)
  %19 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  ret void
}

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @is_in_v2_mode(...) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @percpu_up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
