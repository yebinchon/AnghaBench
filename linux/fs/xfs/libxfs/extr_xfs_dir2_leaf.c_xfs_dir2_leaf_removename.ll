; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_removename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir2_leaf_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64, %struct.TYPE_25__*, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32)*, %struct.xfs_dir2_leaf_entry* (i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, %struct.xfs_dir2_data_free* (i32*)* }
%struct.xfs_dir3_icleaf_hdr = type { i32 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.xfs_dir2_data_free = type { i64 }
%struct.xfs_buf = type { i32* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NULLDATAOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_leaf_removename(%struct.TYPE_30__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xfs_buf*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xfs_buf*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.xfs_dir2_data_free*, align 8
  %21 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %22 = alloca %struct.xfs_dir3_icleaf_hdr, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %24 = call i32 @trace_xfs_dir2_leaf_removename(%struct.TYPE_30__* %23)
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %26 = call i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_30__* %25, %struct.xfs_buf** %13, i32* %12, %struct.xfs_buf** %7)
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %2, align 4
  br label %330

30:                                               ; preds = %1
  %31 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  store %struct.TYPE_27__* %33, %struct.TYPE_27__** %9, align 8
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %14, align 8
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %5, align 8
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %42 = call i32 @xfs_dir3_data_check(%struct.TYPE_27__* %40, %struct.xfs_buf* %41)
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 5
  %47 = load %struct.xfs_dir2_data_free* (i32*)*, %struct.xfs_dir2_data_free* (i32*)** %46, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call %struct.xfs_dir2_data_free* %47(i32* %48)
  store %struct.xfs_dir2_data_free* %49, %struct.xfs_dir2_data_free** %20, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 4
  %54 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %53, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 %54(%struct.xfs_dir3_icleaf_hdr* %22, i32* %55)
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 3
  %61 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %60, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = call %struct.xfs_dir2_leaf_entry* %61(i32* %62)
  store %struct.xfs_dir2_leaf_entry* %63, %struct.xfs_dir2_leaf_entry** %21, align 8
  %64 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %21, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %64, i64 %66
  store %struct.xfs_dir2_leaf_entry* %67, %struct.xfs_dir2_leaf_entry** %15, align 8
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %72 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be32_to_cpu(i32 %73)
  %75 = call i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_25__* %70, i32 %74)
  store i64 %75, i64* %6, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %82 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be32_to_cpu(i32 %83)
  %85 = call i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_25__* %80, i32 %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %77, i64 %86
  %88 = bitcast i8* %87 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %88, %struct.TYPE_29__** %8, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %89 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %90 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %89, i64 0
  %91 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @be16_to_cpu(i64 %92)
  store i64 %93, i64* %19, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = call %struct.TYPE_28__* @xfs_dir2_leaf_tail_p(%struct.TYPE_25__* %96, i32* %97)
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %16, align 8
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %100 = call i64* @xfs_dir2_leaf_bests_p(%struct.TYPE_28__* %99)
  store i64* %100, i64** %4, align 8
  %101 = load i64*, i64** %4, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @be16_to_cpu(i64 %104)
  %106 = load i64, i64* %19, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %30
  %109 = load i32, i32* @EFSCORRUPTED, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %330

111:                                              ; preds = %30
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %113 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %115 = bitcast %struct.TYPE_29__* %114 to i8*
  %116 = load i32*, i32** %5, align 8
  %117 = bitcast i32* %116 to i8*
  %118 = ptrtoint i8* %115 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 2
  %126 = load i32 (i32)*, i32 (i32)** %125, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 %126(i32 %129)
  %131 = call i32 @xfs_dir2_data_make_free(%struct.TYPE_30__* %112, %struct.xfs_buf* %113, i32 %121, i32 %130, i32* %17, i32* %18)
  %132 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %22, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = load i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)** %138, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = call i32 %139(i32* %140, %struct.xfs_dir3_icleaf_hdr* %22)
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %143 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %144 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_30__* %142, %struct.xfs_buf* %143)
  %145 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %146 = call i32 @cpu_to_be32(i32 %145)
  %147 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %15, align 8
  %148 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %150 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_30__* %149, %struct.xfs_buf* %150, i32 %151, i32 %152)
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %111
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @xfs_dir2_data_freescan(%struct.TYPE_27__* %157, i32* %158, i32* %17)
  br label %160

