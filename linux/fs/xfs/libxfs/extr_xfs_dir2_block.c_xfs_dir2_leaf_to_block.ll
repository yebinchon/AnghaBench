; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_leaf_to_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_block.c_xfs_dir2_leaf_to_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_43__ = type { %struct.TYPE_35__*, i32*, %struct.TYPE_38__* }
%struct.TYPE_35__ = type { i64, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_37__*, %struct.TYPE_36__, i32* }
%struct.TYPE_37__ = type { i32, %struct.xfs_dir2_leaf_entry* (%struct.TYPE_40__*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.TYPE_40__*)* }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i64, i32, i32 }
%struct.TYPE_36__ = type { i64 }
%struct.xfs_buf = type { %struct.TYPE_40__* }
%struct.TYPE_42__ = type { i32, i64 }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_39__ = type { i32 }

@XFS_DIR2_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR3_LEAF1_MAGIC = common dso_local global i64 0, align 8
@XFS_DIR2_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR3_DATA_MAGIC = common dso_local global i32 0, align 4
@XFS_DIR2_DATA_FREE_TAG = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_to_block(%struct.TYPE_43__* %0, %struct.xfs_buf* %1, %struct.xfs_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_42__*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca %struct.TYPE_41__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_40__*, align 8
  %16 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %17 = alloca %struct.TYPE_39__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %27 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %5, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %6, align 8
  store %struct.xfs_buf* %2, %struct.xfs_buf** %7, align 8
  %29 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %30 = call i32 @trace_xfs_dir2_leaf_to_block(%struct.TYPE_43__* %29)
  %31 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_38__*, %struct.TYPE_38__** %32, align 8
  store %struct.TYPE_38__* %33, %struct.TYPE_38__** %11, align 8
  %34 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %25, align 8
  %37 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %18, align 8
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %41 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %40, i32 0, i32 0
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %41, align 8
  store %struct.TYPE_40__* %42, %struct.TYPE_40__** %15, align 8
  %43 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i32 0, i32 2
  %47 = load i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.TYPE_40__*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, %struct.TYPE_40__*)** %46, align 8
  %48 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %49 = call i32 %47(%struct.xfs_dir3_icleaf_hdr* %27, %struct.TYPE_40__* %48)
  %50 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %52, i32 0, i32 1
  %54 = load %struct.xfs_dir2_leaf_entry* (%struct.TYPE_40__*)*, %struct.xfs_dir2_leaf_entry* (%struct.TYPE_40__*)** %53, align 8
  %55 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %56 = call %struct.xfs_dir2_leaf_entry* %54(%struct.TYPE_40__* %55)
  store %struct.xfs_dir2_leaf_entry* %56, %struct.xfs_dir2_leaf_entry** %26, align 8
  %57 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %58, align 8
  %60 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %61 = call %struct.TYPE_39__* @xfs_dir2_leaf_tail_p(%struct.TYPE_35__* %59, %struct.TYPE_40__* %60)
  store %struct.TYPE_39__* %61, %struct.TYPE_39__** %17, align 8
  %62 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %27, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @XFS_DIR2_LEAF1_MAGIC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %27, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XFS_DIR3_LEAF1_MAGIC, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %66, %3
  %72 = phi i1 [ true, %3 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  br label %75

75:                                               ; preds = %128, %71
  %76 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_35__*, %struct.TYPE_35__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %79, %84
  br i1 %85, label %86, label %129

86:                                               ; preds = %75
  %87 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_37__*, %struct.TYPE_37__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %28, align 4
  %92 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %93 = call i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_39__* %92)
  store i32* %93, i32** %8, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %94, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @be16_to_cpu(i32 %102)
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_35__*, %struct.TYPE_35__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %28, align 4
  %111 = sext i32 %110 to i64
  %112 = sub nsw i64 %109, %111
  %113 = icmp eq i64 %104, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %86
  %115 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %116 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %117 = load %struct.TYPE_39__*, %struct.TYPE_39__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @be32_to_cpu(i32 %119)
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @xfs_dir2_leaf_trim_data(%struct.TYPE_43__* %115, %struct.xfs_buf* %116, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %114
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %4, align 4
  br label %339

126:                                              ; preds = %114
  br label %128

127:                                              ; preds = %86
  store i32 0, i32* %4, align 4
  br label %339

128:                                              ; preds = %126
  br label %75

129:                                              ; preds = %75
  %130 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %131 = icmp ne %struct.xfs_buf* %130, null
  br i1 %131, label %146, label %132

132:                                              ; preds = %129
  %133 = load i32*, i32** %25, align 8
  %134 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %135 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @xfs_dir3_data_read(i32* %133, %struct.TYPE_38__* %134, i32 %139, i32 -1, %struct.xfs_buf** %7)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i32, i32* %13, align 4
  store i32 %144, i32* %4, align 4
  br label %339

145:                                              ; preds = %132
  br label %146

146:                                              ; preds = %145, %129
  %147 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %148 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %147, i32 0, i32 0
  %149 = load %struct.TYPE_40__*, %struct.TYPE_40__** %148, align 8
  store %struct.TYPE_40__* %149, %struct.TYPE_40__** %9, align 8
  %150 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @XFS_DIR2_DATA_MAGIC, align 4
  %154 = call i32 @cpu_to_be32(i32 %153)
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %146
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @XFS_DIR3_DATA_MAGIC, align 4
  %161 = call i32 @cpu_to_be32(i32 %160)
  %162 = icmp eq i32 %159, %161
  br label %163

163:                                              ; preds = %156, %146
  %164 = phi i1 [ true, %146 ], [ %162, %156 ]
  %165 = zext i1 %164 to i32
  %166 = call i32 @ASSERT(i32 %165)
  %167 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %27, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %27, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = sub nsw i32 %168, %170
  %172 = mul nsw i32 4, %171
  %173 = add nsw i32 16, %172
  store i32 %173, i32* %22, align 4
  %174 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %175 = bitcast %struct.TYPE_40__* %174 to i8*
  %176 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i8, i8* %175, i64 %180
  %182 = bitcast i8* %181 to i32*
  %183 = getelementptr inbounds i32, i32* %182, i64 -1
  store i32* %183, i32** %23, align 8
  %184 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %185 = bitcast %struct.TYPE_40__* %184 to i8*
  %186 = load i32*, i32** %23, align 8
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @be16_to_cpu(i32 %187)
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %185, i64 %189
  %191 = bitcast i8* %190 to %struct.TYPE_41__*
  store %struct.TYPE_41__* %191, %struct.TYPE_41__** %12, align 8
  %192 = load %struct.TYPE_41__*, %struct.TYPE_41__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @be16_to_cpu(i32 %194)
  %196 = load i32, i32* @XFS_DIR2_DATA_FREE_TAG, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %205, label %198

198:                                              ; preds = %163
  %199 = load %struct.TYPE_41__*, %struct.TYPE_41__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @be16_to_cpu(i32 %201)
  %203 = load i32, i32* %22, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %198, %163
  store i32 0, i32* %4, align 4
  br label %339

206:                                              ; preds = %198
  %207 = load i32*, i32** %18, align 8
  %208 = load i32*, i32** %25, align 8
  %209 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %210 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %211 = call i32 @xfs_dir3_block_init(i32* %207, i32* %208, %struct.xfs_buf* %209, %struct.TYPE_38__* %210)
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %212 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %213 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %214 = load %struct.TYPE_41__*, %struct.TYPE_41__** %12, align 8
  %215 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %22, align 4
  %221 = sext i32 %220 to i64
  %222 = sub nsw i64 %219, %221
  %223 = trunc i64 %222 to i32
  %224 = load i32, i32* %22, align 4
  %225 = call i32 @xfs_dir2_data_use_free(%struct.TYPE_43__* %212, %struct.xfs_buf* %213, %struct.TYPE_41__* %214, i32 %223, i32 %224, i32* %19, i32* %20)
  store i32 %225, i32* %13, align 4
  %226 = load i32, i32* %13, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %206
  %229 = load i32, i32* %13, align 4
  store i32 %229, i32* %4, align 4
  br label %339

230:                                              ; preds = %206
  %231 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %232, align 8
  %234 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %235 = call %struct.TYPE_42__* @xfs_dir2_block_tail_p(%struct.TYPE_35__* %233, %struct.TYPE_40__* %234)
  store %struct.TYPE_42__* %235, %struct.TYPE_42__** %10, align 8
  %236 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %27, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %27, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %237, %239
  %241 = call i32 @cpu_to_be32(i32 %240)
  %242 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %244, i32 0, i32 1
  store i64 0, i64* %245, align 8
  %246 = load i32*, i32** %25, align 8
  %247 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %248 = call i32 @xfs_dir2_block_log_tail(i32* %246, %struct.xfs_buf* %247)
  %249 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %250 = call %struct.xfs_dir2_leaf_entry* @xfs_dir2_block_leaf_p(%struct.TYPE_42__* %249)
  store %struct.xfs_dir2_leaf_entry* %250, %struct.xfs_dir2_leaf_entry** %16, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %14, align 4
  br label %251

251:                                              ; preds = %279, %230
  %252 = load i32, i32* %14, align 4
  %253 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %27, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %252, %254
  br i1 %255, label %256, label %282

256:                                              ; preds = %251
  %257 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %26, align 8
  %258 = load i32, i32* %14, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %257, i64 %259
  %261 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %264 = call i32 @cpu_to_be32(i32 %263)
  %265 = icmp eq i32 %262, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %256
  br label %279

267:                                              ; preds = %256
  %268 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %16, align 8
  %269 = load i32, i32* %24, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %24, align 4
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %268, i64 %271
  %273 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %26, align 8
  %274 = load i32, i32* %14, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %273, i64 %275
  %277 = bitcast %struct.xfs_dir2_leaf_entry* %272 to i8*
  %278 = bitcast %struct.xfs_dir2_leaf_entry* %276 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %277, i8* align 4 %278, i64 4, i1 false)
  br label %279

