; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_seek_iomap_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_iomap.c_xfs_seek_iomap_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32 }
%struct.xfs_inode = type { %struct.TYPE_4__*, %struct.TYPE_4__, %struct.xfs_mount* }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_mount = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.xfs_iext_cursor = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64, i32, i32 }

@NULLFILEOFF = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@IOMAP_UNWRITTEN = common dso_local global i32 0, align 4
@HOLESTARTBLOCK = common dso_local global i32 0, align 4
@XFS_EXT_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, i32, %struct.iomap*)* @xfs_seek_iomap_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_seek_iomap_begin(%struct.inode* %0, i64 %1, i64 %2, i32 %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.xfs_inode*, align 8
  %13 = alloca %struct.xfs_mount*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.xfs_iext_cursor, align 4
  %19 = alloca %struct.xfs_bmbt_irec, align 8
  %20 = alloca %struct.xfs_bmbt_irec, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call %struct.xfs_inode* @XFS_I(%struct.inode* %23)
  store %struct.xfs_inode* %24, %struct.xfs_inode** %12, align 8
  %25 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %26 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %25, i32 0, i32 2
  %27 = load %struct.xfs_mount*, %struct.xfs_mount** %26, align 8
  store %struct.xfs_mount* %27, %struct.xfs_mount** %13, align 8
  %28 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @XFS_B_TO_FSBT(%struct.xfs_mount* %28, i64 %29)
  store i64 %30, i64* %14, align 8
  %31 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %31, i64 %34)
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* @NULLFILEOFF, align 8
  store i64 %36, i64* %16, align 8
  %37 = load i64, i64* @NULLFILEOFF, align 8
  store i64 %37, i64* %17, align 8
  store i32 0, i32* %21, align 4
  %38 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %39 = call i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %173

44:                                               ; preds = %5
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %46 = call i32 @xfs_ilock_data_map_shared(%struct.xfs_inode* %45)
  store i32 %46, i32* %22, align 4
  %47 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %48 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XFS_IFEXTENTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %44
  %55 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %56 = load i32, i32* @XFS_DATA_FORK, align 4
  %57 = call i32 @xfs_iread_extents(i32* null, %struct.xfs_inode* %55, i32 %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %168

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %64 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %65 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %64, i32 0, i32 1
  %66 = load i64, i64* %14, align 8
  %67 = call i64 @xfs_iext_lookup_extent(%struct.xfs_inode* %63, %struct.TYPE_4__* %65, i64 %66, %struct.xfs_iext_cursor* %18, %struct.xfs_bmbt_irec* %19)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %14, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %161

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %17, align 8
  br label %92

78:                                               ; preds = %62
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %79, i64 %82)
  %84 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %85 = load %struct.xfs_mount*, %struct.xfs_mount** %13, align 8
  %86 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @XFS_B_TO_FSB(%struct.xfs_mount* %84, i64 %89)
  %91 = call i64 @min(i64 %83, i64 %90)
  store i64 %91, i64* %17, align 8
  br label %92

92:                                               ; preds = %78, %75
  %93 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %94 = call i64 @xfs_inode_has_cow_data(%struct.xfs_inode* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %98 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %99 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %14, align 8
  %102 = call i64 @xfs_iext_lookup_extent(%struct.xfs_inode* %97, %struct.TYPE_4__* %100, i64 %101, %struct.xfs_iext_cursor* %18, %struct.xfs_bmbt_irec* %20)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %20, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %16, align 8
  br label %107

107:                                              ; preds = %104, %96, %92
  %108 = load i64, i64* %16, align 8
  %109 = load i64, i64* @NULLFILEOFF, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %107
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp sle i64 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %111
  %116 = load i64, i64* %17, align 8
  %117 = load i64, i64* %16, align 8
  %118 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %20, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %117, %119
  %121 = icmp slt i64 %116, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = load i64, i64* %15, align 8
  %124 = load i64, i64* %17, align 8
  %125 = call i64 @min(i64 %123, i64 %124)
  store i64 %125, i64* %15, align 8
  br label %126

126:                                              ; preds = %122, %115
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %20, i64 %127, i64 %128)
  %130 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %131 = load %struct.iomap*, %struct.iomap** %11, align 8
  %132 = call i32 @xfs_bmbt_to_iomap(%struct.xfs_inode* %130, %struct.iomap* %131, %struct.xfs_bmbt_irec* %20, i32 1)
  store i32 %132, i32* %21, align 4
  %133 = load i32, i32* @IOMAP_UNWRITTEN, align 4
  %134 = load %struct.iomap*, %struct.iomap** %11, align 8
  %135 = getelementptr inbounds %struct.iomap, %struct.iomap* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  br label %168

136:                                              ; preds = %111, %107
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* @NULLFILEOFF, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %17, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %14, align 8
  %147 = sub nsw i64 %145, %146
  %148 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 1
  store i64 %147, i64* %148, align 8
  br label %154

149:                                              ; preds = %140, %136
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %14, align 8
  %152 = sub nsw i64 %150, %151
  %153 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  br label %154

154:                                              ; preds = %149, %144
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 0
  store i64 %155, i64* %156, align 8
  %157 = load i32, i32* @HOLESTARTBLOCK, align 4
  %158 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 3
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* @XFS_EXT_NORM, align 4
  %160 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 2
  store i32 %159, i32* %160, align 8
  br label %161

161:                                              ; preds = %154, %74
  %162 = load i64, i64* %14, align 8
  %163 = load i64, i64* %15, align 8
  %164 = call i32 @xfs_trim_extent(%struct.xfs_bmbt_irec* %19, i64 %162, i64 %163)
  %165 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %166 = load %struct.iomap*, %struct.iomap** %11, align 8
  %167 = call i32 @xfs_bmbt_to_iomap(%struct.xfs_inode* %165, %struct.iomap* %166, %struct.xfs_bmbt_irec* %19, i32 0)
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %161, %126, %60
  %169 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %170 = load i32, i32* %22, align 4
  %171 = call i32 @xfs_iunlock(%struct.xfs_inode* %169, i32 %170)
  %172 = load i32, i32* %21, align 4
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %168, %41
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i64 @XFS_B_TO_FSBT(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_B_TO_FSB(%struct.xfs_mount*, i64) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_ilock_data_map_shared(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_iread_extents(i32*, %struct.xfs_inode*, i32) #1

declare dso_local i64 @xfs_iext_lookup_extent(%struct.xfs_inode*, %struct.TYPE_4__*, i64, %struct.xfs_iext_cursor*, %struct.xfs_bmbt_irec*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @xfs_inode_has_cow_data(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_trim_extent(%struct.xfs_bmbt_irec*, i64, i64) #1

declare dso_local i32 @xfs_bmbt_to_iomap(%struct.xfs_inode*, %struct.iomap*, %struct.xfs_bmbt_irec*, i32) #1

declare dso_local i32 @xfs_iunlock(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
