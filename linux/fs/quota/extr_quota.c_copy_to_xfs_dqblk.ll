; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_to_xfs_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_to_xfs_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_disk_quota = type { i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FS_DQUOT_VERSION = common dso_local global i32 0, align 4
@USRQUOTA = common dso_local global i32 0, align 4
@FS_USER_QUOTA = common dso_local global i32 0, align 4
@PRJQUOTA = common dso_local global i32 0, align 4
@FS_PROJ_QUOTA = common dso_local global i32 0, align 4
@FS_GROUP_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_disk_quota*, %struct.qc_dqblk*, i32, i32)* @copy_to_xfs_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_xfs_dqblk(%struct.fs_disk_quota* %0, %struct.qc_dqblk* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fs_disk_quota*, align 8
  %6 = alloca %struct.qc_dqblk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fs_disk_quota* %0, %struct.fs_disk_quota** %5, align 8
  store %struct.qc_dqblk* %1, %struct.qc_dqblk** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %10 = call i32 @memset(%struct.fs_disk_quota* %9, i32 0, i32 104)
  %11 = load i32, i32* @FS_DQUOT_VERSION, align 4
  %12 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %13 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %12, i32 0, i32 17
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %16 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %15, i32 0, i32 16
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @USRQUOTA, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @FS_USER_QUOTA, align 4
  %22 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %23 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %22, i32 0, i32 15
  store i32 %21, i32* %23, align 8
  br label %37

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PRJQUOTA, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @FS_PROJ_QUOTA, align 4
  %30 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %31 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %30, i32 0, i32 15
  store i32 %29, i32* %31, align 8
  br label %36

32:                                               ; preds = %24
  %33 = load i32, i32* @FS_GROUP_QUOTA, align 4
  %34 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %35 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %39 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @quota_btobb(i32 %40)
  %42 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %43 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %42, i32 0, i32 14
  store i8* %41, i8** %43, align 8
  %44 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %45 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @quota_btobb(i32 %46)
  %48 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %49 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %48, i32 0, i32 13
  store i8* %47, i8** %49, align 8
  %50 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %51 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %54 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %53, i32 0, i32 12
  store i32 %52, i32* %54, align 4
  %55 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %56 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %59 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %61 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @quota_btobb(i32 %62)
  %64 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %65 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %64, i32 0, i32 10
  store i8* %63, i8** %65, align 8
  %66 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %67 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %70 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %72 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %75 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %74, i32 0, i32 8
  store i32 %73, i32* %75, align 4
  %76 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %77 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %80 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %82 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %85 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %87 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %90 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %89, i32 0, i32 5
  store i32 %88, i32* %90, align 8
  %91 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %92 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @quota_btobb(i32 %93)
  %95 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %96 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %98 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @quota_btobb(i32 %99)
  %101 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %102 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %101, i32 0, i32 3
  store i8* %100, i8** %102, align 8
  %103 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %104 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @quota_btobb(i32 %105)
  %107 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %108 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %110 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %113 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.qc_dqblk*, %struct.qc_dqblk** %6, align 8
  %115 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.fs_disk_quota*, %struct.fs_disk_quota** %5, align 8
  %118 = getelementptr inbounds %struct.fs_disk_quota, %struct.fs_disk_quota* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  ret void
}

declare dso_local i32 @memset(%struct.fs_disk_quota*, i32, i32) #1

declare dso_local i8* @quota_btobb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
