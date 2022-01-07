; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_can_fork.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_can_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cgroup_subsys_state = type { i32 }
%struct.pids_cgroup = type { i32, i32 }

@current = common dso_local global i32 0, align 4
@pids_cgrp_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"cgroup: fork rejected by pids controller in \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @pids_can_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pids_can_fork(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.pids_cgroup*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %6 = load i32, i32* @current, align 4
  %7 = load i32, i32* @pids_cgrp_id, align 4
  %8 = call %struct.cgroup_subsys_state* @task_css_check(i32 %6, i32 %7, i32 1)
  store %struct.cgroup_subsys_state* %8, %struct.cgroup_subsys_state** %3, align 8
  %9 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %10 = call %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state* %9)
  store %struct.pids_cgroup* %10, %struct.pids_cgroup** %4, align 8
  %11 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %12 = call i32 @pids_try_charge(%struct.pids_cgroup* %11, i32 1)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %17 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %16, i32 0, i32 1
  %18 = call i32 @atomic64_inc_return(i32* %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  %23 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_cont_cgroup_path(i32 %24)
  %26 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %29 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %28, i32 0, i32 0
  %30 = call i32 @cgroup_file_notify(i32* %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.cgroup_subsys_state* @task_css_check(i32, i32, i32) #1

declare dso_local %struct.pids_cgroup* @css_pids(%struct.cgroup_subsys_state*) #1

declare dso_local i32 @pids_try_charge(%struct.pids_cgroup*, i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_cont_cgroup_path(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @cgroup_file_notify(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
