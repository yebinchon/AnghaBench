; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_css_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_pids.c_pids_css_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.pids_cgroup = type { %struct.cgroup_subsys_state, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIDS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys_state*)* @pids_css_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @pids_css_alloc(%struct.cgroup_subsys_state* %0) #0 {
  %2 = alloca %struct.cgroup_subsys_state*, align 8
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.pids_cgroup*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pids_cgroup* @kzalloc(i32 16, i32 %5)
  store %struct.pids_cgroup* %6, %struct.pids_cgroup** %4, align 8
  %7 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %8 = icmp ne %struct.pids_cgroup* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %11)
  store %struct.cgroup_subsys_state* %12, %struct.cgroup_subsys_state** %2, align 8
  br label %25

13:                                               ; preds = %1
  %14 = load i32, i32* @PIDS_MAX, align 4
  %15 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %16 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %18 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %17, i32 0, i32 2
  %19 = call i32 @atomic64_set(i32* %18, i32 0)
  %20 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %21 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %20, i32 0, i32 1
  %22 = call i32 @atomic64_set(i32* %21, i32 0)
  %23 = load %struct.pids_cgroup*, %struct.pids_cgroup** %4, align 8
  %24 = getelementptr inbounds %struct.pids_cgroup, %struct.pids_cgroup* %23, i32 0, i32 0
  store %struct.cgroup_subsys_state* %24, %struct.cgroup_subsys_state** %2, align 8
  br label %25

25:                                               ; preds = %13, %9
  %26 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %2, align 8
  ret %struct.cgroup_subsys_state* %26
}

declare dso_local %struct.pids_cgroup* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
