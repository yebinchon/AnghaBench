; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_css_from_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_css_from_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.cgroup_subsys_state }
%struct.cgroup_subsys_state = type { i32 }
%struct.page = type { %struct.mem_cgroup* }

@memory_cgrp_subsys = common dso_local global i32 0, align 4
@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup_subsys_state* @mem_cgroup_css_from_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = getelementptr inbounds %struct.page, %struct.page* %4, i32 0, i32 0
  %6 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  store %struct.mem_cgroup* %6, %struct.mem_cgroup** %3, align 8
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %8 = icmp ne %struct.mem_cgroup* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @memory_cgrp_subsys, align 4
  %11 = call i32 @cgroup_subsys_on_dfl(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %14, %struct.mem_cgroup** %3, align 8
  br label %15

15:                                               ; preds = %13, %9
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %17 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %16, i32 0, i32 0
  ret %struct.cgroup_subsys_state* %17
}

declare dso_local i32 @cgroup_subsys_on_dfl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
