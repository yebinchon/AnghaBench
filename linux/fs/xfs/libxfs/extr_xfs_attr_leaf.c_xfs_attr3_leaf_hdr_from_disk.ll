; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_hdr_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_hdr_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_geometry = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { %struct.TYPE_12__*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.xfs_attr_leafblock = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__*, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i32, i32 }
%struct.xfs_attr3_leaf_hdr = type { i64, i64, %struct.TYPE_10__*, i32, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }

@XFS_ATTR_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_ATTR3_LEAF_MAGIC = common dso_local global i32 0, align 4
@XFS_ATTR_LEAF_MAPSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr3_leaf_hdr_from_disk(%struct.xfs_da_geometry* %0, %struct.xfs_attr3_icleaf_hdr* %1, %struct.xfs_attr_leafblock* %2) #0 {
  %4 = alloca %struct.xfs_da_geometry*, align 8
  %5 = alloca %struct.xfs_attr3_icleaf_hdr*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_attr3_leaf_hdr*, align 8
  store %struct.xfs_da_geometry* %0, %struct.xfs_da_geometry** %4, align 8
  store %struct.xfs_attr3_icleaf_hdr* %1, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  store %struct.xfs_attr_leafblock* %2, %struct.xfs_attr_leafblock** %6, align 8
  %9 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %10 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @XFS_ATTR_LEAF_MAGIC, align 4
  %15 = call i64 @cpu_to_be16(i32 %14)
  %16 = icmp eq i64 %13, %15
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @XFS_ATTR3_LEAF_MAGIC, align 4
  %24 = call i64 @cpu_to_be16(i32 %23)
  %25 = icmp eq i64 %22, %24
  br label %26

26:                                               ; preds = %17, %3
  %27 = phi i1 [ true, %3 ], [ %25, %17 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %31 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @XFS_ATTR3_LEAF_MAGIC, align 4
  %36 = call i64 @cpu_to_be16(i32 %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %127

38:                                               ; preds = %26
  %39 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %40 = bitcast %struct.xfs_attr_leafblock* %39 to %struct.xfs_attr3_leaf_hdr*
  store %struct.xfs_attr3_leaf_hdr* %40, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %41 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %42 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @be32_to_cpu(i32 %45)
  %47 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @be32_to_cpu(i32 %53)
  %55 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %56 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %55, i32 0, i32 5
  store i8* %54, i8** %56, align 8
  %57 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %58 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @be16_to_cpu(i64 %61)
  %63 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %66 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i8* @be16_to_cpu(i64 %67)
  %69 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %70 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %72 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @be16_to_cpu(i64 %73)
  %75 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %76 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %78 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %79 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %80 = call i32 @xfs_attr3_leaf_firstused_from_disk(%struct.xfs_da_geometry* %77, %struct.xfs_attr3_icleaf_hdr* %78, %struct.xfs_attr_leafblock* %79)
  %81 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %82 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %85 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %123, %38
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %86
  %91 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %92 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @be16_to_cpu(i64 %98)
  %100 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %101 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i8* %99, i8** %106, align 8
  %107 = load %struct.xfs_attr3_leaf_hdr*, %struct.xfs_attr3_leaf_hdr** %8, align 8
  %108 = getelementptr inbounds %struct.xfs_attr3_leaf_hdr, %struct.xfs_attr3_leaf_hdr* %107, i32 0, i32 2
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @be16_to_cpu(i64 %114)
  %116 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %117 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i8* %115, i8** %122, align 8
  br label %123

123:                                              ; preds = %90
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %86

126:                                              ; preds = %86
  br label %218

127:                                              ; preds = %26
  %128 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %129 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @be32_to_cpu(i32 %132)
  %134 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %135 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %134, i32 0, i32 6
  store i8* %133, i8** %135, align 8
  %136 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %137 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @be32_to_cpu(i32 %140)
  %142 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %143 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %145 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i8* @be16_to_cpu(i64 %148)
  %150 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %151 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %153 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @be16_to_cpu(i64 %155)
  %157 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %158 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %160 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @be16_to_cpu(i64 %162)
  %164 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %165 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load %struct.xfs_da_geometry*, %struct.xfs_da_geometry** %4, align 8
  %167 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %168 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %169 = call i32 @xfs_attr3_leaf_firstused_from_disk(%struct.xfs_da_geometry* %166, %struct.xfs_attr3_icleaf_hdr* %167, %struct.xfs_attr_leafblock* %168)
  %170 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %171 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %175 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %215, %127
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @XFS_ATTR_LEAF_MAPSIZE, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %218

180:                                              ; preds = %176
  %181 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %182 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i8* @be16_to_cpu(i64 %189)
  %191 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %192 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %191, i32 0, i32 0
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i8* %190, i8** %197, align 8
  %198 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %199 = getelementptr inbounds %struct.xfs_attr_leafblock, %struct.xfs_attr_leafblock* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @be16_to_cpu(i64 %206)
  %208 = load %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr3_icleaf_hdr** %5, align 8
  %209 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %208, i32 0, i32 0
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  store i8* %207, i8** %214, align 8
  br label %215

215:                                              ; preds = %180
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %176

218:                                              ; preds = %126, %176
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i64) #1

declare dso_local i32 @xfs_attr3_leaf_firstused_from_disk(%struct.xfs_da_geometry*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
