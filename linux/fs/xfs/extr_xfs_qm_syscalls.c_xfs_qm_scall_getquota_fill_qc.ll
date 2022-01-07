; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_getquota_fill_qc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_qm_syscalls.c_xfs_qm_scall_getquota_fill_qc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_dquot = type { i8*, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@XFS_DQ_USER = common dso_local global i64 0, align 8
@XFS_DQ_GROUP = common dso_local global i64 0, align 8
@XFS_DQ_PROJ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_mount*, i64, %struct.xfs_dquot*, %struct.qc_dqblk*)* @xfs_qm_scall_getquota_fill_qc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_qm_scall_getquota_fill_qc(%struct.xfs_mount* %0, i64 %1, %struct.xfs_dquot* %2, %struct.qc_dqblk* %3) #0 {
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_dquot*, align 8
  %8 = alloca %struct.qc_dqblk*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.xfs_dquot* %2, %struct.xfs_dquot** %7, align 8
  store %struct.qc_dqblk* %3, %struct.qc_dqblk** %8, align 8
  %9 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %10 = call i32 @memset(%struct.qc_dqblk* %9, i32 0, i32 120)
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %12 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %13 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @be64_to_cpu(i32 %15)
  %17 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %11, i8* %16)
  %18 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %19 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %18, i32 0, i32 14
  store i8* %17, i8** %19, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %21 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 12
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @be64_to_cpu(i32 %24)
  %26 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %20, i8* %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %29 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %31 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be64_to_cpu(i32 %33)
  %35 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %36 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %35, i32 0, i32 13
  store i8* %34, i8** %36, align 8
  %37 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %38 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @be64_to_cpu(i32 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %44 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %46 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %47 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %45, i8* %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %52 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %54 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %57 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %59 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @be32_to_cpu(i32 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %65 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %67 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @be32_to_cpu(i32 %69)
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %73 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %72, i32 0, i32 5
  store i64 %71, i64* %73, align 8
  %74 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %75 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @be16_to_cpu(i32 %77)
  %79 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %80 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %82 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @be16_to_cpu(i32 %84)
  %86 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %87 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %86, i32 0, i32 11
  store i8* %85, i8** %87, align 8
  %88 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %89 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %90 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @be64_to_cpu(i32 %92)
  %94 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %88, i8* %93)
  %95 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %96 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %95, i32 0, i32 10
  store i8* %94, i8** %96, align 8
  %97 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %98 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %99 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @be64_to_cpu(i32 %101)
  %103 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %97, i8* %102)
  %104 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %105 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %104, i32 0, i32 9
  store i8* %103, i8** %105, align 8
  %106 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %107 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %108 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %106, i8* %109)
  %111 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %112 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %111, i32 0, i32 8
  store i8* %110, i8** %112, align 8
  %113 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %114 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @be32_to_cpu(i32 %116)
  %118 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %119 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  %120 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %121 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @be16_to_cpu(i32 %123)
  %125 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %126 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %128 = call i64 @XFS_IS_UQUOTA_ENFORCED(%struct.xfs_mount* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %4
  %131 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %132 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @XFS_DQ_USER, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %159, label %137

137:                                              ; preds = %130, %4
  %138 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %139 = call i64 @XFS_IS_GQUOTA_ENFORCED(%struct.xfs_mount* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %148, label %141

141:                                              ; preds = %137
  %142 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %143 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @XFS_DQ_GROUP, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %159, label %148

148:                                              ; preds = %141, %137
  %149 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %150 = call i64 @XFS_IS_PQUOTA_ENFORCED(%struct.xfs_mount* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %166, label %152

152:                                              ; preds = %148
  %153 = load %struct.xfs_dquot*, %struct.xfs_dquot** %7, align 8
  %154 = getelementptr inbounds %struct.xfs_dquot, %struct.xfs_dquot* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @XFS_DQ_PROJ, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %152, %141, %130
  %160 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %161 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %160, i32 0, i32 4
  store i64 0, i64* %161, align 8
  %162 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %163 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %162, i32 0, i32 5
  store i64 0, i64* %163, align 8
  %164 = load %struct.qc_dqblk*, %struct.qc_dqblk** %8, align 8
  %165 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %164, i32 0, i32 6
  store i8* null, i8** %165, align 8
  br label %166

166:                                              ; preds = %159, %152, %148
  ret void
}

declare dso_local i32 @memset(%struct.qc_dqblk*, i32, i32) #1

declare dso_local i8* @XFS_FSB_TO_B(%struct.xfs_mount*, i8*) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i64 @XFS_IS_UQUOTA_ENFORCED(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_GQUOTA_ENFORCED(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_PQUOTA_ENFORCED(%struct.xfs_mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