279:                                              ; preds = %267, %266
  %280 = load i32, i32* %14, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %14, align 4
  br label %251

282:                                              ; preds = %251
  %283 = load i32, i32* %24, align 4
  %284 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @be32_to_cpu(i32 %286)
  %288 = icmp eq i32 %283, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @ASSERT(i32 %289)
  %291 = load i32*, i32** %25, align 8
  %292 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %293 = load %struct.TYPE_42__*, %struct.TYPE_42__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @be32_to_cpu(i32 %295)
  %297 = sub nsw i32 %296, 1
  %298 = call i32 @xfs_dir2_block_log_leaf(i32* %291, %struct.xfs_buf* %292, i32 0, i32 %297)
  %299 = load i32, i32* %20, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %282
  %302 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %303 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %304 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_38__* %302, %struct.TYPE_40__* %303, i32* %19)
  br label %305

305:                                              ; preds = %301, %282
  %306 = load i32, i32* %19, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %305
  %309 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %310 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %311 = call i32 @xfs_dir2_data_log_header(%struct.TYPE_43__* %309, %struct.xfs_buf* %310)
  br label %312

312:                                              ; preds = %308, %305
  %313 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %314 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_35__*, %struct.TYPE_35__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  %320 = call i32 @xfs_da_shrink_inode(%struct.TYPE_43__* %313, i32 %318, %struct.xfs_buf* %319)
  store i32 %320, i32* %13, align 4
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %312
  %324 = load i32, i32* %13, align 4
  store i32 %324, i32* %4, align 4
  br label %339

