; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_try_assign_dacs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_try_assign_dacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32* }
%struct.badness_table = type { i64, i64, i64, i64, i64, i64 }
%struct.nid_path = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i32, i32*, i32*, i32*, %struct.badness_table*)* @try_assign_dacs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_assign_dacs(%struct.hda_codec* %0, i32 %1, i32* %2, i32* %3, i32* %4, %struct.badness_table* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hda_codec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.badness_table*, align 8
  %14 = alloca %struct.hda_gen_spec*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nid_path*, align 8
  %20 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.badness_table* %5, %struct.badness_table** %13, align 8
  %21 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %22 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %21, i32 0, i32 0
  %23 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %22, align 8
  store %struct.hda_gen_spec* %23, %struct.hda_gen_spec** %14, align 8
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %339

27:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %334, %27
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %337

32:                                               ; preds = %28
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %20, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec* %38, i32 %43)
  store %struct.nid_path* %44, %struct.nid_path** %19, align 8
  %45 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %46 = icmp ne %struct.nid_path* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %32
  %48 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %49 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %50 = call i64 @assign_out_path_ctls(%struct.hda_codec* %48, %struct.nid_path* %49)
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %17, align 4
  br label %334

55:                                               ; preds = %32
  %56 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @get_preferred_dac(%struct.hda_codec* %56, i32 %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %55
  %70 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @is_dac_already_used(%struct.hda_codec* %70, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %80 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %78, %69
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %87
  %95 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @look_for_dac(%struct.hda_codec* %95, i32 %96, i32 0)
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %87
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %155, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %155, label %112

112:                                              ; preds = %109
  store i32 1, i32* %16, align 4
  br label %113

113:                                              ; preds = %151, %112
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %154

117:                                              ; preds = %113
  %118 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %20, align 4
  %125 = call i64 @is_reachable_path(%struct.hda_codec* %118, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %117
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 0, i32* %138, align 4
  %139 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @invalidate_nid_path(%struct.hda_codec* %139, i32 %144)
  %146 = load i32*, i32** %12, align 8
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 0, i32* %149, align 4
  br label %154

150:                                              ; preds = %117
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %113

154:                                              ; preds = %127, %113
  br label %155

155:                                              ; preds = %154, %109, %102
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %18, align 4
  %161 = load i32, i32* %18, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %273, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %9, align 4
  %165 = icmp sgt i32 %164, 2
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %168 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @get_primary_out(%struct.hda_codec* %168, i32 %169)
  %171 = load i32, i32* %20, align 4
  %172 = call i32 @try_dac(%struct.hda_codec* %167, i32 %170, i32 %171)
  store i32 %172, i32* %18, align 4
  br label %173

173:                                              ; preds = %166, %163
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %173
  %177 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %20, align 4
  %182 = call i32 @try_dac(%struct.hda_codec* %177, i32 %180, i32 %181)
  store i32 %182, i32* %18, align 4
  br label %183

183:                                              ; preds = %176, %173
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %193, label %186

186:                                              ; preds = %183
  %187 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %188 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %189 = load i32, i32* %15, align 4
  %190 = call i32 @get_primary_out(%struct.hda_codec* %188, i32 %189)
  %191 = load i32, i32* %20, align 4
  %192 = call i32 @try_dac(%struct.hda_codec* %187, i32 %190, i32 %191)
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %186, %183
  %194 = load i32, i32* %18, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %228

196:                                              ; preds = %193
  %197 = load i32, i32* %15, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %196
  %200 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %201 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %17, align 4
  br label %227

207:                                              ; preds = %196
  %208 = load i32, i32* %15, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %212 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %211, i32 0, i32 4
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %17, align 4
  br label %226

218:                                              ; preds = %207
  %219 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %220 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i32, i32* %17, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %17, align 4
  br label %226

226:                                              ; preds = %218, %210
  br label %227

227:                                              ; preds = %226, %199
  br label %272

228:                                              ; preds = %193
  %229 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %230 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %231 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %20, align 4
  %236 = call i64 @is_reachable_path(%struct.hda_codec* %229, i32 %234, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %228
  %239 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %240 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %18, align 4
  %244 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %245 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %244, i32 0, i32 2
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %17, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %248, %246
  %250 = trunc i64 %249 to i32
  store i32 %250, i32* %17, align 4
  br label %271

251:                                              ; preds = %228
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %262, label %254

254:                                              ; preds = %251
  %255 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %256 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i32, i32* %17, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %17, align 4
  br label %270

262:                                              ; preds = %251
  %263 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %264 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %265
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %17, align 4
  br label %270

270:                                              ; preds = %262, %254
  br label %271

271:                                              ; preds = %270, %238
  br label %272

272:                                              ; preds = %271, %227
  br label %273

273:                                              ; preds = %272, %155
  %274 = load i32, i32* %18, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  br label %334

277:                                              ; preds = %273
  %278 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %20, align 4
  %281 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %282 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sub nsw i32 0, %283
  %285 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %278, i32 %279, i32 %280, i32 %284)
  store %struct.nid_path* %285, %struct.nid_path** %19, align 8
  %286 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %287 = icmp ne %struct.nid_path* %286, null
  br i1 %287, label %301, label %288

288:                                              ; preds = %277
  %289 = load i32, i32* %15, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %301, label %291

291:                                              ; preds = %288
  %292 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %14, align 8
  %293 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %20, align 4
  %300 = call %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec* %297, i32 %298, i32 %299, i32 0)
  store %struct.nid_path* %300, %struct.nid_path** %19, align 8
  br label %301

301:                                              ; preds = %296, %291, %288, %277
  %302 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %303 = icmp ne %struct.nid_path* %302, null
  br i1 %303, label %316, label %304

304:                                              ; preds = %301
  %305 = load i32*, i32** %11, align 8
  %306 = load i32, i32* %15, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 0, i32* %308, align 4
  store i32 0, i32* %18, align 4
  %309 = load %struct.badness_table*, %struct.badness_table** %13, align 8
  %310 = getelementptr inbounds %struct.badness_table, %struct.badness_table* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %311
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %17, align 4
  br label %333

316:                                              ; preds = %301
  %317 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %318 = getelementptr inbounds %struct.nid_path, %struct.nid_path* %317, i32 0, i32 0
  store i32 1, i32* %318, align 4
  %319 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %320 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %321 = call i32 @snd_hda_get_path_idx(%struct.hda_codec* %319, %struct.nid_path* %320)
  %322 = load i32*, i32** %12, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %322, i64 %324
  store i32 %321, i32* %325, align 4
  %326 = load %struct.hda_codec*, %struct.hda_codec** %8, align 8
  %327 = load %struct.nid_path*, %struct.nid_path** %19, align 8
  %328 = call i64 @assign_out_path_ctls(%struct.hda_codec* %326, %struct.nid_path* %327)
  %329 = load i32, i32* %17, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %330, %328
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %17, align 4
  br label %333

333:                                              ; preds = %316, %304
  br label %334

334:                                              ; preds = %333, %276, %47
  %335 = load i32, i32* %15, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %15, align 4
  br label %28

337:                                              ; preds = %28
  %338 = load i32, i32* %17, align 4
  store i32 %338, i32* %7, align 4
  br label %339

339:                                              ; preds = %337, %26
  %340 = load i32, i32* %7, align 4
  ret i32 %340
}

declare dso_local %struct.nid_path* @snd_hda_get_path_from_idx(%struct.hda_codec*, i32) #1

declare dso_local i64 @assign_out_path_ctls(%struct.hda_codec*, %struct.nid_path*) #1

declare dso_local i32 @get_preferred_dac(%struct.hda_codec*, i32) #1

declare dso_local i64 @is_dac_already_used(%struct.hda_codec*, i32) #1

declare dso_local i32 @look_for_dac(%struct.hda_codec*, i32, i32) #1

declare dso_local i64 @is_reachable_path(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @invalidate_nid_path(%struct.hda_codec*, i32) #1

declare dso_local i32 @try_dac(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @get_primary_out(%struct.hda_codec*, i32) #1

declare dso_local %struct.nid_path* @snd_hda_add_new_path(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @snd_hda_get_path_idx(%struct.hda_codec*, %struct.nid_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
