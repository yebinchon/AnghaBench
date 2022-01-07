; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup.c_cgroup_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_root = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.kernfs_root = type { i32 }

@cgrp_dfl_root = common dso_local global %struct.cgroup_root zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @cgroup_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgroup_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.kernfs_root*, align 8
  %4 = alloca %struct.cgroup_root*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.kernfs_root* @kernfs_root_from_sb(%struct.super_block* %5)
  store %struct.kernfs_root* %6, %struct.kernfs_root** %3, align 8
  %7 = load %struct.kernfs_root*, %struct.kernfs_root** %3, align 8
  %8 = call %struct.cgroup_root* @cgroup_root_from_kf(%struct.kernfs_root* %7)
  store %struct.cgroup_root* %8, %struct.cgroup_root** %4, align 8
  %9 = load %struct.cgroup_root*, %struct.cgroup_root** %4, align 8
  %10 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i64 @list_empty(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.cgroup_root*, %struct.cgroup_root** %4, align 8
  %17 = icmp ne %struct.cgroup_root* %16, @cgrp_dfl_root
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.cgroup_root*, %struct.cgroup_root** %4, align 8
  %20 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @percpu_ref_is_dying(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.cgroup_root*, %struct.cgroup_root** %4, align 8
  %27 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @percpu_ref_kill(i32* %29)
  br label %31

31:                                               ; preds = %25, %18, %15, %1
  %32 = load %struct.cgroup_root*, %struct.cgroup_root** %4, align 8
  %33 = getelementptr inbounds %struct.cgroup_root, %struct.cgroup_root* %32, i32 0, i32 0
  %34 = call i32 @cgroup_put(%struct.TYPE_4__* %33)
  %35 = load %struct.super_block*, %struct.super_block** %2, align 8
  %36 = call i32 @kernfs_kill_sb(%struct.super_block* %35)
  ret void
}

declare dso_local %struct.kernfs_root* @kernfs_root_from_sb(%struct.super_block*) #1

declare dso_local %struct.cgroup_root* @cgroup_root_from_kf(%struct.kernfs_root*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @percpu_ref_is_dying(i32*) #1

declare dso_local i32 @percpu_ref_kill(i32*) #1

declare dso_local i32 @cgroup_put(%struct.TYPE_4__*) #1

declare dso_local i32 @kernfs_kill_sb(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
