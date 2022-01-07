; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_block_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_block_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32 }

@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@XFS_BTREE_CRC_BLOCKS = common dso_local global i32 0, align 4
@XFS_BTREE_LBLOCK_CRC_LEN = common dso_local global i64 0, align 8
@XFS_BTREE_LBLOCK_LEN = common dso_local global i64 0, align 8
@XFS_BTREE_SBLOCK_CRC_LEN = common dso_local global i64 0, align 8
@XFS_BTREE_SBLOCK_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.xfs_btree_cur*)* @xfs_btree_block_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xfs_btree_block_len(%struct.xfs_btree_cur* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xfs_btree_cur*, align 8
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %3, align 8
  %4 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %5 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @XFS_BTREE_CRC_BLOCKS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i64, i64* @XFS_BTREE_LBLOCK_CRC_LEN, align 8
  store i64 %18, i64* %2, align 8
  br label %32

19:                                               ; preds = %10
  %20 = load i64, i64* @XFS_BTREE_LBLOCK_LEN, align 8
  store i64 %20, i64* %2, align 8
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XFS_BTREE_CRC_BLOCKS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @XFS_BTREE_SBLOCK_CRC_LEN, align 8
  store i64 %29, i64* %2, align 8
  br label %32

30:                                               ; preds = %21
  %31 = load i64, i64* @XFS_BTREE_SBLOCK_LEN, align 8
  store i64 %31, i64* %2, align 8
  br label %32

32:                                               ; preds = %30, %28, %19, %17
  %33 = load i64, i64* %2, align 8
  ret i64 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
