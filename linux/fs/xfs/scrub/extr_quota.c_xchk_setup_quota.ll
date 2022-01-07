; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_quota.c_xchk_setup_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_quota.c_xchk_setup_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.xfs_inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XCHK_HAS_QUOTAOFFLOCK = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_setup_quota(%struct.xfs_scrub* %0, %struct.xfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_scrub*, align 8
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %4, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %5, align 8
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = call i32 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_7__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %15 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = call i32 @XFS_IS_QUOTA_ON(%struct.TYPE_7__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %13
  %23 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %24 = call i64 @xchk_quota_to_dqtype(%struct.xfs_scrub* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %22
  %31 = load i32, i32* @XCHK_HAS_QUOTAOFFLOCK, align 4
  %32 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %44 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @xfs_this_quota_on(%struct.TYPE_7__* %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %30
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %76

52:                                               ; preds = %30
  %53 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %54 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %55 = call i32 @xchk_setup_fs(%struct.xfs_scrub* %53, %struct.xfs_inode* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %76

60:                                               ; preds = %52
  %61 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %62 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @xfs_quota_inode(%struct.TYPE_7__* %63, i64 %64)
  %66 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %67 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %69 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %72 = call i32 @xfs_ilock(i32 %70, i32 %71)
  %73 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %74 = load %struct.xfs_scrub*, %struct.xfs_scrub** %4, align 8
  %75 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %60, %58, %49, %27, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @XFS_IS_QUOTA_RUNNING(%struct.TYPE_7__*) #1

declare dso_local i32 @XFS_IS_QUOTA_ON(%struct.TYPE_7__*) #1

declare dso_local i64 @xchk_quota_to_dqtype(%struct.xfs_scrub*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @xfs_this_quota_on(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @xchk_setup_fs(%struct.xfs_scrub*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_quota_inode(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @xfs_ilock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
