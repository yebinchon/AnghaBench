; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_lookup_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_lookup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i32, %struct.TYPE_16__*, i32*, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)* }
%struct.xfs_dir3_icleaf_hdr = type { i32 }
%struct.xfs_dir2_leaf_entry = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_22__*, i32, i32)* }
%struct.xfs_buf = type { i32* }
%struct.TYPE_21__ = type { i32, i32 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i64 0, align 8
@XFS_CMP_DIFFERENT = common dso_local global i32 0, align 4
@XFS_CMP_EXACT = common dso_local global i32 0, align 4
@XFS_DA_OP_OKNOENT = common dso_local global i32 0, align 4
@XFS_CMP_CASE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.xfs_buf**, i32*, %struct.xfs_buf**)* @xfs_dir2_leaf_lookup_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_22__* %0, %struct.xfs_buf** %1, i32* %2, %struct.xfs_buf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.xfs_buf**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.xfs_buf**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfs_buf*, align 8
  %17 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %25 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.xfs_buf** %1, %struct.xfs_buf*** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.xfs_buf** %3, %struct.xfs_buf*** %9, align 8
  store i32 -1, i32* %10, align 4
  store %struct.xfs_buf* null, %struct.xfs_buf** %11, align 8
  store i32 -1, i32* %22, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %27, align 8
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %13, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %21, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %19, align 8
  %35 = load i32*, i32** %21, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @xfs_dir3_leaf_read(i32* %35, %struct.TYPE_20__* %36, i32 %41, i32 -1, %struct.xfs_buf** %16)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %5, align 4
  br label %257

47:                                               ; preds = %4
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %49 = load %struct.xfs_buf**, %struct.xfs_buf*** %7, align 8
  store %struct.xfs_buf* %48, %struct.xfs_buf** %49, align 8
  %50 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %51 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %18, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %55 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_20__* %53, %struct.xfs_buf* %54)
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %59, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = call %struct.xfs_dir2_leaf_entry* %60(i32* %61)
  store %struct.xfs_dir2_leaf_entry* %62, %struct.xfs_dir2_leaf_entry** %24, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %66, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 %67(%struct.xfs_dir3_icleaf_hdr* %25, i32* %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %72 = call i32 @xfs_dir2_leaf_search_hash(%struct.TYPE_22__* %70, %struct.xfs_buf* %71)
  store i32 %72, i32* %15, align 4
  %73 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %24, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %73, i64 %75
  store %struct.xfs_dir2_leaf_entry* %76, %struct.xfs_dir2_leaf_entry** %17, align 8
  br label %77

77:                                               ; preds = %191, %47
  %78 = load i32, i32* %15, align 4
  %79 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %25, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %17, align 8
  %84 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @be32_to_cpu(i32 %85)
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br label %91

91:                                               ; preds = %82, %77
  %92 = phi i1 [ false, %77 ], [ %90, %82 ]
  br i1 %92, label %93, label %196

93:                                               ; preds = %91
  %94 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %17, align 8
  %95 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @be32_to_cpu(i32 %96)
  %98 = load i64, i64* @XFS_DIR2_NULL_DATAPTR, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %191

101:                                              ; preds = %93
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %17, align 8
  %106 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @be32_to_cpu(i32 %107)
  %109 = call i32 @xfs_dir2_dataptr_to_db(%struct.TYPE_16__* %104, i64 %108)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %138

113:                                              ; preds = %101
  %114 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %115 = icmp ne %struct.xfs_buf* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32*, i32** %21, align 8
  %118 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %119 = call i32 @xfs_trans_brelse(i32* %117, %struct.xfs_buf* %118)
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32*, i32** %21, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load i32, i32* %20, align 4
  %127 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_16__* %125, i32 %126)
  %128 = call i32 @xfs_dir3_data_read(i32* %121, %struct.TYPE_20__* %122, i32 %127, i32 -1, %struct.xfs_buf** %11)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %120
  %132 = load i32*, i32** %21, align 8
  %133 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %134 = call i32 @xfs_trans_brelse(i32* %132, %struct.xfs_buf* %133)
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %5, align 4
  br label %257

