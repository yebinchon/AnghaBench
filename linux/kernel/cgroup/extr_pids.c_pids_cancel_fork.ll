; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_cancel_fork.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_cancel_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.pids_cgroup = type { i32 }

@current = common dso_local global i32 0, align 4
@pids_cgrp_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @pids_cancel_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pids_cancel_fork(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.pids_cgroup*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load i32, i32* @current, align 4
  %6 = load i32, i32* @pids_cgrp_id, align 4
  %7 = call %struct.cgroup_subsys_state* @task_css_check(i32 %5, i32 %6, i32 1)
  store %struct.cgroup_subsys_state* %7, %struct.cgroup_subsys_state** %3, align 8
  %8 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %9 = call %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state* %8)
  store %struct.pids_cgroup* %9, %struct.pids_cgroup** %4, align 8
  %10 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %11 = call i32 @pids_uncharge(%struct.pids_cgroup* %10, i32 1)
  ret void
}

declare dso_local %struct.cgroup_subsys_state* @task_css_check(i32, i32, i32) #1

declare dso_local %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @pids_uncharge(%struct.pids_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
