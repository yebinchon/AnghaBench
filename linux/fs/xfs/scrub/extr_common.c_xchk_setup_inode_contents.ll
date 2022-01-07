; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_setup_inode_contents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_setup_inode_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, i32 }
%struct.xfs_inode = type { i32 }

@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_setup_inode_contents(%struct.xfs_scrub* %0, %struct.xfs_inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_scrub*, align 8
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %5, align 8
  store %struct.xfs_inode* %1, %struct.xfs_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %11 = call i32 @xchk_get_inode(%struct.xfs_scrub* %9, %struct.xfs_inode* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %48

16:                                               ; preds = %3
  %17 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %18 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %21 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %26 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @xfs_ilock(i32 %24, i32 %27)
  %29 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @xchk_trans_alloc(%struct.xfs_scrub* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %46

35:                                               ; preds = %16
  %36 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %37 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %5, align 8
  %42 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %45 = call i32 @xfs_ilock(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %35, %34
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @xchk_get_inode(%struct.xfs_scrub*, %struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(i32, i32) #1

declare dso_local i32 @xchk_trans_alloc(%struct.xfs_scrub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
