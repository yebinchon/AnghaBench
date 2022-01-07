; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_dabtree.c_xchk_da_btree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/scrub/extr_dabtree.c_xchk_da_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_scrub = type { i32, %struct.TYPE_10__*, i32, %struct.xfs_mount* }
%struct.TYPE_10__ = type { i32 }
%struct.xfs_mount = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.xchk_da_btree = type opaque
%struct.xchk_da_btree.0 = type { i64*, %struct.TYPE_11__*, i32, i64, %struct.TYPE_8__, i64, i8*, %struct.xfs_scrub* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.xfs_mount*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.xfs_da_state_blk* }
%struct.xfs_da_state_blk = type { i64, i64, i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.xfs_da_node_entry = type { i32, i32 }

@XFS_DINODE_FMT_EXTENTS = common dso_local global i64 0, align 8
@XFS_DINODE_FMT_BTREE = common dso_local global i64 0, align 8
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4
@XFS_DA_NODE_MAXDEPTH = common dso_local global i32 0, align 4
@XFS_DA_NODE_MAGIC = common dso_local global i64 0, align 8
@XFS_SCRUB_OFLAG_CORRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xchk_da_btree(%struct.xfs_scrub* %0, i32 %1, i32 (%struct.xchk_da_btree*, i32, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_scrub*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.xchk_da_btree*, i32, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xchk_da_btree.0, align 8
  %11 = alloca %struct.xfs_mount*, align 8
  %12 = alloca %struct.xfs_da_state_blk*, align 8
  %13 = alloca %struct.xfs_da_node_entry*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.xfs_scrub* %0, %struct.xfs_scrub** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (%struct.xchk_da_btree*, i32, i8*)* %2, i32 (%struct.xchk_da_btree*, i32, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %18 = bitcast %struct.xchk_da_btree.0* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 88, i1 false)
  %19 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %20 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %19, i32 0, i32 3
  %21 = load %struct.xfs_mount*, %struct.xfs_mount** %20, align 8
  store %struct.xfs_mount* %21, %struct.xfs_mount** %11, align 8
  %22 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %23 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @XFS_IFORK_FORMAT(i32 %24, i32 %25)
  %27 = load i64, i64* @XFS_DINODE_FMT_EXTENTS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %4
  %30 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %31 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @XFS_IFORK_FORMAT(i32 %32, i32 %33)
  %35 = load i64, i64* @XFS_DINODE_FMT_BTREE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %344

38:                                               ; preds = %29, %4
  %39 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %40 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %48 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %53 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = call %struct.TYPE_11__* (...) @xfs_da_state_alloc()
  %56 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 1
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %56, align 8
  %57 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %58 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %60, align 8
  %61 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %62 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 1
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  store %struct.xfs_mount* %61, %struct.xfs_mount** %64, align 8
  %65 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %66 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 7
  store %struct.xfs_scrub* %65, %struct.xfs_scrub** %66, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 6
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @XFS_ATTR_FORK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %38
  %73 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %74 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %77, align 8
  %78 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 5
  store i64 0, i64* %79, align 8
  br label %98

80:                                               ; preds = %38
  %81 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  %82 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %85, align 8
  %86 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 3
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 5
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %80, %72
  %99 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %101 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 1
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %104, align 8
  store %struct.xfs_da_state_blk* %105, %struct.xfs_da_state_blk** %12, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @xchk_da_btree_block(%struct.xchk_da_btree.0* %10, i32 %106, i64 %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %339

112:                                              ; preds = %98
  %113 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %113, i64 %115
  %117 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = icmp eq i32* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %339

121:                                              ; preds = %112
  %122 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %122, i64 %124
  %126 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %298, %242, %208, %171, %121
  %128 = load i32, i32* %16, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* @XFS_DA_NODE_MAXDEPTH, align 4
  %133 = icmp slt i32 %131, %132
  br label %134

134:                                              ; preds = %130, %127
  %135 = phi i1 [ false, %127 ], [ %133, %130 ]
  br i1 %135, label %136, label %304

136:                                              ; preds = %134
  %137 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %137, i64 %139
  %141 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @XFS_DA_NODE_MAGIC, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %216

145:                                              ; preds = %136
  %146 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %146, i64 %148
  %150 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %151, %157
  br i1 %158, label %159, label %177

159:                                              ; preds = %145
  %160 = load i32, i32* %16, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %163, i64 %166
  %168 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %168, align 8
  br label %171

171:                                              ; preds = %162, %159
  %172 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* %16, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %16, align 4
  br label %127

177:                                              ; preds = %145
  %178 = load i32, i32* %16, align 4
  %179 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %179, i64 %181
  %183 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i8* @xchk_da_btree_entry(%struct.xchk_da_btree.0* %10, i32 %178, i64 %184)
  store i8* %185, i8** %14, align 8
  %186 = load i32 (%struct.xchk_da_btree*, i32, i8*)*, i32 (%struct.xchk_da_btree*, i32, i8*)** %8, align 8
  %187 = bitcast %struct.xchk_da_btree.0* %10 to %struct.xchk_da_btree*
  %188 = load i32, i32* %16, align 4
  %189 = load i8*, i8** %14, align 8
  %190 = call i32 %186(%struct.xchk_da_btree* %187, i32 %188, i8* %189)
  store i32 %190, i32* %17, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %177
  br label %304

194:                                              ; preds = %177
  %195 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %196 = call i64 @xchk_should_terminate(%struct.xfs_scrub* %195, i32* %17)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %194
  %199 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %200 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %199, i32 0, i32 1
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @XFS_SCRUB_OFLAG_CORRUPT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %198, %194
  br label %304

208:                                              ; preds = %198
  %209 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %209, i64 %211
  %213 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %213, align 8
  br label %127

216:                                              ; preds = %136
  %217 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %217, i64 %219
  %221 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = icmp sge i64 %222, %228
  br i1 %229, label %230, label %248

230:                                              ; preds = %216
  %231 = load i32, i32* %16, align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %230
  %234 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %235 = load i32, i32* %16, align 4
  %236 = sub nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %234, i64 %237
  %239 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %239, align 8
  br label %242

242:                                              ; preds = %233, %230
  %243 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %16, align 4
  br label %127

248:                                              ; preds = %216
  %249 = load i32, i32* %16, align 4
  %250 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %250, i64 %252
  %254 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i8* @xchk_da_btree_entry(%struct.xchk_da_btree.0* %10, i32 %249, i64 %255)
  %257 = bitcast i8* %256 to %struct.xfs_da_node_entry*
  store %struct.xfs_da_node_entry* %257, %struct.xfs_da_node_entry** %13, align 8
  %258 = load i32, i32* %16, align 4
  %259 = load %struct.xfs_da_node_entry*, %struct.xfs_da_node_entry** %13, align 8
  %260 = getelementptr inbounds %struct.xfs_da_node_entry, %struct.xfs_da_node_entry* %259, i32 0, i32 1
  %261 = call i32 @xchk_da_btree_hash(%struct.xchk_da_btree.0* %10, i32 %258, i32* %260)
  store i32 %261, i32* %17, align 4
  %262 = load i32, i32* %17, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %248
  br label %305

265:                                              ; preds = %248
  %266 = load %struct.xfs_da_node_entry*, %struct.xfs_da_node_entry** %13, align 8
  %267 = getelementptr inbounds %struct.xfs_da_node_entry, %struct.xfs_da_node_entry* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i64 @be32_to_cpu(i32 %268)
  store i64 %269, i64* %15, align 8
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %16, align 4
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* @XFS_DA_NODE_MAXDEPTH, align 4
  %274 = icmp sge i32 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %265
  %276 = load i32, i32* %16, align 4
  %277 = sub nsw i32 %276, 1
  %278 = call i32 @xchk_da_set_corrupt(%struct.xchk_da_btree.0* %10, i32 %277)
  br label %304

279:                                              ; preds = %265
  %280 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %280, align 8
  %283 = load i32, i32* %16, align 4
  %284 = load i64, i64* %15, align 8
  %285 = call i32 @xchk_da_btree_block(%struct.xchk_da_btree.0* %10, i32 %283, i64 %284)
  store i32 %285, i32* %17, align 4
  %286 = load i32, i32* %17, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %279
  br label %305

289:                                              ; preds = %279
  %290 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %291 = load i32, i32* %16, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %290, i64 %292
  %294 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %293, i32 0, i32 2
  %295 = load i32*, i32** %294, align 8
  %296 = icmp eq i32* %295, null
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  br label %305

298:                                              ; preds = %289
  %299 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %300 = load i32, i32* %16, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %299, i64 %301
  %303 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %302, i32 0, i32 0
  store i64 0, i64* %303, align 8
  br label %127

304:                                              ; preds = %275, %207, %193, %134
  br label %305

305:                                              ; preds = %304, %297, %288, %264
  store i32 0, i32* %16, align 4
  br label %306

306:                                              ; preds = %335, %305
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* @XFS_DA_NODE_MAXDEPTH, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %338

310:                                              ; preds = %306
  %311 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %312 = load i32, i32* %16, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %311, i64 %313
  %315 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = icmp eq i32* %316, null
  br i1 %317, label %318, label %319

318:                                              ; preds = %310
  br label %335

319:                                              ; preds = %310
  %320 = load %struct.xfs_scrub*, %struct.xfs_scrub** %6, align 8
  %321 = getelementptr inbounds %struct.xfs_scrub, %struct.xfs_scrub* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %324 = load i32, i32* %16, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %323, i64 %325
  %327 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = call i32 @xfs_trans_brelse(i32 %322, i32* %328)
  %330 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %12, align 8
  %331 = load i32, i32* %16, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %330, i64 %332
  %334 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %333, i32 0, i32 2
  store i32* null, i32** %334, align 8
  br label %335

335:                                              ; preds = %319, %318
  %336 = load i32, i32* %16, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %16, align 4
  br label %306

338:                                              ; preds = %306
  br label %339

339:                                              ; preds = %338, %120, %111
  %340 = getelementptr inbounds %struct.xchk_da_btree.0, %struct.xchk_da_btree.0* %10, i32 0, i32 1
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %340, align 8
  %342 = call i32 @xfs_da_state_free(%struct.TYPE_11__* %341)
  %343 = load i32, i32* %17, align 4
  store i32 %343, i32* %5, align 4
  br label %344

344:                                              ; preds = %339, %37
  %345 = load i32, i32* %5, align 4
  ret i32 %345
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @XFS_IFORK_FORMAT(i32, i32) #2

declare dso_local %struct.TYPE_11__* @xfs_da_state_alloc(...) #2

declare dso_local i32 @xchk_da_btree_block(%struct.xchk_da_btree.0*, i32, i64) #2

declare dso_local i8* @xchk_da_btree_entry(%struct.xchk_da_btree.0*, i32, i64) #2

declare dso_local i64 @xchk_should_terminate(%struct.xfs_scrub*, i32*) #2

declare dso_local i32 @xchk_da_btree_hash(%struct.xchk_da_btree.0*, i32, i32*) #2

declare dso_local i64 @be32_to_cpu(i32) #2

declare dso_local i32 @xchk_da_set_corrupt(%struct.xchk_da_btree.0*, i32) #2

declare dso_local i32 @xfs_trans_brelse(i32, i32*) #2

declare dso_local i32 @xfs_da_state_free(%struct.TYPE_11__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