160:                                              ; preds = %156, %111
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %165 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %166 = call i32 @xfs_dir2_data_log_header(%struct.TYPE_30__* %164, %struct.xfs_buf* %165)
  br label %167

167:                                              ; preds = %163, %160
  %168 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %169 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %168, i64 0
  %170 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @be16_to_cpu(i64 %171)
  %173 = load i64, i64* %19, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %167
  %176 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %177 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %176, i64 0
  %178 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64*, i64** %4, align 8
  %181 = load i64, i64* %6, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  store i64 %179, i64* %182, align 8
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %184 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* %6, align 8
  %187 = trunc i64 %186 to i32
  %188 = call i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_30__* %183, %struct.xfs_buf* %184, i64 %185, i32 %187)
  br label %189

189:                                              ; preds = %175, %167
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %191 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %192 = call i32 @xfs_dir3_data_check(%struct.TYPE_27__* %190, %struct.xfs_buf* %191)
  %193 = load %struct.xfs_dir2_data_free*, %struct.xfs_dir2_data_free** %20, align 8
  %194 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %193, i64 0
  %195 = getelementptr inbounds %struct.xfs_dir2_data_free, %struct.xfs_dir2_data_free* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i64 @be16_to_cpu(i64 %196)
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 1
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %202, %207
  %209 = icmp eq i64 %197, %208
  br i1 %209, label %210, label %312

210:                                              ; preds = %189
  %211 = load i64, i64* %6, align 8
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %211, %216
  %218 = zext i1 %217 to i32
  %219 = call i32 @ASSERT(i32 %218)
  %220 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %221 = load i64, i64* %6, align 8
  %222 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %223 = call i32 @xfs_dir2_shrink_inode(%struct.TYPE_30__* %220, i64 %221, %struct.xfs_buf* %222)
  store i32 %223, i32* %10, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %241

225:                                              ; preds = %210
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @ENOSPC, align 4
  %228 = sub nsw i32 0, %227
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %225
  %231 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  store i32 0, i32* %10, align 4
  br label %236

236:                                              ; preds = %235, %230, %225
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %238 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %239 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_27__* %237, %struct.xfs_buf* %238)
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %2, align 4
  br label %330

241:                                              ; preds = %210
  store %struct.xfs_buf* null, %struct.xfs_buf** %7, align 8
  %242 = load i64, i64* %6, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @be32_to_cpu(i32 %245)
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = icmp eq i64 %242, %248
  br i1 %249, label %250, label %305

250:                                              ; preds = %241
  %251 = load i64, i64* %6, align 8
  %252 = sub i64 %251, 1
  store i64 %252, i64* %11, align 8
  br label %253

253:                                              ; preds = %266, %250
  %254 = load i64, i64* %11, align 8
  %255 = icmp ugt i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %253
  %257 = load i64*, i64** %4, align 8
  %258 = load i64, i64* %11, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load i32, i32* @NULLDATAOFF, align 4
  %262 = call i64 @cpu_to_be16(i32 %261)
  %263 = icmp ne i64 %260, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  br label %269

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %265
  %267 = load i64, i64* %11, align 8
  %268 = add i64 %267, -1
  store i64 %268, i64* %11, align 8
  br label %253

