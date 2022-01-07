; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_break_leased_layouts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_break_leased_layouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4
@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_break_leased_layouts(%struct.inode* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xfs_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.xfs_inode* @XFS_I(%struct.inode* %9)
  store %struct.xfs_inode* %10, %struct.xfs_inode** %7, align 8
  br label %11

11:                                               ; preds = %17, %3
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @break_layout(%struct.inode* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @EWOULDBLOCK, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @xfs_iunlock(%struct.xfs_inode* %18, i32 %20)
  %22 = load i32*, i32** %6, align 8
  store i32 1, i32* %22, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @break_layout(%struct.inode* %23, i32 1)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %26 = xor i32 %25, -1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  %34 = load %struct.xfs_inode*, %struct.xfs_inode** %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @xfs_ilock(%struct.xfs_inode* %34, i32 %36)
  br label %11

38:                                               ; preds = %11
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i32 @break_layout(%struct.inode*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
