; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_write_permission.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_procs_write_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.cgroup_namespace* }
%struct.cgroup_namespace = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.cgroup* }
%struct.cgroup = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }

@current = common dso_local global %struct.TYPE_9__* null, align 8
@cgroup_mutex = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@cgrp_dfl_root = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@CGRP_ROOT_NS_DELEGATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cgroup*, %struct.super_block*)* @cgroup_procs_write_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_procs_write_permission(%struct.cgroup* %0, %struct.cgroup* %1, %struct.super_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.cgroup_namespace*, align 8
  %9 = alloca %struct.cgroup*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cgroup* %1, %struct.cgroup** %6, align 8
  store %struct.super_block* %2, %struct.super_block** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %15, align 8
  store %struct.cgroup_namespace* %16, %struct.cgroup_namespace** %8, align 8
  %17 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  store %struct.cgroup* %17, %struct.cgroup** %9, align 8
  %18 = call i32 @lockdep_assert_held(i32* @cgroup_mutex)
  br label %19

19:                                               ; preds = %25, %3
  %20 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %21 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %22 = call i32 @cgroup_is_descendant(%struct.cgroup* %20, %struct.cgroup* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %27 = call %struct.cgroup* @cgroup_parent(%struct.cgroup* %26)
  store %struct.cgroup* %27, %struct.cgroup** %9, align 8
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %31 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.inode* @kernfs_get_inode(%struct.super_block* %29, i32 %33)
  store %struct.inode* %34, %struct.inode** %10, align 8
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = icmp ne %struct.inode* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %77

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = load i32, i32* @MAY_WRITE, align 4
  %43 = call i32 @inode_permission(%struct.inode* %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = call i32 @iput(%struct.inode* %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %77

50:                                               ; preds = %40
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cgrp_dfl_root, i32 0, i32 0), align 4
  %52 = load i32, i32* @CGRP_ROOT_NS_DELEGATE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %57 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  %58 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.cgroup*, %struct.cgroup** %60, align 8
  %62 = call i32 @cgroup_is_descendant(%struct.cgroup* %56, %struct.cgroup* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %66 = load %struct.cgroup_namespace*, %struct.cgroup_namespace** %8, align 8
  %67 = getelementptr inbounds %struct.cgroup_namespace, %struct.cgroup_namespace* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.cgroup*, %struct.cgroup** %69, align 8
  %71 = call i32 @cgroup_is_descendant(%struct.cgroup* %65, %struct.cgroup* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64, %55
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %64, %50
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %73, %48, %37
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cgroup_is_descendant(%struct.cgroup*, %struct.cgroup*) #1

declare dso_local %struct.cgroup* @cgroup_parent(%struct.cgroup*) #1

declare dso_local %struct.inode* @kernfs_get_inode(%struct.super_block*, i32) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
