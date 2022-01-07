; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iflush.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, %struct.TYPE_2__, %struct.xfs_mount* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.xfs_mount = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_dinode = type { i32 }

@xs_iflush_count = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_ISTALE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XBF_TRYLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SHUTDOWN_CORRUPT_INCORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iflush(%struct.xfs_inode* %0, %struct.xfs_buf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_buf**, align 8
  %6 = alloca %struct.xfs_mount*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca %struct.xfs_dinode*, align 8
  %9 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_buf** %1, %struct.xfs_buf*** %5, align 8
  %10 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %10, i32 0, i32 2
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %6, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %7, align 8
  %13 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %14 = load i32, i32* @xs_iflush_count, align 4
  %15 = call i32 @XFS_STATS_INC(%struct.xfs_mount* %13, i32 %14)
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %17 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %18 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @xfs_isilocked(%struct.xfs_inode* %16, i32 %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %23 = call i32 @xfs_isiflocked(%struct.xfs_inode* %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %2
  %32 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %37 = load i32, i32* @XFS_DATA_FORK, align 4
  %38 = call i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode* %36, i32 %37)
  %39 = icmp sgt i64 %35, %38
  br label %40

40:                                               ; preds = %31, %2
  %41 = phi i1 [ true, %2 ], [ %39, %31 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.xfs_buf**, %struct.xfs_buf*** %5, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %44, align 8
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %46 = call i32 @xfs_iunpin_wait(%struct.xfs_inode* %45)
  %47 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %48 = load i32, i32* @XFS_ISTALE, align 4
  %49 = call i64 @xfs_iflags_test(%struct.xfs_inode* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %53 = call i32 @xfs_ifunlock(%struct.xfs_inode* %52)
  store i32 0, i32* %3, align 4
  br label %118

54:                                               ; preds = %40
  %55 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %56 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %9, align 4
  br label %114

61:                                               ; preds = %54
  %62 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %63 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %64 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %63, i32 0, i32 0
  %65 = load i32, i32* @XBF_TRYLOCK, align 4
  %66 = call i32 @xfs_imap_to_bp(%struct.xfs_mount* %62, i32* null, i32* %64, %struct.xfs_dinode** %8, %struct.xfs_buf** %7, i32 %65, i32 0)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %73 = call i32 @xfs_ifunlock(%struct.xfs_inode* %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %3, align 4
  br label %118

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %104

79:                                               ; preds = %75
  %80 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %82 = call i32 @xfs_iflush_int(%struct.xfs_inode* %80, %struct.xfs_buf* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %104

86:                                               ; preds = %79
  %87 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %88 = call i64 @xfs_buf_ispinned(%struct.xfs_buf* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %92 = call i32 @xfs_log_force(%struct.xfs_mount* %91, i32 0)
  br label %93

93:                                               ; preds = %90, %86
  %94 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %95 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %96 = call i32 @xfs_iflush_cluster(%struct.xfs_inode* %94, %struct.xfs_buf* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %118

101:                                              ; preds = %93
  %102 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %103 = load %struct.xfs_buf**, %struct.xfs_buf*** %5, align 8
  store %struct.xfs_buf* %102, %struct.xfs_buf** %103, align 8
  store i32 0, i32* %3, align 4
  br label %118

104:                                              ; preds = %85, %78
  %105 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %106 = icmp ne %struct.xfs_buf* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %109 = call i32 @xfs_buf_relse(%struct.xfs_buf* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.xfs_mount*, %struct.xfs_mount** %6, align 8
  %112 = load i32, i32* @SHUTDOWN_CORRUPT_INCORE, align 4
  %113 = call i32 @xfs_force_shutdown(%struct.xfs_mount* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %58
  %115 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %116 = call i32 @xfs_iflush_abort(%struct.xfs_inode* %115, i32 0)
  %117 = load i32, i32* %9, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %101, %99, %71, %51
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @XFS_STATS_INC(%struct.xfs_mount*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_isiflocked(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_IFORK_MAXEXT(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iunpin_wait(%struct.xfs_inode*) #1

declare dso_local i64 @xfs_iflags_test(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_ifunlock(%struct.xfs_inode*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_imap_to_bp(%struct.xfs_mount*, i32*, i32*, %struct.xfs_dinode**, %struct.xfs_buf**, i32, i32) #1

declare dso_local i32 @xfs_iflush_int(%struct.xfs_inode*, %struct.xfs_buf*) #1

declare dso_local i64 @xfs_buf_ispinned(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_log_force(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_iflush_cluster(%struct.xfs_inode*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_force_shutdown(%struct.xfs_mount*, i32) #1

declare dso_local i32 @xfs_iflush_abort(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
