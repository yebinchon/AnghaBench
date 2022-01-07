; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_buf_is_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_buf_is_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@XFS_LI_BUF = common dso_local global i64 0, align 8
@XFS_LI_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_trans_buf_is_dirty(%struct.xfs_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_buf*, align 8
  %4 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %3, align 8
  %5 = load %struct.xfs_buf*, %struct.xfs_buf** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %5, i32 0, i32 0
  %7 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %6, align 8
  store %struct.xfs_buf_log_item* %7, %struct.xfs_buf_log_item** %4, align 8
  %8 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %9 = icmp ne %struct.xfs_buf_log_item* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XFS_LI_BUF, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32, i32* @XFS_LI_DIRTY, align 4
  %21 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = call i32 @test_bit(i32 %20, i32* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %11, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
