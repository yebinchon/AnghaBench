; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_dqrele_all_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_dqrele_all_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }

@xfs_dqrele_inode = common dso_local global i32 0, align 4
@XFS_AGITER_INEW_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_qm_dqrele_all_inodes(%struct.xfs_mount* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_mount*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %3, align 8
  %10 = load i32, i32* @xfs_dqrele_inode, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @XFS_AGITER_INEW_WAIT, align 4
  %13 = call i32 @xfs_inode_ag_iterator_flags(%struct.xfs_mount* %9, i32 %10, i32 %11, i32* null, i32 %12)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_inode_ag_iterator_flags(%struct.xfs_mount*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
