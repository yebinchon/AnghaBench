; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_dquot.c_xfs_trans_reserve_quota_nblks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_dquot.c_xfs_trans_reserve_quota_nblks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_trans = type { i32 }
%struct.xfs_inode = type { i32, i32, i32, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@XFS_QMOPT_ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_QMOPT_FORCE_RES = common dso_local global i32 0, align 4
@XFS_TRANS_DQ_RES_RTBLKS = common dso_local global i32 0, align 4
@XFS_TRANS_DQ_RES_BLKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_trans_reserve_quota_nblks(%struct.xfs_trans* %0, %struct.xfs_inode* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 4
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %12, align 8
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %17 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %21 = call i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %5
  store i32 0, i32* %6, align 4
  br label %83

24:                                               ; preds = %19
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %26 = call i64 @XFS_IS_PQUOTA_ON(%struct.xfs_mount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @XFS_QMOPT_ENOSPC, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %34 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %33, i32 0, i32 0
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %36 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @xfs_is_quota_inode(i32* %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %44 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %45 = call i32 @xfs_isilocked(%struct.xfs_inode* %43, i32 %44)
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @XFS_QMOPT_FORCE_RES, align 4
  %49 = load i32, i32* @XFS_QMOPT_ENOSPC, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = load i32, i32* @XFS_TRANS_DQ_RES_RTBLKS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %32
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @XFS_QMOPT_FORCE_RES, align 4
  %58 = load i32, i32* @XFS_QMOPT_ENOSPC, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = and i32 %56, %60
  %62 = load i32, i32* @XFS_TRANS_DQ_RES_BLKS, align 4
  %63 = icmp eq i32 %61, %62
  br label %64

64:                                               ; preds = %55, %32
  %65 = phi i1 [ true, %32 ], [ %63, %55 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %69 = load %struct.xfs_mount*, %struct.xfs_mount** %12, align 8
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %71 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %74 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %77 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i64, i64* %10, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @xfs_trans_reserve_quota_bydquots(%struct.xfs_trans* %68, %struct.xfs_mount* %69, i32 %72, i32 %75, i32 %78, i32 %79, i64 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %64, %23
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.xfs_mount*) #1

declare dso_local i32 @XFS_IS_QUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_PQUOTA_ON(%struct.xfs_mount*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_is_quota_inode(i32*, i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_reserve_quota_bydquots(%struct.xfs_trans*, %struct.xfs_mount*, i32, i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
