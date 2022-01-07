; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_pnfs_validate_isize.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_pnfs_validate_isize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }

@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@XFS_EXT_UNWRITTEN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, i64)* @xfs_pnfs_validate_isize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_pnfs_validate_isize(%struct.xfs_inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xfs_bmbt_irec, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %10 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %11 = call i32 @xfs_ilock(%struct.xfs_inode* %9, i32 %10)
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %13 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %14 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %5, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i32 @XFS_B_TO_FSBT(i32 %15, i64 %17)
  %19 = call i32 @xfs_bmapi_read(%struct.xfs_inode* %12, i32 %18, i32 1, %struct.xfs_bmbt_irec* %6, i32* %7, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %21 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %22 = call i32 @xfs_iunlock(%struct.xfs_inode* %20, i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %46

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HOLESTARTBLOCK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %6, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XFS_EXT_UNWRITTEN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32, %27
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmapi_read(%struct.xfs_inode*, i32, i32, %struct.xfs_bmbt_irec*, i32*, i32) #1

declare dso_local i32 @XFS_B_TO_FSBT(i32, i64) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
