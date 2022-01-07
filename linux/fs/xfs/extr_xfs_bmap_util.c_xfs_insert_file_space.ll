; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_insert_file_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_insert_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_trans = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NULLFSBLOCK = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_insert_file_space(%struct.xfs_inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca %struct.xfs_trans*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %15, i32 0, i32 0
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  store %struct.xfs_mount* %17, %struct.xfs_mount** %8, align 8
  %18 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @XFS_B_TO_FSB(%struct.xfs_mount* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @NULLFSBLOCK, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @XFS_B_TO_FSB(%struct.xfs_mount* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %26 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %27 = call i32 @xfs_isilocked(%struct.xfs_inode* %25, i32 %26)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %30 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %31 = call i32 @xfs_isilocked(%struct.xfs_inode* %29, i32 %30)
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %34 = call i32 @trace_xfs_insert_file_space(%struct.xfs_inode* %33)
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @xfs_bmap_can_insert_extents(%struct.xfs_inode* %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %103

43:                                               ; preds = %3
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @xfs_prepare_shift(%struct.xfs_inode* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %103

51:                                               ; preds = %43
  %52 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @xfs_bmap_split_extent(%struct.xfs_inode* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %103

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %94, %59
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i1 [ false, %60 ], [ %66, %63 ]
  br i1 %68, label %69, label %97

69:                                               ; preds = %67
  %70 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %71 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %72 = call %struct.TYPE_2__* @M_RES(%struct.xfs_mount* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = call i32 @xfs_trans_alloc(%struct.xfs_mount* %70, i32* %73, i32 0, i32 0, i32 0, %struct.xfs_trans** %9)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %80 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %81 = call i32 @xfs_ilock(%struct.xfs_inode* %79, i32 %80)
  %82 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %83 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %84 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %85 = call i32 @xfs_trans_ijoin(%struct.xfs_trans* %82, %struct.xfs_inode* %83, i32 %84)
  %86 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %87 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @xfs_bmap_insert_extents(%struct.xfs_trans* %86, %struct.xfs_inode* %87, i32* %12, i32 %88, i32* %14, i32 %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %99

94:                                               ; preds = %78
  %95 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %96 = call i32 @xfs_trans_commit(%struct.xfs_trans* %95)
  store i32 %96, i32* %10, align 4
  br label %60

97:                                               ; preds = %77, %67
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %4, align 4
  br label %103

99:                                               ; preds = %93
  %100 = load %struct.xfs_trans*, %struct.xfs_trans** %9, align 8
  %101 = call i32 @xfs_trans_cancel(%struct.xfs_trans* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %97, %57, %49, %41
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @XFS_B_TO_FSB(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @trace_xfs_insert_file_space(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_bmap_can_insert_extents(%struct.xfs_inode*, i32, i32) #1

declare dso_local i32 @xfs_prepare_shift(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmap_split_extent(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_alloc(%struct.xfs_mount*, i32*, i32, i32, i32, %struct.xfs_trans**) #1

declare dso_local %struct.TYPE_2__* @M_RES(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_trans_ijoin(%struct.xfs_trans*, %struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmap_insert_extents(%struct.xfs_trans*, %struct.xfs_inode*, i32*, i32, i32*, i32) #1

declare dso_local i32 @xfs_trans_commit(%struct.xfs_trans*) #1

declare dso_local i32 @xfs_trans_cancel(%struct.xfs_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
