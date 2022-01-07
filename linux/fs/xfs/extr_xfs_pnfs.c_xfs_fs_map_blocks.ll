; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_fs_map_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_pnfs.c_xfs_fs_map_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.iomap = type { i32 }
%struct.xfs_inode = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_bmbt_irec = type { i64 }

@XFS_BMAPI_ENTIRE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@HOLESTARTBLOCK = common dso_local global i64 0, align 8
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_PREALLOC_SET = common dso_local global i32 0, align 4
@XFS_PREALLOC_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fs_map_blocks(%struct.inode* %0, i64 %1, i64 %2, %struct.iomap* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.xfs_inode*, align 8
  %15 = alloca %struct.xfs_mount*, align 8
  %16 = alloca %struct.xfs_bmbt_irec, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.iomap* %3, %struct.iomap** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.xfs_inode* @XFS_I(%struct.inode* %25)
  store %struct.xfs_inode* %26, %struct.xfs_inode** %14, align 8
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 0
  %29 = load %struct.xfs_mount*, %struct.xfs_mount** %28, align 8
  store %struct.xfs_mount* %29, %struct.xfs_mount** %15, align 8
  %30 = load i32, i32* @XFS_BMAPI_ENTIRE, align 4
  store i32 %30, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  %32 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %192

37:                                               ; preds = %6
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %39 = call i64 @XFS_IS_REALTIME_INODE(%struct.xfs_inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %192

44:                                               ; preds = %37
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %46 = call i64 @xfs_is_reflink_inode(%struct.xfs_inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %192

51:                                               ; preds = %44
  %52 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %53 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %54 = call i32 @xfs_ilock(%struct.xfs_inode* %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %23, align 4
  %57 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  %58 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %19, align 8
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %51
  %65 = load i64, i64* %19, align 8
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = call i32 @i_size_read(%struct.inode* %66)
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @round_up(i32 %67, i32 %72)
  %74 = call i64 @max(i64 %65, i32 %73)
  store i64 %74, i64* %19, align 8
  br label %75

75:                                               ; preds = %64, %51
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %19, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %187

80:                                               ; preds = %75
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %19, align 8
  %83 = load i64, i64* %10, align 8
  %84 = sub nsw i64 %82, %83
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub nsw i64 %87, %88
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @filemap_write_and_wait(i32 %93)
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %23, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %187

98:                                               ; preds = %90
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @invalidate_inode_pages2(i32 %101)
  store i32 %102, i32* %23, align 4
  %103 = load i32, i32* %23, align 4
  %104 = call i64 @WARN_ON_ONCE(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98
  %107 = load i32, i32* %23, align 4
  store i32 %107, i32* %7, align 4
  br label %192

108:                                              ; preds = %98
  %109 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %10, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %109, i64 %112)
  store i64 %113, i64* %18, align 8
  %114 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %114, i64 %115)
  store i64 %116, i64* %17, align 8
  %117 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %118 = call i32 @xfs_ilock_data_map_shared(%struct.xfs_inode* %117)
  store i32 %118, i32* %22, align 4
  %119 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* %17, align 8
  %123 = sub nsw i64 %121, %122
  %124 = load i32, i32* %20, align 4
  %125 = call i32 @xfs_bmapi_read(%struct.xfs_inode* %119, i64 %120, i64 %123, %struct.xfs_bmbt_irec* %16, i32* %21, i32 %124)
  store i32 %125, i32* %23, align 4
  %126 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @xfs_iunlock(%struct.xfs_inode* %126, i32 %127)
  %129 = load i32, i32* %23, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %108
  br label %187

132:                                              ; preds = %108
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %175

135:                                              ; preds = %132
  store i32 0, i32* %24, align 4
  %136 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %16, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %139 = icmp ne i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @ASSERT(i32 %140)
  %142 = load i32, i32* %21, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %16, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @HOLESTARTBLOCK, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %144, %135
  %150 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %151 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %152 = call i32 @xfs_ilock(%struct.xfs_inode* %150, i32 %151)
  %153 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load i32, i32* %21, align 4
  %157 = call i32 @xfs_iomap_write_direct(%struct.xfs_inode* %153, i64 %154, i64 %155, %struct.xfs_bmbt_irec* %16, i32 %156)
  store i32 %157, i32* %23, align 4
  %158 = load i32, i32* %23, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  br label %187

161:                                              ; preds = %149
  %162 = load i32, i32* @XFS_PREALLOC_SET, align 4
  %163 = load i32, i32* @XFS_PREALLOC_SYNC, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %24, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %24, align 4
  br label %167

167:                                              ; preds = %161, %144
  %168 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %169 = load i32, i32* %24, align 4
  %170 = call i32 @xfs_update_prealloc_flags(%struct.xfs_inode* %168, i32 %169)
  store i32 %170, i32* %23, align 4
  %171 = load i32, i32* %23, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %187

174:                                              ; preds = %167
  br label %175

175:                                              ; preds = %174, %132
  %176 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %177 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %178 = call i32 @xfs_iunlock(%struct.xfs_inode* %176, i32 %177)
  %179 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %180 = load %struct.iomap*, %struct.iomap** %11, align 8
  %181 = call i32 @xfs_bmbt_to_iomap(%struct.xfs_inode* %179, %struct.iomap* %180, %struct.xfs_bmbt_irec* %16, i32 0)
  store i32 %181, i32* %23, align 4
  %182 = load %struct.xfs_mount*, %struct.xfs_mount** %15, align 8
  %183 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32*, i32** %13, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* %23, align 4
  store i32 %186, i32* %7, align 4
  br label %192

187:                                              ; preds = %173, %160, %131, %97, %79
  %188 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %189 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %190 = call i32 @xfs_iunlock(%struct.xfs_inode* %188, i32 %189)
  %191 = load i32, i32* %23, align 4
  store i32 %191, i32* %7, align 4
  br label %192

192:                                              ; preds = %187, %175, %106, %48, %41, %34
  %193 = load i32, i32* %7, align 4
  ret i32 %193
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_IS_REALTIME_INODE(%struct.xfs_inode*) #1

declare dso_local i64 @xfs_is_reflink_inode(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_ilock(%struct.xfs_inode*, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.xfs_mount*, i64) #1

declare dso_local i32 @xfs_ilock_data_map_shared(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_bmapi_read(%struct.xfs_inode*, i64, i64, %struct.xfs_bmbt_irec*, i32*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_iomap_write_direct(%struct.xfs_inode*, i64, i64, %struct.xfs_bmbt_irec*, i32) #1

declare dso_local i32 @xfs_update_prealloc_flags(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmbt_to_iomap(%struct.xfs_inode*, %struct.iomap*, %struct.xfs_bmbt_irec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
