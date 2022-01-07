; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_page_nodeinfo.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_page_nodeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup_per_node = type { i32 }
%struct.mem_cgroup = type { %struct.mem_cgroup_per_node** }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_cgroup_per_node* (%struct.mem_cgroup*, %struct.page*)* @mem_cgroup_page_nodeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_cgroup_per_node* @mem_cgroup_page_nodeinfo(%struct.mem_cgroup* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = call i32 @page_to_nid(%struct.page* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %9 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %8, i32 0, i32 0
  %10 = load %struct.mem_cgroup_per_node**, %struct.mem_cgroup_per_node*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %10, i64 %12
  %14 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %13, align 8
  ret %struct.mem_cgroup_per_node* %14
}

declare dso_local i32 @page_to_nid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
