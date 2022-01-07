; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_cgroup1_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.fs_context = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.cgroup_fs_context = type { %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@cgrp_dfl_root = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@cgroup_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroup1_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.cgroup_fs_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %7 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %8 = call %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context* %7)
  store %struct.cgroup_fs_context* %8, %struct.cgroup_fs_context** %4, align 8
  %9 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %15 = call i32 @ns_capable(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %1
  %21 = call i32 @cgroup_lock_and_drain_offline(i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cgrp_dfl_root, i32 0, i32 0))
  %22 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %23 = call i32 @cgroup1_root_to_use(%struct.fs_context* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  %27 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %28 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = call i32 @percpu_ref_tryget_live(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %26, %20
  %37 = call i32 @mutex_unlock(i32* @cgroup_mutex)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %42 = call i32 @cgroup_do_get_tree(%struct.fs_context* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %67, label %46

46:                                               ; preds = %43
  %47 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %4, align 8
  %48 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i64 @percpu_ref_is_dying(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %46
  %56 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %57 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.super_block*, %struct.super_block** %59, align 8
  store %struct.super_block* %60, %struct.super_block** %6, align 8
  %61 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %62 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %61, i32 0, i32 0
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = call i32 @dput(%struct.TYPE_11__* %63)
  %65 = load %struct.super_block*, %struct.super_block** %6, align 8
  %66 = call i32 @deactivate_locked_super(%struct.super_block* %65)
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %55, %46, %43
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = call i32 @msleep(i32 10)
  %75 = call i32 (...) @restart_syscall()
  store i32 %75, i32* %2, align 4
  br label %78

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %73, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context*) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @cgroup_lock_and_drain_offline(i32*) #1

declare dso_local i32 @cgroup1_root_to_use(%struct.fs_context*) #1

declare dso_local i32 @percpu_ref_tryget_live(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cgroup_do_get_tree(%struct.fs_context*) #1

declare dso_local i64 @percpu_ref_is_dying(i32*) #1

declare dso_local i32 @dput(%struct.TYPE_11__*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @restart_syscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
