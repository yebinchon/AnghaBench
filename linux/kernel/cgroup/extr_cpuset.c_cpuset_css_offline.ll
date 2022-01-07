; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_css_offline.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_css_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cpuset = type { i32, i32, i32 }

@cpuset_rwsem = common dso_local global i32 0, align 4
@cpuset_cgrp_subsys = common dso_local global i32 0, align 4
@CS_SCHED_LOAD_BALANCE = common dso_local global i32 0, align 4
@CS_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cgroup_subsys_state*)* @cpuset_css_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_css_offline(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.cpuset*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %2, align 8
  %5 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  %6 = call %struct.cpuset* @css_cs(%struct.cgroup_subsys_state* %5)
  store %struct.cpuset* %6, %struct.cpuset** %3, align 8
  %7 = call i32 (...) @get_online_cpus()
  %8 = call i32 @percpu_down_write(i32* @cpuset_rwsem)
  %9 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %10 = call i64 @is_partition_root(%struct.cpuset* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %14 = call i32 @update_prstate(%struct.cpuset* %13, i32 0)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @cpuset_cgrp_subsys, align 4
  %17 = call i32 @cgroup_subsys_on_dfl(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %21 = call i64 @is_sched_load_balance(%struct.cpuset* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @CS_SCHED_LOAD_BALANCE, align 4
  %25 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %26 = call i32 @update_flag(i32 %24, %struct.cpuset* %25, i32 0)
  br label %27

27:                                               ; preds = %23, %19, %15
  %28 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %29 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %34 = call %struct.cpuset* @parent_cs(%struct.cpuset* %33)
  store %struct.cpuset* %34, %struct.cpuset** %4, align 8
  %35 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %36 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %38 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %27
  %42 = call i32 (...) @cpuset_dec()
  %43 = load i32, i32* @CS_ONLINE, align 4
  %44 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %45 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %44, i32 0, i32 1
  %46 = call i32 @clear_bit(i32 %43, i32* %45)
  %47 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  %48 = call i32 (...) @put_online_cpus()
  ret void
}

declare dso_local %struct.cpuset* @css_cs(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i64 @is_partition_root(%struct.cpuset*) #1

declare dso_local i32 @update_prstate(%struct.cpuset*, i32) #1

declare dso_local i32 @cgroup_subsys_on_dfl(i32) #1

declare dso_local i64 @is_sched_load_balance(%struct.cpuset*) #1

declare dso_local i32 @update_flag(i32, %struct.cpuset*, i32) #1

declare dso_local %struct.cpuset* @parent_cs(%struct.cpuset*) #1

declare dso_local i32 @cpuset_dec(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