325:                                              ; preds = %312
  %326 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %327 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %328 = call i32 @xfs_dir2_block_sfsize(%struct.TYPE_38__* %326, %struct.TYPE_40__* %327, i32* %21)
  store i32 %328, i32* %22, align 4
  %329 = load i32, i32* %22, align 4
  %330 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %331 = call i32 @XFS_IFORK_DSIZE(%struct.TYPE_38__* %330)
  %332 = icmp sgt i32 %329, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %325
  store i32 0, i32* %4, align 4
  br label %339

334:                                              ; preds = %325
  %335 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %336 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %337 = load i32, i32* %22, align 4
  %338 = call i32 @xfs_dir2_block_to_sf(%struct.TYPE_43__* %335, %struct.xfs_buf* %336, i32 %337, i32* %21)
  store i32 %338, i32* %4, align 4
  br label %339

339:                                              ; preds = %334, %333, %323, %228, %205, %143, %127, %124
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

declare dso_local i32 @trace_xfs_dir2_leaf_to_block(%struct.TYPE_43__*) #1

declare dso_local %struct.TYPE_39__* @xfs_dir2_leaf_tail_p(%struct.TYPE_35__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @xfs_dir2_leaf_bests_p(%struct.TYPE_39__*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_leaf_trim_data(%struct.TYPE_43__*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_dir3_data_read(i32*, %struct.TYPE_38__*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir3_block_init(i32*, i32*, %struct.xfs_buf*, %struct.TYPE_38__*) #1

declare dso_local i32 @xfs_dir2_data_use_free(%struct.TYPE_43__*, %struct.xfs_buf*, %struct.TYPE_41__*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_42__* @xfs_dir2_block_tail_p(%struct.TYPE_35__*, %struct.TYPE_40__*) #1

declare dso_local i32 @xfs_dir2_block_log_tail(i32*, %struct.xfs_buf*) #1

declare dso_local %struct.xfs_dir2_leaf_entry* @xfs_dir2_block_leaf_p(%struct.TYPE_42__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xfs_dir2_block_log_leaf(i32*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_38__*, %struct.TYPE_40__*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.TYPE_43__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_da_shrink_inode(%struct.TYPE_43__*, i32, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_block_sfsize(%struct.TYPE_38__*, %struct.TYPE_40__*, i32*) #1

declare dso_local i32 @XFS_IFORK_DSIZE(%struct.TYPE_38__*) #1

declare dso_local i32 @xfs_dir2_block_to_sf(%struct.TYPE_43__*, %struct.xfs_buf*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
