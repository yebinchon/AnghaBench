; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_qcinfo_from_xfs_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_qcinfo_from_xfs_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fs_disk_quota = type { i32, i32, i32, i32, i32, i32, i32 }

@FS_DQ_BWARNS = common dso_local global i32 0, align 4
@QC_SPC_WARNS = common dso_local global i32 0, align 4
@FS_DQ_IWARNS = common dso_local global i32 0, align 4
@QC_INO_WARNS = common dso_local global i32 0, align 4
@FS_DQ_RTBWARNS = common dso_local global i32 0, align 4
@QC_RT_SPC_WARNS = common dso_local global i32 0, align 4
@FS_DQ_BTIMER = common dso_local global i32 0, align 4
@QC_SPC_TIMER = common dso_local global i32 0, align 4
@FS_DQ_ITIMER = common dso_local global i32 0, align 4
@QC_INO_TIMER = common dso_local global i32 0, align 4
@FS_DQ_RTBTIMER = common dso_local global i32 0, align 4
@QC_RT_SPC_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qc_info*, %struct.fs_disk_quota*)* @copy_qcinfo_from_xfs_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_qcinfo_from_xfs_dqblk(%struct.qc_info* %0, %struct.fs_disk_quota* %1) #0 {
  %3 = alloca %struct.qc_info*, align 8
  %4 = alloca %struct.fs_disk_quota*, align 8
  store %struct.qc_info* %0, %struct.qc_info** %3, align 8
  store %struct.fs_disk_quota* %1, %struct.fs_disk_quota** %4, align 8
  %5 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %6 = call i32 @memset(%struct.qc_info* %5, i32 0, i32 28)
  %7 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %8 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %11 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  %12 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %13 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %16 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 4
  %17 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %18 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %21 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %23 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %26 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %28 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %31 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %33 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %36 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %38 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FS_DQ_BWARNS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %2
  %44 = load i32, i32* @QC_SPC_WARNS, align 4
  %45 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %46 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %2
  %50 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %51 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FS_DQ_IWARNS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @QC_INO_WARNS, align 4
  %58 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %59 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %49
  %63 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %64 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FS_DQ_RTBWARNS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @QC_RT_SPC_WARNS, align 4
  %71 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %72 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %77 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FS_DQ_BTIMER, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @QC_SPC_TIMER, align 4
  %84 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %85 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %75
  %89 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %90 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FS_DQ_ITIMER, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @QC_INO_TIMER, align 4
  %97 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %98 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %4, align 8
  %103 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @FS_DQ_RTBTIMER, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i32, i32* @QC_RT_SPC_TIMER, align 4
  %110 = load %struct.qc_info*, %struct.qc_info** %3, align 8
  %111 = getelementptr inbounds %struct.qc_info, %struct.qc_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %101
  ret void
}

declare dso_local i32 @memset(%struct.qc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
