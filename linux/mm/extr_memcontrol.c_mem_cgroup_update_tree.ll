; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_update_tree.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_update_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.page = type { i32 }
%struct.mem_cgroup_per_node = type { i64 }
%struct.mem_cgroup_tree_per_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, %struct.page*)* @mem_cgroup_update_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_cgroup_update_tree(%struct.mem_cgroup* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mem_cgroup_per_node*, align 8
  %7 = alloca %struct.mem_cgroup_tree_per_node*, align 8
  %8 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call %struct.mem_cgroup_tree_per_node* @soft_limit_tree_from_page(%struct.page* %9)
  store %struct.mem_cgroup_tree_per_node* %10, %struct.mem_cgroup_tree_per_node** %7, align 8
  %11 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %7, align 8
  %12 = icmp ne %struct.mem_cgroup_tree_per_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %57

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %54, %14
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %17 = icmp ne %struct.mem_cgroup* %16, null
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call %struct.mem_cgroup_per_node* @mem_cgroup_page_nodeinfo(%struct.mem_cgroup* %19, %struct.page* %20)
  store %struct.mem_cgroup_per_node* %21, %struct.mem_cgroup_per_node** %6, align 8
  %22 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %23 = call i64 @soft_limit_excess(%struct.mem_cgroup* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %18
  %27 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %6, align 8
  %28 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %26, %18
  %32 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %7, align 8
  %33 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %6, align 8
  %37 = getelementptr inbounds %struct.mem_cgroup_per_node, %struct.mem_cgroup_per_node* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %6, align 8
  %42 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %7, align 8
  %43 = call i32 @__mem_cgroup_remove_exceeded(%struct.mem_cgroup_per_node* %41, %struct.mem_cgroup_tree_per_node* %42)
  br label %44

44:                                               ; preds = %40, %31
  %45 = load %struct.mem_cgroup_per_node*, %struct.mem_cgroup_per_node** %6, align 8
  %46 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @__mem_cgroup_insert_exceeded(%struct.mem_cgroup_per_node* %45, %struct.mem_cgroup_tree_per_node* %46, i64 %47)
  %49 = load %struct.mem_cgroup_tree_per_node*, %struct.mem_cgroup_tree_per_node** %7, align 8
  %50 = getelementptr inbounds %struct.mem_cgroup_tree_per_node, %struct.mem_cgroup_tree_per_node* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %53

53:                                               ; preds = %44, %26
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %56 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %55)
  store %struct.mem_cgroup* %56, %struct.mem_cgroup** %3, align 8
  br label %15

57:                                               ; preds = %13, %15
  ret void
}

declare dso_local %struct.mem_cgroup_tree_per_node* @soft_limit_tree_from_page(%struct.page*) #1

declare dso_local %struct.mem_cgroup_per_node* @mem_cgroup_page_nodeinfo(%struct.mem_cgroup*, %struct.page*) #1

declare dso_local i64 @soft_limit_excess(%struct.mem_cgroup*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__mem_cgroup_remove_exceeded(%struct.mem_cgroup_per_node*, %struct.mem_cgroup_tree_per_node*) #1

declare dso_local i32 @__mem_cgroup_insert_exceeded(%struct.mem_cgroup_per_node*, %struct.mem_cgroup_tree_per_node*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
