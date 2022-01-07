; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_quotaops.c_xfs_fs_get_quota_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_quotaops.c_xfs_fs_get_quota_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qc_state = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_mount = type { %struct.TYPE_3__, %struct.xfs_quotainfo* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.xfs_quotainfo = type { i32, i32, i32, i32 }

@QCI_ACCT_ENABLED = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i64 0, align 8
@QCI_LIMITS_ENFORCED = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i64 0, align 8
@PRJQUOTA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.qc_state*)* @xfs_fs_get_quota_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_fs_get_quota_state(%struct.super_block* %0, %struct.qc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.qc_state*, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_quotainfo*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.qc_state* %1, %struct.qc_state** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.xfs_mount* @XFS_M(%struct.super_block* %8)
  store %struct.xfs_mount* %9, %struct.xfs_mount** %6, align 8
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %11 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %10, i32 0, i32 1
  %12 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %11, align 8
  store %struct.xfs_quotainfo* %12, %struct.xfs_quotainfo** %7, align 8
  %13 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %14 = call i32 @memset(%struct.qc_state* %13, i32 0, i32 16)
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %16 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %151

19:                                               ; preds = %2
  %20 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %21 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %24 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %26 = call i64 @XFS_IS_UQUOTA_RUNNING(%struct.xfs_mount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %30 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %31 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i64, i64* @USRQUOTA, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %29
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %28, %19
  %39 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %40 = call i64 @XFS_IS_UQUOTA_ENFORCED(%struct.xfs_mount* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %44 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %45 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @USRQUOTA, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %43
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %38
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %54 = call i64 @XFS_IS_GQUOTA_RUNNING(%struct.xfs_mount* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %58 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %59 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* @GRPQUOTA, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %57
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %56, %52
  %67 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %68 = call i64 @XFS_IS_GQUOTA_ENFORCED(%struct.xfs_mount* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %72 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %73 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i64, i64* @GRPQUOTA, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %71
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %70, %66
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %82 = call i64 @XFS_IS_PQUOTA_RUNNING(%struct.xfs_mount* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i32, i32* @QCI_ACCT_ENABLED, align 4
  %86 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %87 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i64, i64* @PRJQUOTA, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %85
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %84, %80
  %95 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %96 = call i64 @XFS_IS_PQUOTA_ENFORCED(%struct.xfs_mount* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* @QCI_LIMITS_ENFORCED, align 4
  %100 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %101 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i64, i64* @PRJQUOTA, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %99
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %98, %94
  %109 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %110 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i64, i64* @USRQUOTA, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %112
  %114 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %115 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %116 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %119 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @xfs_qm_fill_state(%struct.TYPE_4__* %113, %struct.xfs_mount* %114, i32 %117, i32 %121)
  %123 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %124 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* @GRPQUOTA, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %129 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %130 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %133 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @xfs_qm_fill_state(%struct.TYPE_4__* %127, %struct.xfs_mount* %128, i32 %131, i32 %135)
  %137 = load %struct.qc_state*, %struct.qc_state** %5, align 8
  %138 = getelementptr inbounds %struct.qc_state, %struct.qc_state* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* @PRJQUOTA, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %143 = load %struct.xfs_quotainfo*, %struct.xfs_quotainfo** %7, align 8
  %144 = getelementptr inbounds %struct.xfs_quotainfo, %struct.xfs_quotainfo* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %147 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @xfs_qm_fill_state(%struct.TYPE_4__* %141, %struct.xfs_mount* %142, i32 %145, i32 %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %108, %18
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.xfs_mount* @XFS_M(%struct.super_block*) #1

declare dso_local i32 @memset(%struct.qc_state*, i32, i32) #1

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_UQUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_UQUOTA_ENFORCED(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_GQUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_GQUOTA_ENFORCED(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_PQUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_PQUOTA_ENFORCED(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_qm_fill_state(%struct.TYPE_4__*, %struct.xfs_mount*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
