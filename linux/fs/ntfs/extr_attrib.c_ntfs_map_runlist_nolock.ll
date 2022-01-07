; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_map_runlist_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_map_runlist_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i64, i64, %struct.TYPE_27__, %struct.TYPE_23__*, i32, %struct.page*, i32, %struct.TYPE_24__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_23__ = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_29__ = type { i32*, %struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_28__*, i32*, i32* }
%struct.TYPE_30__ = type { i64, i64, %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Mapping runlist part containing vcn 0x%llx.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CASE_SENSITIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntfs_map_runlist_nolock(%struct.TYPE_28__* %0, i32 %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_29__, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  store %struct.page* null, %struct.page** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = bitcast %struct.TYPE_29__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 48, i1 false)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = call i32 @ntfs_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %25 = call i32 @NInoAttr(%struct.TYPE_28__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_28__* %28, %struct.TYPE_28__** %10, align 8
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %10, align 8
  br label %34

34:                                               ; preds = %29, %27
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %36 = icmp ne %struct.TYPE_29__* %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %34
  store i32 1, i32* %17, align 4
  store i32 1, i32* %16, align 4
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %39 = call i8* @map_mft_record(%struct.TYPE_28__* %38)
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @IS_ERR(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @PTR_ERR(i32* %45)
  store i32 %46, i32* %4, align 4
  br label %418

47:                                               ; preds = %37
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call %struct.TYPE_29__* @ntfs_attr_get_search_ctx(%struct.TYPE_28__* %48, i32* %49)
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %7, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %52 = icmp ne %struct.TYPE_29__* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %15, align 4
  br label %273

60:                                               ; preds = %47
  br label %187

61:                                               ; preds = %34
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @IS_ERR(i32* %64)
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %68, align 8
  store %struct.TYPE_30__* %69, %struct.TYPE_30__** %12, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @BUG_ON(i32 %75)
  store i32 0, i32* %16, align 4
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @sle64_to_cpu(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 7
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @read_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 4
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %89, %94
  store i32 %95, i32* %19, align 4
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 7
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @read_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %61
  %107 = load i32, i32* %8, align 4
  %108 = icmp sle i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = sub nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %109, %106, %61
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %19, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %162, label %116

116:                                              ; preds = %112
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %119, %122
  br i1 %123, label %124, label %163

124:                                              ; preds = %116
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %127, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %124
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %134 = bitcast %struct.TYPE_30__* %133 to i32*
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @le16_to_cpu(i32 %137)
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @memcmp(i32* %140, i32 %143, i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %132
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @sle64_to_cpu(i32 %154)
  %156 = load i32, i32* %6, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %149
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %112
  store i32 0, i32* %17, align 4
  br label %186

163:                                              ; preds = %158, %149, %132, %124, %116
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %165 = bitcast %struct.TYPE_29__* %18 to i8*
  %166 = bitcast %struct.TYPE_29__* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 48, i1 false)
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %167, align 8
  %169 = icmp ne %struct.TYPE_28__* %168, null
  br i1 %169, label %170, label %183

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %173, align 8
  %175 = icmp ne %struct.TYPE_28__* %172, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 6
  %180 = load %struct.page*, %struct.page** %179, align 8
  store %struct.page* %180, %struct.page** %14, align 8
  %181 = load %struct.page*, %struct.page** %14, align 8
  %182 = call i32 @get_page(%struct.page* %181)
  br label %183

183:                                              ; preds = %176, %170, %163
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %185 = call i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_29__* %184)
  store i32 1, i32* %17, align 4
  br label %186

186:                                              ; preds = %183, %162
  br label %187

187:                                              ; preds = %186, %60
  %188 = load i32, i32* %17, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %226

190:                                              ; preds = %187
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @CASE_SENSITIVE, align 4
  %201 = load i32, i32* %6, align 4
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %203 = call i32 @ntfs_attr_lookup(i64 %193, i32 %196, i64 %199, i32 %200, i32 %201, i32* null, i32 0, %struct.TYPE_29__* %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* %15, align 4
  %205 = call i64 @unlikely(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %190
  %208 = load i32, i32* %15, align 4
  %209 = load i32, i32* @ENOENT, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load i32, i32* @EIO, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %212, %207
  br label %273

216:                                              ; preds = %190
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = zext i1 %223 to i32
  %225 = call i32 @BUG_ON(i32 %224)
  br label %226

226:                                              ; preds = %216, %187
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  store %struct.TYPE_30__* %229, %struct.TYPE_30__** %12, align 8
  %230 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @sle64_to_cpu(i32 %234)
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %8, align 4
  %237 = load i32, i32* %6, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %226
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp sge i32 %240, %241
  br label %243

243:                                              ; preds = %239, %226
  %244 = phi i1 [ false, %226 ], [ %242, %239 ]
  %245 = zext i1 %244 to i32
  %246 = call i64 @unlikely(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i32, i32* @ENOENT, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %15, align 4
  br label %273

251:                                              ; preds = %243
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %253, align 8
  %255 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = call i32* @ntfs_mapping_pairs_decompress(%struct.TYPE_23__* %254, %struct.TYPE_30__* %255, i32* %259)
  store i32* %260, i32** %13, align 8
  %261 = load i32*, i32** %13, align 8
  %262 = call i32 @IS_ERR(i32* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %251
  %265 = load i32*, i32** %13, align 8
  %266 = call i32 @PTR_ERR(i32* %265)
  store i32 %266, i32* %15, align 4
  br label %272

267:                                              ; preds = %251
  %268 = load i32*, i32** %13, align 8
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  store i32* %268, i32** %271, align 8
  br label %272

272:                                              ; preds = %267, %264
  br label %273

273:                                              ; preds = %272, %248, %215, %57
  %274 = load i32, i32* %16, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %273
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %278 = call i64 @likely(%struct.TYPE_29__* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %282 = call i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__* %281)
  br label %283

283:                                              ; preds = %280, %276
  %284 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %285 = call i32 @unmap_mft_record(%struct.TYPE_28__* %284)
  br label %416

286:                                              ; preds = %273
  %287 = load i32, i32* %17, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %415

289:                                              ; preds = %286
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %291 = call i64 @NInoAttrList(%struct.TYPE_28__* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %405

293:                                              ; preds = %289
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %294, i32 0, i32 3
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %297, align 8
  %299 = icmp ne %struct.TYPE_28__* %296, %298
  br i1 %299, label %300, label %370

300:                                              ; preds = %293
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 2
  %303 = load %struct.TYPE_28__*, %struct.TYPE_28__** %302, align 8
  %304 = icmp ne %struct.TYPE_28__* %303, null
  br i1 %304, label %305, label %330

305:                                              ; preds = %300
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 3
  %308 = load %struct.TYPE_28__*, %struct.TYPE_28__** %307, align 8
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 2
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %310, align 8
  %312 = icmp ne %struct.TYPE_28__* %308, %311
  br i1 %312, label %313, label %330

313:                                              ; preds = %305
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %314, i32 0, i32 3
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %315, align 8
  %317 = call i32 @unmap_extent_mft_record(%struct.TYPE_28__* %316)
  %318 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %319 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %318, i32 0, i32 4
  %320 = load i32*, i32** %319, align 8
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 0
  store i32* %320, i32** %322, align 8
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = icmp ne i32* %325, null
  %327 = xor i1 %326, true
  %328 = zext i1 %327 to i32
  %329 = call i32 @BUG_ON(i32 %328)
  br label %330

330:                                              ; preds = %313, %305, %300
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %331, align 8
  %333 = icmp ne %struct.TYPE_28__* %332, null
  br i1 %333, label %334, label %369

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %337, align 8
  %339 = icmp ne %struct.TYPE_28__* %336, %338
  br i1 %339, label %340, label %369

340:                                              ; preds = %334
  br label %341

341:                                              ; preds = %361, %340
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  %343 = load %struct.TYPE_28__*, %struct.TYPE_28__** %342, align 8
  %344 = call i8* @map_mft_record(%struct.TYPE_28__* %343)
  %345 = bitcast i8* %344 to i32*
  %346 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %346, i32 0, i32 0
  store i32* %345, i32** %347, align 8
  %348 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @IS_ERR(i32* %350)
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %368

353:                                              ; preds = %341
  %354 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @PTR_ERR(i32* %356)
  %358 = load i32, i32* @ENOMEM, align 4
  %359 = sub nsw i32 0, %358
  %360 = icmp eq i32 %357, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %353
  %362 = call i32 (...) @schedule()
  br label %341

363:                                              ; preds = %353
  %364 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 2
  %365 = load %struct.TYPE_28__*, %struct.TYPE_28__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 3
  store %struct.TYPE_28__* %365, %struct.TYPE_28__** %366, align 8
  br label %367

367:                                              ; preds = %363
  br label %368

368:                                              ; preds = %367, %341
  br label %369

369:                                              ; preds = %368, %334, %330
  br label %370

370:                                              ; preds = %369, %293
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %371, i32 0, i32 0
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %375 = load i32*, i32** %374, align 8
  %376 = icmp ne i32* %373, %375
  br i1 %376, label %377, label %404

377:                                              ; preds = %370
  %378 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %379 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = call i32 @IS_ERR(i32* %380)
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %399, label %383

383:                                              ; preds = %377
  %384 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 0
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  %388 = load %struct.TYPE_30__*, %struct.TYPE_30__** %387, align 8
  %389 = bitcast %struct.TYPE_30__* %388 to i32*
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  %391 = load i32*, i32** %390, align 8
  %392 = ptrtoint i32* %389 to i64
  %393 = ptrtoint i32* %391 to i64
  %394 = sub i64 %392, %393
  %395 = sdiv exact i64 %394, 4
  %396 = getelementptr inbounds i32, i32* %386, i64 %395
  %397 = bitcast i32* %396 to %struct.TYPE_30__*
  %398 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 1
  store %struct.TYPE_30__* %397, %struct.TYPE_30__** %398, align 8
  br label %399

399:                                              ; preds = %383, %377
  %400 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %401 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %400, i32 0, i32 0
  %402 = load i32*, i32** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %18, i32 0, i32 0
  store i32* %402, i32** %403, align 8
  br label %404

404:                                              ; preds = %399, %370
  br label %405

405:                                              ; preds = %404, %289
  %406 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %407 = bitcast %struct.TYPE_29__* %406 to i8*
  %408 = bitcast %struct.TYPE_29__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %407, i8* align 8 %408, i64 48, i1 false)
  %409 = load %struct.page*, %struct.page** %14, align 8
  %410 = icmp ne %struct.page* %409, null
  br i1 %410, label %411, label %414

411:                                              ; preds = %405
  %412 = load %struct.page*, %struct.page** %14, align 8
  %413 = call i32 @put_page(%struct.page* %412)
  br label %414

414:                                              ; preds = %411, %405
  br label %415

415:                                              ; preds = %414, %286
  br label %416

416:                                              ; preds = %415, %283
  %417 = load i32, i32* %15, align 4
  store i32 %417, i32* %4, align 4
  br label %418

418:                                              ; preds = %416, %44
  %419 = load i32, i32* %4, align 4
  ret i32 %419
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ntfs_debug(i8*, i64) #2

declare dso_local i32 @NInoAttr(%struct.TYPE_28__*) #2

declare dso_local i8* @map_mft_record(%struct.TYPE_28__*) #2

declare dso_local i32 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local %struct.TYPE_29__* @ntfs_attr_get_search_ctx(%struct.TYPE_28__*, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @sle64_to_cpu(i32) #2

declare dso_local i32 @read_lock_irqsave(i32*, i64) #2

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @memcmp(i32*, i32, i64) #2

declare dso_local i32 @le16_to_cpu(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @get_page(%struct.page*) #2

declare dso_local i32 @ntfs_attr_reinit_search_ctx(%struct.TYPE_29__*) #2

declare dso_local i32 @ntfs_attr_lookup(i64, i32, i64, i32, i32, i32*, i32, %struct.TYPE_29__*) #2

declare dso_local i32* @ntfs_mapping_pairs_decompress(%struct.TYPE_23__*, %struct.TYPE_30__*, i32*) #2

declare dso_local i64 @likely(%struct.TYPE_29__*) #2

declare dso_local i32 @ntfs_attr_put_search_ctx(%struct.TYPE_29__*) #2

declare dso_local i32 @unmap_mft_record(%struct.TYPE_28__*) #2

declare dso_local i64 @NInoAttrList(%struct.TYPE_28__*) #2

declare dso_local i32 @unmap_extent_mft_record(%struct.TYPE_28__*) #2

declare dso_local i32 @schedule(...) #2

declare dso_local i32 @put_page(%struct.page*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