269:                                              ; preds = %264, %253
  %270 = load i64*, i64** %4, align 8
  %271 = load i64, i64* %6, align 8
  %272 = load i64, i64* %11, align 8
  %273 = sub i64 %271, %272
  %274 = getelementptr inbounds i64, i64* %270, i64 %273
  %275 = load i64*, i64** %4, align 8
  %276 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %277 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @be32_to_cpu(i32 %278)
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %6, align 8
  %282 = load i64, i64* %11, align 8
  %283 = sub i64 %281, %282
  %284 = sub i64 %280, %283
  %285 = mul i64 %284, 8
  %286 = call i32 @memmove(i64* %274, i64* %275, i64 %285)
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 0
  %289 = load i64, i64* %6, align 8
  %290 = load i64, i64* %11, align 8
  %291 = sub i64 %289, %290
  %292 = sub i64 0, %291
  %293 = call i32 @be32_add_cpu(i32* %288, i64 %292)
  %294 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %295 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %296 = call i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_30__* %294, %struct.xfs_buf* %295)
  %297 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %298 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @be32_to_cpu(i32 %301)
  %303 = sub nsw i32 %302, 1
  %304 = call i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_30__* %297, %struct.xfs_buf* %298, i64 0, i32 %303)
  br label %311

305:                                              ; preds = %241
  %306 = load i32, i32* @NULLDATAOFF, align 4
  %307 = call i64 @cpu_to_be16(i32 %306)
  %308 = load i64*, i64** %4, align 8
  %309 = load i64, i64* %6, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  store i64 %307, i64* %310, align 8
  br label %311

311:                                              ; preds = %305, %269
  br label %322

312:                                              ; preds = %189
  %313 = load i64, i64* %6, align 8
  %314 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 1
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %313, %318
  br i1 %319, label %320, label %321

320:                                              ; preds = %312
  store %struct.xfs_buf* null, %struct.xfs_buf** %7, align 8
  br label %321

321:                                              ; preds = %320, %312
  br label %322

322:                                              ; preds = %321, %311
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %324 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %325 = call i32 @xfs_dir3_leaf_check(%struct.TYPE_27__* %323, %struct.xfs_buf* %324)
  %326 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %327 = load %struct.xfs_buf*, %struct.xfs_buf** %13, align 8
  %328 = load %struct.xfs_buf*, %struct.xfs_buf** %7, align 8
  %329 = call i32 @xfs_dir2_leaf_to_block(%struct.TYPE_30__* %326, %struct.xfs_buf* %327, %struct.xfs_buf* %328)
  store i32 %329, i32* %2, align 4
  br label %330

330:                                              ; preds = %322, %236, %108, %28
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local i32 @trace_xfs_dir2_leaf_removename(%struct.TYPE_30__*) #1

declare dso_local i32 @xfs_dir2_leaf_lookup_int(%struct.TYPE_30__*, %struct.xfs_buf**, i32*, %struct.xfs_buf**) #1

declare dso_local i32 @xfs_dir3_data_check(%struct.TYPE_27__*, %struct.xfs_buf*) #1

declare dso_local i64 @xfs_dir2_dataptr_to_db(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_dir2_dataptr_to_off(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @be16_to_cpu(i64) #1

declare dso_local %struct.TYPE_28__* @xfs_dir2_leaf_tail_p(%struct.TYPE_25__*, i32*) #1

declare dso_local i64* @xfs_dir2_leaf_bests_p(%struct.TYPE_28__*) #1

declare dso_local i32 @xfs_dir2_data_make_free(%struct.TYPE_30__*, %struct.xfs_buf*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_30__*, %struct.xfs_buf*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_ents(%struct.TYPE_30__*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_dir2_data_freescan(%struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i32 @xfs_dir2_data_log_header(%struct.TYPE_30__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_log_bests(%struct.TYPE_30__*, %struct.xfs_buf*, i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_shrink_inode(%struct.TYPE_30__*, i64, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.TYPE_27__*, %struct.xfs_buf*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @memmove(i64*, i64*, i64) #1

declare dso_local i32 @be32_add_cpu(i32*, i64) #1

declare dso_local i32 @xfs_dir3_leaf_log_tail(%struct.TYPE_30__*, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_dir2_leaf_to_block(%struct.TYPE_30__*, %struct.xfs_buf*, %struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
