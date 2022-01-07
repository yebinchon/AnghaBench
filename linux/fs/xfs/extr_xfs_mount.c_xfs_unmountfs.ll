; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_unmountfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_unmountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@XFS_LOG_SYNC = common dso_local global i32 0, align 4
@xfs_discard_wq = common dso_local global i32 0, align 4
@XFS_MOUNT_UNMOUNTING = common dso_local global i32 0, align 4
@SYNC_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Unable to free reserved block pool. Freespace may not be correct on next mount.\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"Unable to update superblock counters. Freespace may not be correct on next mount.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_unmountfs(%struct.xfs_mount* %0) #0 {
  %2 = alloca %struct.xfs_mount*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %2, align 8
  %5 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %6 = call i32 @xfs_stop_block_reaping(%struct.xfs_mount* %5)
  %7 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %8 = call i32 @xfs_fs_unreserve_ag_blocks(%struct.xfs_mount* %7)
  %9 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %10 = call i32 @xfs_qm_unmount_quotas(%struct.xfs_mount* %9)
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %12 = call i32 @xfs_rtunmount_inodes(%struct.xfs_mount* %11)
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @xfs_irele(i32 %15)
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %18 = load i32, i32* @XFS_LOG_SYNC, align 4
  %19 = call i32 @xfs_log_force(%struct.xfs_mount* %17, i32 %18)
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %21 = call i32 @xfs_extent_busy_wait_all(%struct.xfs_mount* %20)
  %22 = load i32, i32* @xfs_discard_wq, align 4
  %23 = call i32 @flush_workqueue(i32 %22)
  %24 = load i32, i32* @XFS_MOUNT_UNMOUNTING, align 4
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %26 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %30 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @xfs_ail_push_all_sync(i32 %31)
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 2
  %35 = call i32 @cancel_delayed_work_sync(i32* %34)
  %36 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %37 = load i32, i32* @SYNC_WAIT, align 4
  %38 = call i32 @xfs_reclaim_inodes(%struct.xfs_mount* %36, i32 %37)
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %40 = call i32 @xfs_health_unmount(%struct.xfs_mount* %39)
  %41 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %42 = call i32 @xfs_qm_unmount(%struct.xfs_mount* %41)
  store i64 0, i64* %3, align 8
  %43 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %44 = call i32 @xfs_reserve_blocks(%struct.xfs_mount* %43, i64* %3, i32* null)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %1
  %48 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %49 = call i32 @xfs_warn(%struct.xfs_mount* %48, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %1
  %51 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %52 = call i32 @xfs_log_sbcount(%struct.xfs_mount* %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %57 = call i32 @xfs_warn(%struct.xfs_mount* %56, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %60 = call i32 @xfs_log_unmount(%struct.xfs_mount* %59)
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %62 = call i32 @xfs_da_unmount(%struct.xfs_mount* %61)
  %63 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %64 = call i32 @xfs_uuid_unmount(%struct.xfs_mount* %63)
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %66 = call i32 @xfs_free_perag(%struct.xfs_mount* %65)
  %67 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %68 = call i32 @xfs_errortag_del(%struct.xfs_mount* %67)
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %70 = call i32 @xfs_error_sysfs_del(%struct.xfs_mount* %69)
  %71 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %72 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @xfs_sysfs_del(i32* %73)
  %75 = load %struct.xfs_mount*, %struct.xfs_mount** %2, align 8
  %76 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %75, i32 0, i32 0
  %77 = call i32 @xfs_sysfs_del(i32* %76)
  ret void
}

declare dso_local i32 @xfs_stop_block_reaping(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_fs_unreserve_ag_blocks(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_qm_unmount_quotas(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_rtunmount_inodes(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_irele(i32) #1

declare dso_local i32 @xfs_log_force(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_extent_busy_wait_all(%struct.xfs_mount*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @xfs_ail_push_all_sync(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @xfs_reclaim_inodes(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_health_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_qm_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_reserve_blocks(%struct.xfs_mount*, i64*, i32*) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*) #1

declare dso_local i32 @xfs_log_sbcount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_log_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_da_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_uuid_unmount(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_free_perag(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_errortag_del(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_error_sysfs_del(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sysfs_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
