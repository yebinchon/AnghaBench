; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_remove_exceeded.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c___mem_cgroup_remove_exceeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup_per_node = type { i32, i32 }
%struct.mem_cgroup_tree_per_node = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup_per_node*, %struct.mem_cgroup_tree_per_node*)* @__mem_cgroup_remove_exceeded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mem_cgroup_remove_exceeded(%struct.mem_cgroup_per_node* %0, %struct.mem_cgroup_tree_per_node* %1) #0 {
  %3 = alloca %struct.mem_cgroup_per_node*, align 8
  %4 = alloca %struct.mem_cgroup_tree_per_node*, align 8
  store %struct.mem_cgroup_per_node* %0, %struct.mem_cgroup_per_node** %3, align 8
  store %struct.mem_cgroup_tree_per_node* %1, %struct.mem_cgroup_tree_per_node** %4, align 8
  %5 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %3, align 8
  %6 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %31

10:                                               ; preds = %2
  %11 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %3, align 8
  %12 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %11, i32 0, i32 1
  %13 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %4, align 8
  %14 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %3, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %18, i32 0, i32 1
  %20 = call i32* @rb_prev(i32* %19)
  %21 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %4, align 8
  %22 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  br label %23

23:                                               ; preds = %17, %10
  %24 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %3, align 8
  %25 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %24, i32 0, i32 1
  %26 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %4, align 8
  %27 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %26, i32 0, i32 0
  %28 = call i32 @rb_erase(i32* %25, i32* %27)
  %29 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %3, align 8
  %30 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %23, %9
  ret void
}

declare dso_local i32* @rb_prev(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
