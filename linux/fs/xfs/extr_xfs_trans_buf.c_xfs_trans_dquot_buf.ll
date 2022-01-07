; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_dquot_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_dquot_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.xfs_buf_log_item* }
%struct.xfs_buf_log_item = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@XFS_BLFT_UDQUOT_BUF = common dso_local global i32 0, align 4
@XFS_BLFT_PDQUOT_BUF = common dso_local global i32 0, align 4
@XFS_BLFT_GDQUOT_BUF = common dso_local global i32 0, align 4
@XFS_BLFT_UNKNOWN_BUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_trans_dquot_buf(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf_log_item*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %9, align 8
  store %struct.xfs_buf_log_item* %10, %struct.xfs_buf_log_item** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 129
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 130
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = phi i1 [ true, %13 ], [ true, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %7, align 8
  %25 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %36 [
    i32 128, label %30
    i32 129, label %32
    i32 130, label %34
  ]

30:                                               ; preds = %19
  %31 = load i32, i32* @XFS_BLFT_UDQUOT_BUF, align 4
  store i32 %31, i32* %6, align 4
  br label %38

32:                                               ; preds = %19
  %33 = load i32, i32* @XFS_BLFT_PDQUOT_BUF, align 4
  store i32 %33, i32* %6, align 4
  br label %38

34:                                               ; preds = %19
  %35 = load i32, i32* @XFS_BLFT_GDQUOT_BUF, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %19
  %37 = load i32, i32* @XFS_BLFT_UNKNOWN_BUF, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34, %32, %30
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @xfs_trans_buf_set_type(i32* %39, %struct.TYPE_6__* %40, i32 %41)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_buf_set_type(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
