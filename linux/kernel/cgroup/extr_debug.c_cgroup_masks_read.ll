; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_debug.c_cgroup_masks_read.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_debug.c_cgroup_masks_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.kernfs_open_file* }
%struct.kernfs_open_file = type { i32 }
%struct.cgroup = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"subtree_control\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"subtree_ss_mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @cgroup_masks_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_masks_read(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca %struct.cgroup*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %9, align 8
  store %struct.kernfs_open_file* %10, %struct.kernfs_open_file** %6, align 8
  %11 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cgroup* @cgroup_kn_lock_live(i32 %13, i32 0)
  store %struct.cgroup* %14, %struct.cgroup** %7, align 8
  %15 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %16 = icmp ne %struct.cgroup* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %22 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %23 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cgroup_masks_read_one(%struct.seq_file* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %28 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cgroup_masks_read_one(%struct.seq_file* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %32 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cgroup_kn_unlock(i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %20, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.cgroup* @cgroup_kn_lock_live(i32, i32) #1

declare dso_local i32 @cgroup_masks_read_one(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @cgroup_kn_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
