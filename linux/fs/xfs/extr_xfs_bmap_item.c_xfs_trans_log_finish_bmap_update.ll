; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_item.c_xfs_trans_log_finish_bmap_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_item.c_xfs_trans_log_finish_bmap_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_bud_log_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_inode = type { i32 }

@XFS_TRANS_DIRTY = common dso_local global i32 0, align 4
@XFS_LI_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*, %struct.xfs_bud_log_item*, i32, %struct.xfs_inode*, i32, i32, i32, i32*, i32)* @xfs_trans_log_finish_bmap_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_trans_log_finish_bmap_update(%struct.xfs_trans* %0, %struct.xfs_bud_log_item* %1, i32 %2, %struct.xfs_inode* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.xfs_trans*, align 8
  %11 = alloca %struct.xfs_bud_log_item*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.xfs_trans* %0, %struct.xfs_trans** %10, align 8
  store %struct.xfs_bud_log_item* %1, %struct.xfs_bud_log_item** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.xfs_inode* %3, %struct.xfs_inode** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %20 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %13, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32*, i32** %17, align 8
  %27 = load i32, i32* %18, align 4
  %28 = call i32 @xfs_bmap_finish_one(%struct.xfs_trans* %20, %struct.xfs_inode* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %26, i32 %27)
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* @XFS_TRANS_DIRTY, align 4
  %30 = load %struct.xfs_trans*, %struct.xfs_trans** %10, align 8
  %31 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* @XFS_LI_DIRTY, align 4
  %35 = load %struct.xfs_bud_log_item*, %struct.xfs_bud_log_item** %11, align 8
  %36 = getelementptr inbounds %struct.xfs_bud_log_item, %struct.xfs_bud_log_item* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @set_bit(i32 %34, i32* %37)
  %39 = load i32, i32* %19, align 4
  ret i32 %39
}

declare dso_local i32 @xfs_bmap_finish_one(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
