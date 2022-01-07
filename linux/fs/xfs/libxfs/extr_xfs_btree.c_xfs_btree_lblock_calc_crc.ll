; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_lblock_calc_crc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_lblock_calc_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.TYPE_5__*, %struct.xfs_buf_log_item* }
%struct.TYPE_5__ = type { i32 }
%struct.xfs_buf_log_item = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.xfs_btree_block = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@XFS_BTREE_LBLOCK_CRC_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_btree_lblock_calc_crc(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca %struct.xfs_btree_block*, align 8
  %4 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %6 = call %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf* %5)
  store %struct.xfs_btree_block* %6, %struct.xfs_btree_block** %3, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 1
  %9 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %8, align 8
  store %struct.xfs_buf_log_item* %9, %struct.xfs_buf_log_item** %4, align 8
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @xfs_sb_version_hascrc(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %19 = icmp ne %struct.xfs_buf_log_item* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_be64(i32 %24)
  %26 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %32 = load i32, i32* @XFS_BTREE_LBLOCK_CRC_OFF, align 4
  %33 = call i32 @xfs_buf_update_cksum(%struct.xfs_buf* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %16
  ret void
}

declare dso_local %struct.xfs_btree_block* @XFS_BUF_TO_BLOCK(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @xfs_buf_update_cksum(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
