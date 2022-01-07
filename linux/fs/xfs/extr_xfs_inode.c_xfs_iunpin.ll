; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iunpin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iunpin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*)* @xfs_iunpin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_iunpin(%struct.xfs_inode* %0) #0 {
  %2 = alloca %struct.xfs_inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %2, align 8
  %3 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %4 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %5 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @xfs_isilocked(%struct.xfs_inode* %3, i32 %6)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %10 = load i32, i32* @_RET_IP_, align 4
  %11 = call i32 @trace_xfs_inode_unpin_nowait(%struct.xfs_inode* %9, i32 %10)
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %13 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %2, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @xfs_log_force_lsn(i32 %14, i32 %19, i32 0, i32* null)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @trace_xfs_inode_unpin_nowait(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_log_force_lsn(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
