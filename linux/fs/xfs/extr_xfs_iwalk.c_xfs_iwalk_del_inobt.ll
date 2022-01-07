; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_iwalk_del_inobt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iwalk.c_xfs_iwalk_del_inobt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_btree_cur = type { i32 }
%struct.xfs_buf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_trans*, %struct.xfs_btree_cur**, %struct.xfs_buf**, i32)* @xfs_iwalk_del_inobt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iwalk_del_inobt(%struct.xfs_trans* %0, %struct.xfs_btree_cur** %1, %struct.xfs_buf** %2, i32 %3) #0 {
  %5 = alloca %struct.xfs_trans*, align 8
  %6 = alloca %struct.xfs_btree_cur**, align 8
  %7 = alloca %struct.xfs_buf**, align 8
  %8 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %5, align 8
  store %struct.xfs_btree_cur** %1, %struct.xfs_btree_cur*** %6, align 8
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %6, align 8
  %10 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %9, align 8
  %11 = icmp ne %struct.xfs_btree_cur* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %6, align 8
  %14 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @xfs_btree_del_cursor(%struct.xfs_btree_cur* %14, i32 %15)
  %17 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %6, align 8
  store %struct.xfs_btree_cur* null, %struct.xfs_btree_cur** %17, align 8
  br label %18

18:                                               ; preds = %12, %4
  %19 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  %20 = load %struct.xfs_buf*, %struct.xfs_buf** %19, align 8
  %21 = icmp ne %struct.xfs_buf* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %5, align 8
  %24 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %24, align 8
  %26 = call i32 @xfs_trans_brelse(%struct.xfs_trans* %23, %struct.xfs_buf* %25)
  %27 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %27, align 8
  br label %28

28:                                               ; preds = %22, %18
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
