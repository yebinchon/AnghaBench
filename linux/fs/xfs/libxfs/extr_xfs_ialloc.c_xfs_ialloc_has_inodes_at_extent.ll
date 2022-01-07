; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_has_inodes_at_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_ialloc.c_xfs_ialloc_has_inodes_at_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ialloc_has_inodes_at_extent(%struct.xfs_btree_cur* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @XFS_AGB_TO_AGINO(i32 %13, i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i64 @XFS_AGB_TO_AGINO(i32 %18, i64 %21)
  %23 = sub nsw i64 %22, 1
  store i64 %23, i64* %10, align 8
  %24 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @xfs_ialloc_has_inode_record(%struct.xfs_btree_cur* %24, i64 %25, i64 %26, i32* %27)
  ret i32 %28
}

declare dso_local i64 @XFS_AGB_TO_AGINO(i32, i64) #1

declare dso_local i32 @xfs_ialloc_has_inode_record(%struct.xfs_btree_cur*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
