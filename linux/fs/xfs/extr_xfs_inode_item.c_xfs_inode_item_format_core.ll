; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode_item.c_xfs_inode_item_format_core.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode_item.c_xfs_inode_item_format_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_log_vec = type { i32 }
%struct.xfs_log_iovec = type { i32 }
%struct.xfs_log_dinode = type { i32 }

@XLOG_REG_TYPE_ICORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*, %struct.xfs_log_vec*, %struct.xfs_log_iovec**)* @xfs_inode_item_format_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_inode_item_format_core(%struct.xfs_inode* %0, %struct.xfs_log_vec* %1, %struct.xfs_log_iovec** %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_log_vec*, align 8
  %6 = alloca %struct.xfs_log_iovec**, align 8
  %7 = alloca %struct.xfs_log_dinode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_log_vec* %1, %struct.xfs_log_vec** %5, align 8
  store %struct.xfs_log_iovec** %2, %struct.xfs_log_iovec*** %6, align 8
  %8 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %5, align 8
  %9 = load %struct.xfs_log_iovec**, %struct.xfs_log_iovec*** %6, align 8
  %10 = load i32, i32* @XLOG_REG_TYPE_ICORE, align 4
  %11 = call %struct.xfs_log_dinode* @xlog_prepare_iovec(%struct.xfs_log_vec* %8, %struct.xfs_log_iovec** %9, i32 %10)
  store %struct.xfs_log_dinode* %11, %struct.xfs_log_dinode** %7, align 8
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %13 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %7, align 8
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xfs_inode_to_log_dinode(%struct.xfs_inode* %12, %struct.xfs_log_dinode* %13, i32 %19)
  %21 = load %struct.xfs_log_vec*, %struct.xfs_log_vec** %5, align 8
  %22 = load %struct.xfs_log_iovec**, %struct.xfs_log_iovec*** %6, align 8
  %23 = load %struct.xfs_log_iovec*, %struct.xfs_log_iovec** %22, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @xfs_log_dinode_size(i32 %27)
  %29 = call i32 @xlog_finish_iovec(%struct.xfs_log_vec* %21, %struct.xfs_log_iovec* %23, i32 %28)
  ret void
}

declare dso_local %struct.xfs_log_dinode* @xlog_prepare_iovec(%struct.xfs_log_vec*, %struct.xfs_log_iovec**, i32) #1

declare dso_local i32 @xfs_inode_to_log_dinode(%struct.xfs_inode*, %struct.xfs_log_dinode*, i32) #1

declare dso_local i32 @xlog_finish_iovec(%struct.xfs_log_vec*, %struct.xfs_log_iovec*, i32) #1

declare dso_local i32 @xfs_log_dinode_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
