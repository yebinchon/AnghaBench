; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_path_from_kernfs_id.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_path_from_kernfs_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.kernfs_node_id = type { i32 }
%struct.kernfs_node = type { i32 }

@cgrp_dfl_root = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cgroup_path_from_kernfs_id(%union.kernfs_node_id* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %union.kernfs_node_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  store %union.kernfs_node_id* %0, %union.kernfs_node_id** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %9 = load %union.kernfs_node_id*, %union.kernfs_node_id** %4, align 8
  %10 = call %struct.kernfs_node* @kernfs_get_node_by_id(i32 %8, %union.kernfs_node_id* %9)
  store %struct.kernfs_node* %10, %struct.kernfs_node** %7, align 8
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %12 = icmp ne %struct.kernfs_node* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %21

14:                                               ; preds = %3
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @kernfs_path(%struct.kernfs_node* %15, i8* %16, i64 %17)
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %20 = call i32 @kernfs_put(%struct.kernfs_node* %19)
  br label %21

21:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.kernfs_node* @kernfs_get_node_by_id(i32, %union.kernfs_node_id*) #1

declare dso_local i32 @kernfs_path(%struct.kernfs_node*, i8*, i64) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
