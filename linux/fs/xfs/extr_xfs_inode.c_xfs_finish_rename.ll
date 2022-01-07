; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_finish_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_finish_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XFS_MOUNT_WSYNC = common dso_local global i32 0, align 4
@XFS_MOUNT_DIRSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_trans*)* @xfs_finish_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_finish_rename(%struct.xfs_trans* %0) #0 {
  %2 = alloca %struct.xfs_trans*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %2, align 8
  %3 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %4 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @XFS_MOUNT_WSYNC, align 4
  %9 = load i32, i32* @XFS_MOUNT_DIRSYNC, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %15 = call i32 @xfs_trans_set_sync(%struct.xfs_trans* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.xfs_trans*, %struct.xfs_trans** %2, align 8
  %18 = call i32 @xfs_trans_commit(%struct.xfs_trans* %17)
  ret i32 %18
}

declare dso_local i32 @xfs_trans_set_sync(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
