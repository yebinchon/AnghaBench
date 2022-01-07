; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_symlink.c_xchk_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_symlink.c_xchk_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_ifork = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_SYMLINK_MAXLEN = common dso_local global i64 0, align 8
@XFS_IFINLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_symlink(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_ifork*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %8 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %8, i32 0, i32 1
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  store %struct.xfs_inode* %10, %struct.xfs_inode** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = call %struct.TYPE_6__* @VFS_I(%struct.xfs_inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @S_ISLNK(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %93

20:                                               ; preds = %1
  %21 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %22 = load i32, i32* @XFS_DATA_FORK, align 4
  %23 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode* %21, i32 %22)
  store %struct.xfs_ifork* %23, %struct.xfs_ifork** %5, align 8
  %24 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @XFS_SYMLINK_MAXLEN, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i64, i64* %6, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %20
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %36 = load i32, i32* @XFS_DATA_FORK, align 4
  %37 = call i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub* %35, i32 %36, i32 0)
  br label %91

38:                                               ; preds = %31
  %39 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XFS_IFINLINE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %48 = call i64 @XFS_IFORK_DSIZE(%struct.xfs_inode* %47)
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.xfs_ifork*, %struct.xfs_ifork** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %57 = call i64 @XFS_IFORK_DSIZE(%struct.xfs_inode* %56)
  %58 = call i64 @strnlen(i32 %55, i64 %57)
  %59 = icmp sgt i64 %51, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %50, %45
  %61 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %62 = load i32, i32* @XFS_DATA_FORK, align 4
  %63 = call i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %50
  br label %91

65:                                               ; preds = %38
  %66 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %67 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %66, i32 0, i32 1
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %67, align 8
  %69 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %70 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @xfs_readlink_bmap_ilocked(%struct.xfs_inode* %68, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %74 = load i32, i32* @XFS_DATA_FORK, align 4
  %75 = call i32 @xchk_fblock_process_error(%struct.xfs_scrub* %73, i32 %74, i32 0, i32* %7)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  br label %91

78:                                               ; preds = %65
  %79 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %80 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* @XFS_SYMLINK_MAXLEN, align 8
  %83 = call i64 @strnlen(i32 %81, i64 %82)
  %84 = load i64, i64* %6, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %88 = load i32, i32* @XFS_DATA_FORK, align 4
  %89 = call i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub* %87, i32 %88, i32 0)
  br label %90

90:                                               ; preds = %86, %78
  br label %91

91:                                               ; preds = %90, %77, %64, %34
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %17
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local %struct.TYPE_6__* @VFS_I(%struct.xfs_inode*) #1

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xchk_fblock_set_corrupt(%struct.xfs_scrub*, i32, i32) #1

declare dso_local i64 @XFS_IFORK_DSIZE(%struct.xfs_inode*) #1

declare dso_local i64 @strnlen(i32, i64) #1

declare dso_local i32 @xfs_readlink_bmap_ilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xchk_fblock_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
