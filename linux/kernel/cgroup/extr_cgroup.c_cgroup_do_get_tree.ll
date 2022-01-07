; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_do_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_do_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.fs_context = type { %struct.dentry*, i32* }
%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.cgroup_fs_context = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cgroup = type { i32 }

@cgroup2_fs_type = common dso_local global i32 0, align 4
@CGROUP2_SUPER_MAGIC = common dso_local global i32 0, align 4
@CGROUP_SUPER_MAGIC = common dso_local global i32 0, align 4
@init_cgroup_ns = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@cgroup_mutex = common dso_local global i32 0, align 4
@css_set_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup_do_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.cgroup_fs_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.cgroup*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %9 = call %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context* %8)
  store %struct.cgroup_fs_context* %9, %struct.cgroup_fs_context** %3, align 8
  %10 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %11 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %16 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  %18 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %19 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, @cgroup2_fs_type
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @CGROUP2_SUPER_MAGIC, align 4
  %24 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %25 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @CGROUP_SUPER_MAGIC, align 4
  %29 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %30 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %34 = call i32 @kernfs_get_tree(%struct.fs_context* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %32
  %38 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %39 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, @init_cgroup_ns
  br i1 %41, label %42, label %82

42:                                               ; preds = %37
  %43 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %44 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %43, i32 0, i32 0
  %45 = load %struct.dentry*, %struct.dentry** %44, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  %47 = load %struct.super_block*, %struct.super_block** %46, align 8
  store %struct.super_block* %47, %struct.super_block** %6, align 8
  %48 = call i32 @mutex_lock(i32* @cgroup_mutex)
  %49 = call i32 @spin_lock_irq(i32* @css_set_lock)
  %50 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %51 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %56 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call %struct.cgroup* @cset_cgroup_from_root(i32 %54, %struct.TYPE_6__* %57)
  store %struct.cgroup* %58, %struct.cgroup** %7, align 8
  %59 = call i32 @spin_unlock_irq(i32* @css_set_lock)
  %60 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %61 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %62 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.super_block*, %struct.super_block** %6, align 8
  %65 = call %struct.dentry* @kernfs_node_dentry(i32 %63, %struct.super_block* %64)
  store %struct.dentry* %65, %struct.dentry** %5, align 8
  %66 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %67 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %66, i32 0, i32 0
  %68 = load %struct.dentry*, %struct.dentry** %67, align 8
  %69 = call i32 @dput(%struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %72 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %71, i32 0, i32 0
  store %struct.dentry* %70, %struct.dentry** %72, align 8
  %73 = load %struct.dentry*, %struct.dentry** %5, align 8
  %74 = call i64 @IS_ERR(%struct.dentry* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %42
  %77 = load %struct.dentry*, %struct.dentry** %5, align 8
  %78 = call i32 @PTR_ERR(%struct.dentry* %77)
  store i32 %78, i32* %4, align 4
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = call i32 @deactivate_locked_super(%struct.super_block* %79)
  br label %81

81:                                               ; preds = %76, %42
  br label %82

82:                                               ; preds = %81, %37, %32
  %83 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %84 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %90 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @cgroup_put(i32* %92)
  br label %94

94:                                               ; preds = %88, %82
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context*) #1

declare dso_local i32 @kernfs_get_tree(%struct.fs_context*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.cgroup* @cset_cgroup_from_root(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dentry* @kernfs_node_dentry(i32, %struct.super_block*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i32 @cgroup_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
