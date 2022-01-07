; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_unmap_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_unmap_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, i32, i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_QMOPT_RES_REGBLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_inode*, i32, i32, i32*)* @xfs_unmap_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_unmap_extent(%struct.xfs_inode* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_mount*, align 8
  %11 = alloca %struct.xfs_trans*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %14, i32 0, i32 3
  %16 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  store %struct.xfs_mount* %16, %struct.xfs_mount** %10, align 8
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %18 = call i32 @XFS_DIOSTRAT_SPACE_RES(%struct.xfs_mount* %17, i32 0)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %20 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %21 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %19, i32* %22, i32 %23, i32 0, i32 0, %struct.xfs_trans** %11)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %34 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ true, %27 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %5, align 4
  br label %86

41:                                               ; preds = %4
  %42 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %43 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %44 = call i32 @xfs_ilock(%struct.xfs_inode* %42, i32 %43)
  %45 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %10, align 8
  %47 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %48 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %51 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @XFS_QMOPT_RES_REGBLKS, align 4
  %58 = call i32 @xfs_trans_reserve_quota(%struct.xfs_trans* %45, %struct.xfs_mount* %46, i32 %49, i32 %52, i32 %55, i32 %56, i32 0, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  br label %83

62:                                               ; preds = %41
  %63 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %64 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %65 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %63, %struct.xfs_inode* %64, i32 0)
  %66 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %67 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @xfs_bunmapi(%struct.xfs_trans* %66, %struct.xfs_inode* %67, i32 %68, i32 %69, i32 0, i32 2, i32* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %83

75:                                               ; preds = %62
  %76 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %77 = call i32 @xfs_trans_commit(%struct.xfs_trans* %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %83, %75
  %79 = load %struct.xfs_inode*, %struct.xfs_inode** %6, align 8
  %80 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %81 = call i32 @xfs_iunlock(%struct.xfs_inode* %79, i32 %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %5, align 4
  br label %86

83:                                               ; preds = %74, %61
  %84 = load %struct.xfs_trans*, %struct.xfs_trans** %11, align 8
  %85 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %84)
  br label %78

86:                                               ; preds = %78, %36
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @XFS_DIOSTRAT_SPACE_RES(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_reserve_quota(%struct.xfs_trans*, %struct.xfs_mount*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bunmapi(%struct.xfs_trans*, %struct.xfs_inode*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
