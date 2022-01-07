; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqread_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_dquot.c_xfs_qm_dqread_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_dquot = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.xfs_dquot*, %struct.xfs_buf**)* @xfs_qm_dqread_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_qm_dqread_alloc(%struct.xfs_mount* %0, %struct.xfs_dquot* %1, %struct.xfs_buf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_mount*, align 8
  %6 = alloca %struct.xfs_dquot*, align 8
  %7 = alloca %struct.xfs_buf**, align 8
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %5, align 8
  store %struct.xfs_dquot* %1, %struct.xfs_dquot** %6, align 8
  store %struct.xfs_buf** %2, %struct.xfs_buf*** %7, align 8
  %10 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %11 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %12 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %15 = call i32 @XFS_QM_DQALLOC_SPACE_RES(%struct.xfs_mount* %14)
  %16 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %10, i32* %13, i32 %15, i32 0, i32 0, %struct.xfs_trans** %8)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %41

20:                                               ; preds = %3
  %21 = load %struct.xfs_dquot*, %struct.xfs_dquot** %6, align 8
  %22 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  %23 = call i32 @xfs_dquot_disk_alloc(%struct.xfs_trans** %8, %struct.xfs_dquot* %21, %struct.xfs_buf** %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %38

27:                                               ; preds = %20
  %28 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %29 = call i32 @xfs_trans_commit(%struct.xfs_trans* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %33, align 8
  %35 = call i32 @xfs_buf_relse(%struct.xfs_buf* %34)
  %36 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %36, align 8
  br label %41

37:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %43

38:                                               ; preds = %26
  %39 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %40 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %39)
  br label %41

41:                                               ; preds = %38, %32, %19
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_QM_DQALLOC_SPACE_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_dquot_disk_alloc(%struct.xfs_trans**, %struct.xfs_dquot*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