136:                                              ; preds = %120
  %137 = load i32, i32* %20, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %101
  %139 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %140 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %17, align 8
  %147 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @be32_to_cpu(i32 %148)
  %150 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_16__* %145, i64 %149)
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %142, i64 %151
  %153 = bitcast i8* %152 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %153, %struct.TYPE_21__** %12, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_22__*, i32, i32)*, i32 (%struct.TYPE_22__*, i32, i32)** %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 %158(%struct.TYPE_22__* %159, i32 %162, i32 %165)
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %23, align 4
  %168 = load i32, i32* @XFS_CMP_DIFFERENT, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %138
  %171 = load i32, i32* %23, align 4
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %171, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %170
  %177 = load i32, i32* %23, align 4
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32*, i32** %8, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i32, i32* %23, align 4
  %183 = load i32, i32* @XFS_CMP_EXACT, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %176
  %186 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %187 = load %struct.xfs_buf**, %struct.xfs_buf*** %9, align 8
  store %struct.xfs_buf* %186, %struct.xfs_buf** %187, align 8
  store i32 0, i32* %5, align 4
  br label %257

188:                                              ; preds = %176
  %189 = load i32, i32* %10, align 4
  store i32 %189, i32* %22, align 4
  br label %190

190:                                              ; preds = %188, %170, %138
  br label %191

191:                                              ; preds = %190, %100
  %192 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %17, align 8
  %193 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %192, i32 1
  store %struct.xfs_dir2_leaf_entry* %193, %struct.xfs_dir2_leaf_entry** %17, align 8
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %15, align 4
  br label %77

196:                                              ; preds = %91
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @XFS_DA_OP_OKNOENT, align 4
  %201 = and i32 %199, %200
  %202 = call i32 @ASSERT(i32 %201)
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* @XFS_CMP_CASE, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %240

209:                                              ; preds = %196
  %210 = load i32, i32* %22, align 4
  %211 = icmp ne i32 %210, -1
  %212 = zext i1 %211 to i32
  %213 = call i32 @ASSERT(i32 %212)
  %214 = load i32, i32* %22, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %237

217:                                              ; preds = %209
  %218 = load i32*, i32** %21, align 8
  %219 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %220 = call i32 @xfs_trans_brelse(i32* %218, %struct.xfs_buf* %219)
  %221 = load i32*, i32** %21, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 8
  %226 = load i32, i32* %22, align 4
  %227 = call i32 @xfs_dir2_db_to_da(%struct.TYPE_16__* %225, i32 %226)
  %228 = call i32 @xfs_dir3_data_read(i32* %221, %struct.TYPE_20__* %222, i32 %227, i32 -1, %struct.xfs_buf** %11)
  store i32 %228, i32* %14, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %217
  %232 = load i32*, i32** %21, align 8
  %233 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %234 = call i32 @xfs_trans_brelse(i32* %232, %struct.xfs_buf* %233)
  %235 = load i32, i32* %14, align 4
  store i32 %235, i32* %5, align 4
  br label %257

236:                                              ; preds = %217
  br label %237

237:                                              ; preds = %236, %209
  %238 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %239 = load %struct.xfs_buf**, %struct.xfs_buf*** %9, align 8
  store %struct.xfs_buf* %238, %struct.xfs_buf** %239, align 8
  store i32 0, i32* %5, align 4
  br label %257

240:                                              ; preds = %196
  %241 = load i32, i32* %22, align 4
  %242 = icmp eq i32 %241, -1
  %243 = zext i1 %242 to i32
  %244 = call i32 @ASSERT(i32 %243)
  %245 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %246 = icmp ne %struct.xfs_buf* %245, null
  br i1 %246, label %247, label %251

247:                                              ; preds = %240
  %248 = load i32*, i32** %21, align 8
  %249 = load %struct.xfs_buf*, %struct.xfs_buf** %11, align 8
  %250 = call i32 @xfs_trans_brelse(i32* %248, %struct.xfs_buf* %249)
  br label %251

251:                                              ; preds = %247, %240
  %252 = load i32*, i32** %21, align 8
  %253 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %254 = call i32 @xfs_trans_brelse(i32* %252, %struct.xfs_buf* %253)
  %255 = load i32, i32* @ENOENT, align 4
  %256 = sub nsw i32 0, %255
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %251, %237, %231, %185, %131, %45
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i32 @xfs_dir3_leaf_read(i32*, %struct.TYPE_20__*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_20__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_leaf_search_hash(%struct.TYPE_22__*, %struct.xfs_buf*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_db(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @xfs_trans_brelse(i32*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_data_read(i32*, %struct.TYPE_20__*, i32, i32, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir2_db_to_da(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
