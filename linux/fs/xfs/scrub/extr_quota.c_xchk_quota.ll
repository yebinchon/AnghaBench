; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_quota.c_xchk_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_quota.c_xchk_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i64, i32, %struct.TYPE_2__*, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_mount = type { %struct.xfs_quotainfo* }
%struct.xfs_quotainfo = type { i32 }
%struct.xchk_quota_info = type { i32, %struct.xfs_scrub* }

@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4
@xchk_quota_item = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i64 0, align 8
@XFS_DATA_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_quota(%struct.xfs_scrub* %0) #0 {
  %2 = alloca %struct.xfs_scrub*, align 8
  %3 = alloca %struct.xchk_quota_info, align 8
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_quotainfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %2, align 8
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 3
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %9, align 8
  store %struct.xfs_mount* %10, %struct.xfs_mount** %4, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %11, i32 0, i32 0
  %13 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %12, align 8
  store %struct.xfs_quotainfo* %13, %struct.xfs_quotainfo** %5, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %15 = call i32 @xchk_quota_to_dqtype(%struct.xfs_scrub* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %17 = call i32 @xchk_quota_data_fork(%struct.xfs_scrub* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %70

21:                                               ; preds = %1
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %70

31:                                               ; preds = %21
  %32 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %33 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @xfs_iunlock(i32 %34, i64 %37)
  %39 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %40 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %42 = getelementptr inbounds %struct.xchk_quota_info, %struct.xchk_quota_info* %3, i32 0, i32 1
  store %struct.xfs_scrub* %41, %struct.xfs_scrub** %42, align 8
  %43 = getelementptr inbounds %struct.xchk_quota_info, %struct.xchk_quota_info* %3, i32 0, i32 0
  store i32 0, i32* %43, align 8
  %44 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @xchk_quota_item, align 4
  %47 = call i32 @xfs_qm_dqiterate(%struct.xfs_mount* %44, i32 %45, i32 %46, %struct.xchk_quota_info* %3)
  store i32 %47, i32* %7, align 4
  %48 = load i64, i64* @XFS_ILOCK_EXCL, align 8
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %50 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %52 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %55 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @xfs_ilock(i32 %53, i64 %56)
  %58 = load %struct.xfs_scrub*, %struct.xfs_scrub** %2, align 8
  %59 = load i32, i32* @XFS_DATA_FORK, align 4
  %60 = getelementptr inbounds %struct.xchk_quota_info, %struct.xchk_quota_info* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = call i32 @xchk_fblock_process_error(%struct.xfs_scrub* %58, i32 %59, i32 %65, i32* %7)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %31
  br label %70

69:                                               ; preds = %31
  br label %70

70:                                               ; preds = %69, %68, %30, %20
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @xchk_quota_to_dqtype(%struct.xfs_scrub*) #1

declare dso_local i32 @xchk_quota_data_fork(%struct.xfs_scrub*) #1

declare dso_local i32 @xfs_iunlock(i32, i64) #1

declare dso_local i32 @xfs_qm_dqiterate(%struct.xfs_mount*, i32, i32, %struct.xchk_quota_info*) #1

declare dso_local i32 @xfs_ilock(i32, i64) #1

declare dso_local i32 @xchk_fblock_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
