; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fs_context = type { i32 }
%struct.cgroup_fs_context = type { i32, %struct.TYPE_2__* }

@cgrp_dfl_visible = common dso_local global i32 0, align 4
@cgrp_dfl_root = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @cgroup_get_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.cgroup_fs_context*, align 8
  %4 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %6 = call %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context* %5)
  store %struct.cgroup_fs_context* %6, %struct.cgroup_fs_context** %3, align 8
  store i32 1, i32* @cgrp_dfl_visible, align 4
  %7 = call i32 @cgroup_get_live(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgrp_dfl_root, i32 0, i32 0))
  %8 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %9 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %8, i32 0, i32 1
  store %struct.TYPE_2__* @cgrp_dfl_root, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %11 = call i32 @cgroup_do_get_tree(%struct.fs_context* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.cgroup_fs_context*, %struct.cgroup_fs_context** %3, align 8
  %16 = getelementptr inbounds %struct.cgroup_fs_context, %struct.cgroup_fs_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @apply_cgroup_root_flags(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local %struct.cgroup_fs_context* @cgroup_fc2context(%struct.fs_context*) #1

declare dso_local i32 @cgroup_get_live(i32*) #1

declare dso_local i32 @cgroup_do_get_tree(%struct.fs_context*) #1

declare dso_local i32 @apply_cgroup_root_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
