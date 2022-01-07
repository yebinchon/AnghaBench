; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_ratnum.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_interval_ratnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_ratnum = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_interval_ratnum(%struct.snd_interval* %0, i32 %1, %struct.snd_ratnum* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ratnum*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_interval, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.snd_ratnum* %2, %struct.snd_ratnum** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %31

31:                                               ; preds = %128, %5
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %131

35:                                               ; preds = %31
  %36 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %36, i64 %38
  %40 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %21, align 4
  %42 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %43 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %23, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 1, i32* %23, align 4
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %23, align 4
  %51 = call i8* @div_up(i32 %49, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %54, i64 %56
  %58 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %53, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %128

62:                                               ; preds = %48
  %63 = load i32, i32* %22, align 4
  %64 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %65 = load i32, i32* %15, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %64, i64 %66
  %68 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ugt i32 %63, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %72, i64 %74
  %76 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %22, align 4
  br label %101

78:                                               ; preds = %62
  %79 = load i32, i32* %22, align 4
  %80 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %81 = load i32, i32* %15, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %80, i64 %82
  %84 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %79, %85
  %87 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %87, i64 %89
  %91 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = urem i32 %86, %92
  store i32 %93, i32* %25, align 4
  %94 = load i32, i32* %25, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %78
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* %22, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %22, align 4
  br label %100

100:                                              ; preds = %96, %78
  br label %101

101:                                              ; preds = %100, %71
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %22, align 4
  %105 = mul i32 %103, %104
  %106 = sub i32 %102, %105
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %24, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* %24, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %24, align 4
  br label %112

112:                                              ; preds = %109, %101
  %113 = load i32, i32* %12, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %13, align 4
  %118 = mul i32 %116, %117
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %22, align 4
  %121 = mul i32 %119, %120
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %115, %112
  %124 = load i32, i32* %24, align 4
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %22, align 4
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %21, align 4
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %123, %115
  br label %128

128:                                              ; preds = %127, %61
  %129 = load i32, i32* %15, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %31

131:                                              ; preds = %31
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %136 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %326

139:                                              ; preds = %131
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i8* @div_down(i32 %140, i32 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = urem i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 2
  store i32 %151, i32* %152, align 8
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %18, align 4
  %154 = load i32, i32* %14, align 4
  store i32 %154, i32* %20, align 4
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %19, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %156

156:                                              ; preds = %264, %139
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %267

160:                                              ; preds = %156
  %161 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %162 = load i32, i32* %15, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %161, i64 %163
  %165 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %26, align 4
  %167 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %168 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %28, align 4
  %170 = load i32, i32* %28, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %160
  %173 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %174 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %6, align 4
  br label %326

177:                                              ; preds = %160
  %178 = load i32, i32* %26, align 4
  %179 = load i32, i32* %28, align 4
  %180 = call i8* @div_down(i32 %178, i32 %179)
  %181 = ptrtoint i8* %180 to i32
  store i32 %181, i32* %27, align 4
  %182 = load i32, i32* %27, align 4
  %183 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %184 = load i32, i32* %15, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %183, i64 %185
  %187 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp ugt i32 %182, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %177
  br label %264

191:                                              ; preds = %177
  %192 = load i32, i32* %27, align 4
  %193 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %194 = load i32, i32* %15, align 4
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %193, i64 %195
  %197 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = icmp ult i32 %192, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %191
  %201 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %202 = load i32, i32* %15, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %201, i64 %203
  %205 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %27, align 4
  br label %237

207:                                              ; preds = %191
  %208 = load i32, i32* %27, align 4
  %209 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %210 = load i32, i32* %15, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %209, i64 %211
  %213 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sub i32 %208, %214
  %216 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %217 = load i32, i32* %15, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %216, i64 %218
  %220 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = urem i32 %215, %221
  store i32 %222, i32* %30, align 4
  %223 = load i32, i32* %30, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %207
  %226 = load %struct.snd_ratnum*, %struct.snd_ratnum** %9, align 8
  %227 = load i32, i32* %15, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %226, i64 %228
  %230 = getelementptr inbounds %struct.snd_ratnum, %struct.snd_ratnum* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %30, align 4
  %233 = sub i32 %231, %232
  %234 = load i32, i32* %27, align 4
  %235 = add i32 %234, %233
  store i32 %235, i32* %27, align 4
  br label %236

236:                                              ; preds = %225, %207
  br label %237

237:                                              ; preds = %236, %200
  %238 = load i32, i32* %28, align 4
  %239 = load i32, i32* %27, align 4
  %240 = mul i32 %238, %239
  %241 = load i32, i32* %26, align 4
  %242 = sub i32 %240, %241
  store i32 %242, i32* %29, align 4
  %243 = load i32, i32* %29, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %237
  %246 = load i32, i32* %29, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %29, align 4
  br label %248

248:                                              ; preds = %245, %237
  %249 = load i32, i32* %12, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %259, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* %29, align 4
  %253 = load i32, i32* %13, align 4
  %254 = mul i32 %252, %253
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %27, align 4
  %257 = mul i32 %255, %256
  %258 = icmp ult i32 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %251, %248
  %260 = load i32, i32* %29, align 4
  store i32 %260, i32* %14, align 4
  %261 = load i32, i32* %27, align 4
  store i32 %261, i32* %13, align 4
  %262 = load i32, i32* %26, align 4
  store i32 %262, i32* %12, align 4
  br label %263

263:                                              ; preds = %259, %251
  br label %264

264:                                              ; preds = %263, %190
  %265 = load i32, i32* %15, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %15, align 4
  br label %156

267:                                              ; preds = %156
  %268 = load i32, i32* %13, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %272 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %271, i32 0, i32 1
  store i32 1, i32* %272, align 4
  %273 = load i32, i32* @EINVAL, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %6, align 4
  br label %326

275:                                              ; preds = %267
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* %13, align 4
  %278 = call i8* @div_up(i32 %276, i32 %277)
  %279 = ptrtoint i8* %278 to i32
  %280 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 3
  store i32 %279, i32* %280, align 4
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* %13, align 4
  %283 = urem i32 %281, %282
  %284 = icmp ne i32 %283, 0
  %285 = xor i1 %284, true
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 4
  store i32 %287, i32* %288, align 8
  %289 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %16, i32 0, i32 5
  store i64 0, i64* %289, align 8
  %290 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %291 = call i32 @snd_interval_refine(%struct.snd_interval* %290, %struct.snd_interval* %16)
  store i32 %291, i32* %17, align 4
  %292 = load i32, i32* %17, align 4
  %293 = icmp slt i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %275
  %295 = load i32, i32* %17, align 4
  store i32 %295, i32* %6, align 4
  br label %326

296:                                              ; preds = %275
  %297 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %298 = call i64 @snd_interval_single(%struct.snd_interval* %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %324

300:                                              ; preds = %296
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* %19, align 4
  %303 = mul i32 %301, %302
  %304 = load i32, i32* %20, align 4
  %305 = load i32, i32* %13, align 4
  %306 = mul i32 %304, %305
  %307 = icmp ult i32 %303, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %300
  %309 = load i32, i32* %12, align 4
  store i32 %309, i32* %18, align 4
  %310 = load i32, i32* %13, align 4
  store i32 %310, i32* %19, align 4
  br label %311

311:                                              ; preds = %308, %300
  %312 = load i32*, i32** %10, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i32, i32* %18, align 4
  %316 = load i32*, i32** %10, align 8
  store i32 %315, i32* %316, align 4
  br label %317

317:                                              ; preds = %314, %311
  %318 = load i32*, i32** %11, align 8
  %319 = icmp ne i32* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load i32, i32* %19, align 4
  %322 = load i32*, i32** %11, align 8
  store i32 %321, i32* %322, align 4
  br label %323

323:                                              ; preds = %320, %317
  br label %324

324:                                              ; preds = %323, %296
  %325 = load i32, i32* %17, align 4
  store i32 %325, i32* %6, align 4
  br label %326

326:                                              ; preds = %324, %294, %270, %172, %134
  %327 = load i32, i32* %6, align 4
  ret i32 %327
}

declare dso_local i8* @div_up(i32, i32) #1

declare dso_local i8* @div_down(i32, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

declare dso_local i64 @snd_interval_single(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
