; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_metadata_inode_forks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_common.c_xchk_metadata_inode_forks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4
@XFS_DIFLAG_REALTIME = common dso_local global i32 0, align 4
@XFS_SCRUB_TYPE_BMBTD = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_metadata_inode_forks(%struct.xfs_scrub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_scrub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %3, align 8
  %7 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %7, i32 0, i32 3
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %128

16:                                               ; preds = %1
  %17 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XFS_DIFLAG_REALTIME, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %28 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %29 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xchk_ino_set_corrupt(%struct.xfs_scrub* %27, i32 %32)
  store i32 0, i32* %2, align 4
  br label %128

34:                                               ; preds = %16
  %35 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = call i64 @xfs_is_reflink_inode(%struct.TYPE_10__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %42 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xchk_ino_set_corrupt(%struct.xfs_scrub* %41, i32 %46)
  store i32 0, i32* %2, align 4
  br label %128

48:                                               ; preds = %34
  %49 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %50 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i64 @xfs_inode_hasattr(%struct.TYPE_10__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %56 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %57 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @xchk_ino_set_corrupt(%struct.xfs_scrub* %55, i32 %60)
  store i32 0, i32* %2, align 4
  br label %128

62:                                               ; preds = %48
  %63 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %64 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %63, i32 0, i32 3
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @XFS_SCRUB_TYPE_BMBTD, align 4
  %69 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %70 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %69, i32 0, i32 3
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %74 = call i32 @xchk_bmap_data(%struct.xfs_scrub* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %77 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %62
  %83 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %84 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %83, i32 0, i32 3
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82, %62
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %128

93:                                               ; preds = %82
  %94 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %95 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %94, i32 0, i32 2
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = call i64 @xfs_sb_version_hasreflink(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %93
  %101 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %102 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %105 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = call i32 @xfs_reflink_inode_has_shared_extents(i32 %103, %struct.TYPE_10__* %106, i32* %5)
  store i32 %107, i32* %6, align 4
  %108 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %109 = load i32, i32* @XFS_DATA_FORK, align 4
  %110 = call i32 @xchk_fblock_process_error(%struct.xfs_scrub* %108, i32 %109, i32 0, i32* %6)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %128

114:                                              ; preds = %100
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %119 = load %struct.xfs_scrub*, %struct.xfs_scrub** %3, align 8
  %120 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @xchk_ino_set_corrupt(%struct.xfs_scrub* %118, i32 %123)
  br label %125

125:                                              ; preds = %117, %114
  br label %126

126:                                              ; preds = %125, %93
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %112, %91, %54, %40, %26, %15
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @xchk_ino_set_corrupt(%struct.xfs_scrub*, i32) #1

declare dso_local i64 @xfs_is_reflink_inode(%struct.TYPE_10__*) #1

declare dso_local i64 @xfs_inode_hasattr(%struct.TYPE_10__*) #1

declare dso_local i32 @xchk_bmap_data(%struct.xfs_scrub*) #1

declare dso_local i64 @xfs_sb_version_hasreflink(i32*) #1

declare dso_local i32 @xfs_reflink_inode_has_shared_extents(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @xchk_fblock_process_error(%struct.xfs_scrub*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
