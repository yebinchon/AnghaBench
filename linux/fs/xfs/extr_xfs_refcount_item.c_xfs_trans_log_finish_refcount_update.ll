; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_refcount_item.c_xfs_trans_log_finish_refcount_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_refcount_item.c_xfs_trans_log_finish_refcount_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_cud_log_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_btree_cur = type { i32 }

@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@XFS_LI_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*, %struct.xfs_cud_log_item*, i32, i32, i32, i32*, i32*, %struct.xfs_btree_cur**)* @xfs_trans_log_finish_refcount_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_trans_log_finish_refcount_update(%struct.xfs_trans* %0, %struct.xfs_cud_log_item* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, %struct.xfs_btree_cur** %7) #0 {
  %9 = alloca %struct.xfs_trans*, align 8
  %10 = alloca %struct.xfs_cud_log_item*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.xfs_btree_cur**, align 8
  %17 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %9, align 8
  store %struct.xfs_cud_log_item* %1, %struct.xfs_cud_log_item** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.xfs_btree_cur** %7, %struct.xfs_btree_cur*** %16, align 8
  %18 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %14, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = load %struct.xfs_btree_cur**, %struct.xfs_btree_cur*** %16, align 8
  %25 = call i32 @xfs_refcount_finish_one(%struct.xfs_trans* %18, i32 %19, i32 %20, i32 %21, i32* %22, i32* %23, %struct.xfs_btree_cur** %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %27 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %28 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @XFS_LI_DIRTY, align 4
  %32 = load %struct.xfs_cud_log_item*, %struct.xfs_cud_log_item** %10, align 8
  %33 = getelementptr inbounds %struct.xfs_cud_log_item, %struct.xfs_cud_log_item* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %31, i32* %34)
  %36 = load i32, i32* %17, align 4
  ret i32 %36
}

declare dso_local i32 @xfs_refcount_finish_one(%struct.xfs_trans*, i32, i32, i32, i32*, i32*, %struct.xfs_btree_cur**) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
