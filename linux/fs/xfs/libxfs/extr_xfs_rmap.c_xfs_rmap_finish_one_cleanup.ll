; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_finish_one_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rmap.c_xfs_rmap_finish_one_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_btree_cur = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.xfs_buf* }
%struct.xfs_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_rmap_finish_one_cleanup(%struct.xfs_trans* %0, %struct.xfs_btree_cur* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_trans*, align 8
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %4, align 8
  store %struct.xfs_btree_cur* %1, %struct.xfs_btree_cur** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %9 = icmp eq %struct.xfs_btree_cur* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %26

11:                                               ; preds = %3
  %12 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %13 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.xfs_buf*, %struct.xfs_buf** %15, align 8
  store %struct.xfs_buf* %16, %struct.xfs_buf** %7, align 8
  %17 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %11
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %4, align 8
  %24 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %25 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %23, %struct.xfs_buf* %24)
  br label %26

26:                                               ; preds = %10, %22, %11
  ret void
}

declare dso_local i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @xfs_trans_brelse(%struct.xfs_trans*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
