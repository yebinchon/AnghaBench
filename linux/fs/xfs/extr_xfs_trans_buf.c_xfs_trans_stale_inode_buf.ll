; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_stale_inode_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_stale_inode_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@XFS_BLI_STALE_INODE = common dso_local global i32 0, align 4
@xfs_buf_iodone = common dso_local global i32 0, align 4
@XFS_BLFT_DINO_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_stale_inode_buf(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.xfs_buf_log_item*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  store %struct.xfs_buf_log_item* %8, %struct.xfs_buf_log_item** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %17 = icmp ne %struct.xfs_buf_log_item* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %20, i32 0, i32 2
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i32, i32* @XFS_BLI_STALE_INODE, align 4
  %27 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @xfs_buf_iodone, align 4
  %32 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = load i32, i32* @XFS_BLFT_DINO_BUF, align 4
  %38 = call i32 @xfs_trans_buf_set_type(i32* %35, %struct.TYPE_6__* %36, i32 %37)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
