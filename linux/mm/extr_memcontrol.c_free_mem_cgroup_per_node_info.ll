; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_free_mem_cgroup_per_node_info.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_free_mem_cgroup_per_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.mem_cgroup_per_node** }
%struct.mem_cgroup_per_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32)* @free_mem_cgroup_per_node_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mem_cgroup_per_node_info(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_cgroup_per_node*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %7 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %6, i32 0, i32 0
  %8 = load %struct.mem_cgroup_per_node**, %struct.mem_cgroup_per_node*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %8, i64 %10
  %12 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %11, align 8
  store %struct.mem_cgroup_per_node* %12, %struct.mem_cgroup_per_node** %5, align 8
  %13 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %5, align 8
  %14 = icmp ne %struct.mem_cgroup_per_node* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %5, align 8
  %18 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @free_percpu(i32 %19)
  %21 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %5, align 8
  %22 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @free_percpu(i32 %23)
  %25 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %5, align 8
  %26 = call i32 @kfree(%struct.mem_cgroup_per_node* %25)
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @kfree(%struct.mem_cgroup_per_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
