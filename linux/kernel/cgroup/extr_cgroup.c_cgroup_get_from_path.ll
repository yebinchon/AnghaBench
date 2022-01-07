; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_get_from_path.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_get_from_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cgroup = type { i32 }
%struct.kernfs_node = type { %struct.cgroup* }

@cgroup_mutex = common dso_local global i32 0, align 4
@cgrp_dfl_root = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@KERNFS_DIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgroup* @cgroup_get_from_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.cgroup*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgrp_dfl_root, i32 0, i32 0, i32 0), align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call %struct.kernfs_node* @kernfs_walk_and_get(i32 %6, i8* %7)
  store %struct.kernfs_node* %8, %struct.kernfs_node** %3, align 8
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %10 = icmp ne %struct.kernfs_node* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %13 = call i64 @kernfs_type(%struct.kernfs_node* %12)
  %14 = load i64, i64* @KERNFS_DIR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %18 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %17, i32 0, i32 0
  %19 = load %struct.cgroup*, %struct.cgroup** %18, align 8
  store %struct.cgroup* %19, %struct.cgroup** %4, align 8
  %20 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %21 = call i32 @cgroup_get_live(%struct.cgroup* %20)
  br label %26

22:                                               ; preds = %11
  %23 = load i32, i32* @ENOTDIR, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.cgroup* @ERR_PTR(i32 %24)
  store %struct.cgroup* %25, %struct.cgroup** %4, align 8
  br label %26

26:                                               ; preds = %22, %16
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %28 = call i32 @kernfs_put(%struct.kernfs_node* %27)
  br label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.cgroup* @ERR_PTR(i32 %31)
  store %struct.cgroup* %32, %struct.cgroup** %4, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %35 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  ret %struct.cgroup* %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_walk_and_get(i32, i8*) #1

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

declare dso_local i32 @cgroup_get_live(%struct.cgroup*) #1

declare dso_local %struct.cgroup* @ERR_PTR(i32) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
