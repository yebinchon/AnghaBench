; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_hdr_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_hdr_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_geometry = type { i32 }
%struct.xfs_attr_leafblock = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64, i32, i8*, i8*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.xfs_attr3_icleaf_hdr = type { i64, i64, i64, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.xfs_attr3_leaf_hdr = type { %struct.TYPE_10__*, i64, i32, i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i8* }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i64 0, align 8
@XFS_ATTR3_LEAF_MAGIC = common dso_local global i64 0, align 8
@XFS_ATTR_LEAF_MAPSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr3_leaf_hdr_to_disk(%struct.xfs_da_geometry* %0, %struct.xfs_attr_leafblock* %1, %struct.xfs_attr3_icleaf_hdr* %2) #0 {
  %4 = alloca %struct.xfs_da_geometry*, align 8
  %5 = alloca %struct.xfs_attr_leafblock*, align 8
  %6 = alloca %struct.xfs_attr3_icleaf_hdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_attr3_leaf_hdr*, align 8
  store %struct.xfs_da_geometry* %0, %struct.xfs_da_geometry** %4, align 8
  store %struct.xfs_attr_leafblock* %1, %struct.xfs_attr_leafblock** %5, align 8
  store %struct.xfs_attr3_icleaf_hdr* %2, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %9 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %10 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XFS_ATTR_LEAF_MAGIC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XFS_ATTR3_LEAF_MAGIC, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XFS_ATTR3_LEAF_MAGIC, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %120

29:                                               ; preds = %20
  %30 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %31 = bitcast %struct.xfs_attr_leafblock* %30 to %struct.xfs_attr3_leaf_hdr*
  store %struct.xfs_attr3_leaf_hdr* %31, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %32 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %33 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %37 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  store i8* %35, i8** %39, align 8
  %40 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %41 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %45 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @cpu_to_be16(i64 %50)
  %52 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  %56 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @cpu_to_be16(i64 %58)
  %60 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %61 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %63 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @cpu_to_be16(i64 %64)
  %66 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %67 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %69 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %70 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %71 = call i32 @xfs_attr3_leaf_firstused_to_disk(%struct.xfs_da_geometry* %68, %struct.xfs_attr_leafblock* %69, %struct.xfs_attr3_icleaf_hdr* %70)
  %72 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %73 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %76 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %78 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %116, %29
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %79
  %84 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %85 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @cpu_to_be16(i64 %91)
  %93 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %94 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  store i8* %92, i8** %99, align 8
  %100 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %101 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %100, i32 0, i32 3
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @cpu_to_be16(i64 %107)
  %109 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %110 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i8* %108, i8** %115, align 8
  br label %116

116:                                              ; preds = %83
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %7, align 4
  br label %79

119:                                              ; preds = %79
  br label %214

120:                                              ; preds = %20
  %121 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %122 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @cpu_to_be32(i32 %123)
  %125 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %126 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  store i8* %124, i8** %128, align 8
  %129 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %130 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cpu_to_be32(i32 %131)
  %133 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %134 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  store i8* %132, i8** %136, align 8
  %137 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %138 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @cpu_to_be16(i64 %139)
  %141 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %142 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i8* %140, i8** %144, align 8
  %145 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %146 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @cpu_to_be16(i64 %147)
  %149 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %150 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 4
  store i8* %148, i8** %151, align 8
  %152 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %153 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @cpu_to_be16(i64 %154)
  %156 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %157 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  store i8* %155, i8** %158, align 8
  %159 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %160 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %161 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %162 = call i32 @xfs_attr3_leaf_firstused_to_disk(%struct.xfs_da_geometry* %159, %struct.xfs_attr_leafblock* %160, %struct.xfs_attr3_icleaf_hdr* %161)
  %163 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %164 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %167 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  store i32 %165, i32* %168, align 8
  %169 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %170 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  store i64 0, i64* %171, align 8
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %211, %120
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %214

176:                                              ; preds = %172
  %177 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %178 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %177, i32 0, i32 3
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @cpu_to_be16(i64 %184)
  %186 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %187 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  store i8* %185, i8** %193, align 8
  %194 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %6, align 8
  %195 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %194, i32 0, i32 3
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = call i8* @cpu_to_be16(i64 %201)
  %203 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %204 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i8* %202, i8** %210, align 8
  br label %211

211:                                              ; preds = %176
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %7, align 4
  br label %172

214:                                              ; preds = %119, %172
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i64) #1

declare dso_local i32 @xfs_attr3_leaf_firstused_to_disk(%struct.xfs_da_geometry*, %struct.xfs_attr_leafblock*, %struct.xfs_attr3_icleaf_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
