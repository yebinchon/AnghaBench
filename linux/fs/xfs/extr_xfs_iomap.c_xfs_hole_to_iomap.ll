; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_hole_to_iomap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_hole_to_iomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.iomap = type { i32, i32, i8*, i8*, i32, i32 }

@IOMAP_NULL_ADDR = common dso_local global i32 0, align 4
@IOMAP_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*, %struct.iomap*, i64, i64)* @xfs_hole_to_iomap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_hole_to_iomap(%struct.xfs_inode* %0, %struct.iomap* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.iomap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.iomap* %1, %struct.iomap** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* @IOMAP_NULL_ADDR, align 4
  %10 = load %struct.iomap*, %struct.iomap** %6, align 8
  %11 = getelementptr inbounds %struct.iomap, %struct.iomap* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @IOMAP_HOLE, align 4
  %13 = load %struct.iomap*, %struct.iomap** %6, align 8
  %14 = getelementptr inbounds %struct.iomap, %struct.iomap* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i8* @XFS_FSB_TO_B(i32 %17, i64 %18)
  %20 = load %struct.iomap*, %struct.iomap** %6, align 8
  %21 = getelementptr inbounds %struct.iomap, %struct.iomap* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub nsw i64 %25, %26
  %28 = call i8* @XFS_FSB_TO_B(i32 %24, i64 %27)
  %29 = load %struct.iomap*, %struct.iomap** %6, align 8
  %30 = getelementptr inbounds %struct.iomap, %struct.iomap* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %32 = call i32 @VFS_I(%struct.xfs_inode* %31)
  %33 = call i32 @xfs_find_bdev_for_inode(i32 %32)
  %34 = load %struct.iomap*, %struct.iomap** %6, align 8
  %35 = getelementptr inbounds %struct.iomap, %struct.iomap* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %37 = call i32 @VFS_I(%struct.xfs_inode* %36)
  %38 = call i32 @xfs_find_daxdev_for_inode(i32 %37)
  %39 = load %struct.iomap*, %struct.iomap** %6, align 8
  %40 = getelementptr inbounds %struct.iomap, %struct.iomap* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  ret void
}

declare dso_local i8* @XFS_FSB_TO_B(i32, i64) #1

declare dso_local i32 @xfs_find_bdev_for_inode(i32) #1

declare dso_local i32 @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_find_daxdev_for_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
