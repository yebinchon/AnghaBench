; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_quotaops.c_xfs_fs_set_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_quotaops.c_xfs_fs_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_mount = type { i32 }
%struct.qc_dqblk = type { i32, i32, i32, i32, i32, i32, i32 }

@EROFS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFS_QC_SETINFO_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.qc_info*)* @xfs_fs_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_fs_set_info(%struct.super_block* %0, i32 %1, %struct.qc_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qc_info*, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca %struct.qc_dqblk, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qc_info* %2, %struct.qc_info** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call %struct.xfs_mount* @XFS_M(%struct.super_block* %10)
  store %struct.xfs_mount* %11, %struct.xfs_mount** %8, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call i64 @sb_rdonly(%struct.super_block* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EROFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %84

18:                                               ; preds = %3
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %20 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %84

25:                                               ; preds = %18
  %26 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %27 = call i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ESRCH, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %84

32:                                               ; preds = %25
  %33 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %34 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XFS_QC_SETINFO_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %84

43:                                               ; preds = %32
  %44 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %45 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @XFS_QC_SETINFO_MASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %84

51:                                               ; preds = %43
  %52 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %53 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %57 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 6
  store i32 %58, i32* %59, align 4
  %60 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %61 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 5
  store i32 %62, i32* %63, align 4
  %64 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %65 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 4
  store i32 %66, i32* %67, align 4
  %68 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %69 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %73 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  %76 = load %struct.qc_info*, %struct.qc_info** %7, align 8
  %77 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @xfs_quota_type(i32 %81)
  %83 = call i32 @xfs_qm_scall_setqlim(%struct.xfs_mount* %80, i32 0, i32 %82, %struct.qc_dqblk* %9)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %51, %50, %40, %29, %22, %15
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.xfs_mount* @XFS_M(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_qm_scall_setqlim(%struct.xfs_mount*, i32, i32, %struct.qc_dqblk*) #1

declare dso_local i32 @xfs_quota_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
