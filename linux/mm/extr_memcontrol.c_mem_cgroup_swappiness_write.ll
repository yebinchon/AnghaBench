; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_swappiness_write.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_swappiness_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i64 }
%struct.cftype = type { i32 }
%struct.mem_cgroup = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@vm_swappiness = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys_state*, %struct.cftype*, i32)* @mem_cgroup_swappiness_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_swappiness_write(%struct.cgroup_subsys_state* %0, %struct.cftype* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup_subsys_state*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_cgroup*, align 8
  store %struct.cgroup_subsys_state* %0, %struct.cgroup_subsys_state** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %10 = call %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state* %9)
  store %struct.mem_cgroup* %10, %struct.mem_cgroup** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 100
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %28

16:                                               ; preds = %3
  %17 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %5, align 8
  %18 = getelementptr inbounds %struct.cgroup_subsys_state, %struct.cgroup_subsys_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %24 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* @vm_swappiness, align 4
  br label %27

27:                                               ; preds = %25, %21
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(%struct.cgroup_subsys_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
