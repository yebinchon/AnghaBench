; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_nondir_get_ops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_format.c_xfs_nondir_get_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir_ops = type { i32 }
%struct.xfs_mount = type { i32, %struct.xfs_dir_ops* }
%struct.xfs_inode = type { %struct.xfs_dir_ops* }

@xfs_dir3_nondir_ops = common dso_local global %struct.xfs_dir_ops zeroinitializer, align 4
@xfs_dir2_nondir_ops = common dso_local global %struct.xfs_dir_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_dir_ops* @xfs_nondir_get_ops(%struct.xfs_mount* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca %struct.xfs_dir_ops*, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %6 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %7 = icmp ne %struct.xfs_inode* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %10 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %9, i32 0, i32 0
  %11 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %10, align 8
  store %struct.xfs_dir_ops* %11, %struct.xfs_dir_ops** %3, align 8
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 1
  %15 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %14, align 8
  %16 = icmp ne %struct.xfs_dir_ops* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %18, i32 0, i32 1
  %20 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %19, align 8
  store %struct.xfs_dir_ops* %20, %struct.xfs_dir_ops** %3, align 8
  br label %28

21:                                               ; preds = %12
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %22, i32 0, i32 0
  %24 = call i64 @xfs_sb_version_hascrc(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store %struct.xfs_dir_ops* @xfs_dir3_nondir_ops, %struct.xfs_dir_ops** %3, align 8
  br label %28

27:                                               ; preds = %21
  store %struct.xfs_dir_ops* @xfs_dir2_nondir_ops, %struct.xfs_dir_ops** %3, align 8
  br label %28

28:                                               ; preds = %27, %26, %17, %8
  %29 = load %struct.xfs_dir_ops*, %struct.xfs_dir_ops** %3, align 8
  ret %struct.xfs_dir_ops* %29
}

declare dso_local i64 @xfs_sb_version_hascrc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
