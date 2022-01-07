; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_find_pll_coeff.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm512x.c_pcm512x_find_pll_coeff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component*, %struct.device* }
%struct.snd_soc_component = type { i32 }
%struct.device = type { i32 }
%struct.pcm512x_priv = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"pll %lu pllin %lu common %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"num / den = %lu / %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"R * J / P = %d * %d / %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"num %lu den %lu common %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"J.D / P = %d.%04d / %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Need a slower clock as pll-input\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Need a faster clock as pll-input\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"J.D / P ~ %d.%04d / %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i64, i64)* @pcm512x_find_pll_coeff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm512x_find_pll_coeff(%struct.snd_soc_dai* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.snd_soc_component*, align 8
  %10 = alloca %struct.pcm512x_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 1
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %8, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %23, align 8
  store %struct.snd_soc_component* %24, %struct.snd_soc_component** %9, align 8
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  %26 = call %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %25)
  store %struct.pcm512x_priv* %26, %struct.pcm512x_priv** %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @gcd(i32 %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %11, align 8
  %37 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i64 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = udiv i64 %38, %39
  store i64 %40, i64* %17, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %11, align 8
  %43 = udiv i64 %41, %42
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %18, align 8
  %46 = udiv i64 %44, %45
  %47 = icmp ugt i64 %46, 20000000
  br i1 %47, label %48, label %64

48:                                               ; preds = %3
  %49 = load i64, i64* %17, align 8
  %50 = icmp ult i64 %49, 8
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %18, align 8
  %54 = udiv i64 %52, %53
  %55 = call i64 @DIV_ROUND_UP(i64 %54, i32 20000000)
  %56 = load i64, i64* %17, align 8
  %57 = mul i64 %56, %55
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %18, align 8
  %60 = udiv i64 %58, %59
  %61 = call i64 @DIV_ROUND_UP(i64 %60, i32 20000000)
  %62 = load i64, i64* %18, align 8
  %63 = mul i64 %62, %61
  store i64 %63, i64* %18, align 8
  br label %64

64:                                               ; preds = %51, %48, %3
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load i64, i64* %17, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* %18, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69)
  %71 = load i64, i64* %18, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i64, i64* %18, align 8
  %74 = icmp ule i64 %73, 15
  br i1 %74, label %75, label %126

75:                                               ; preds = %64
  %76 = load i64, i64* %17, align 8
  %77 = icmp ule i64 %76, 1008
  br i1 %77, label %78, label %126

78:                                               ; preds = %75
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %79, %81
  %83 = icmp ule i64 1000000, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %78
  %85 = load i64, i64* %6, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = udiv i64 %85, %87
  %89 = icmp ule i64 %88, 20000000
  br i1 %89, label %90, label %126

90:                                               ; preds = %84
  store i32 0, i32* %14, align 4
  store i32 16, i32* %12, align 4
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %125

94:                                               ; preds = %91
  %95 = load i64, i64* %17, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = urem i64 %95, %97
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %122

101:                                              ; preds = %94
  %102 = load i64, i64* %17, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = udiv i64 %102, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %110, 63
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %101
  br label %122

113:                                              ; preds = %109
  %114 = load %struct.device*, %struct.device** %8, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  %121 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  br label %271

122:                                              ; preds = %112, %100
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %12, align 4
  br label %91

125:                                              ; preds = %91
  br label %126

126:                                              ; preds = %125, %84, %78, %75, %64
  store i32 1, i32* %12, align 4
  %127 = load i64, i64* %17, align 8
  %128 = icmp ugt i64 %127, 429496
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %209

130:                                              ; preds = %126
  %131 = load i64, i64* %17, align 8
  %132 = mul i64 10000, %131
  %133 = trunc i64 %132 to i32
  %134 = load i64, i64* %18, align 8
  %135 = call i64 @gcd(i32 %133, i64 %134)
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %17, align 8
  %137 = mul i64 10000, %136
  %138 = load i64, i64* %11, align 8
  %139 = udiv i64 %137, %138
  store i64 %139, i64* %17, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %18, align 8
  %142 = udiv i64 %141, %140
  store i64 %142, i64* %18, align 8
  %143 = load %struct.device*, %struct.device** %8, align 8
  %144 = load i64, i64* %17, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i64, i64* %18, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i64, i64* %11, align 8
  %149 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %145, i32 %147, i64 %148)
  %150 = load i64, i64* %18, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %205, %130
  %153 = load i32, i32* %15, align 4
  %154 = icmp sle i32 %153, 15
  br i1 %154, label %155, label %208

155:                                              ; preds = %152
  %156 = load i64, i64* %6, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = udiv i64 %156, %158
  %160 = icmp ult i64 %159, 6667000
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load i64, i64* %6, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = udiv i64 %162, %164
  %166 = icmp ult i64 200000000, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %161, %155
  br label %205

168:                                              ; preds = %161
  %169 = load i64, i64* %17, align 8
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 %169, %171
  %173 = load i64, i64* %18, align 8
  %174 = urem i64 %172, %173
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %205

177:                                              ; preds = %168
  %178 = load i64, i64* %17, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = mul i64 %178, %180
  %182 = load i64, i64* %18, align 8
  %183 = udiv i64 %181, %182
  store i64 %183, i64* %16, align 8
  %184 = load i64, i64* %16, align 8
  %185 = icmp ult i64 %184, 40000
  br i1 %185, label %189, label %186

186:                                              ; preds = %177
  %187 = load i64, i64* %16, align 8
  %188 = icmp ugt i64 %187, 120000
  br i1 %188, label %189, label %190

189:                                              ; preds = %186, %177
  br label %205

190:                                              ; preds = %186
  %191 = load i64, i64* %16, align 8
  %192 = udiv i64 %191, 10000
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %13, align 4
  %194 = load i64, i64* %16, align 8
  %195 = urem i64 %194, 10000
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %14, align 4
  %197 = load %struct.device*, %struct.device** %8, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* %15, align 4
  %201 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %197, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %199, i32 %200)
  %202 = load i64, i64* %7, align 8
  %203 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  %204 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %203, i32 0, i32 0
  store i64 %202, i64* %204, align 8
  br label %271

205:                                              ; preds = %189, %176, %167
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %152

208:                                              ; preds = %152
  br label %209

209:                                              ; preds = %208, %129
  %210 = load i64, i64* %6, align 8
  %211 = call i64 @DIV_ROUND_UP(i64 %210, i32 20000000)
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %15, align 4
  %213 = load i32, i32* %15, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %209
  store i32 1, i32* %15, align 4
  br label %225

216:                                              ; preds = %209
  %217 = load i32, i32* %15, align 4
  %218 = icmp sgt i32 %217, 15
  br i1 %218, label %219, label %224

219:                                              ; preds = %216
  %220 = load %struct.device*, %struct.device** %8, align 8
  %221 = call i32 @dev_err(%struct.device* %220, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %222 = load i32, i32* @EINVAL, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %4, align 4
  br label %284

224:                                              ; preds = %216
  br label %225

225:                                              ; preds = %224, %215
  %226 = load i64, i64* %6, align 8
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = udiv i64 %226, %228
  %230 = icmp ult i64 %229, 6667000
  br i1 %230, label %231, label %236

231:                                              ; preds = %225
  %232 = load %struct.device*, %struct.device** %8, align 8
  %233 = call i32 @dev_err(%struct.device* %232, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %284

236:                                              ; preds = %225
  %237 = load i64, i64* %7, align 8
  %238 = mul i64 10000, %237
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = mul i64 %238, %240
  %242 = load i64, i64* %6, align 8
  %243 = call i64 @DIV_ROUND_CLOSEST_ULL(i64 %241, i64 %242)
  store i64 %243, i64* %16, align 8
  %244 = load i64, i64* %16, align 8
  %245 = icmp ult i64 %244, 40000
  br i1 %245, label %246, label %247

246:                                              ; preds = %236
  store i64 40000, i64* %16, align 8
  br label %247

247:                                              ; preds = %246, %236
  %248 = load i64, i64* %16, align 8
  %249 = icmp ugt i64 %248, 120000
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  store i64 120000, i64* %16, align 8
  br label %251

251:                                              ; preds = %250, %247
  %252 = load i64, i64* %16, align 8
  %253 = udiv i64 %252, 10000
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %13, align 4
  %255 = load i64, i64* %16, align 8
  %256 = urem i64 %255, 10000
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %14, align 4
  %258 = load %struct.device*, %struct.device** %8, align 8
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %15, align 4
  %262 = call i32 (%struct.device*, i8*, i32, i32, ...) @dev_dbg(%struct.device* %258, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %259, i32 %260, i32 %261)
  %263 = load i64, i64* %16, align 8
  %264 = load i64, i64* %6, align 8
  %265 = mul i64 %263, %264
  %266 = load i32, i32* %15, align 4
  %267 = mul nsw i32 10000, %266
  %268 = call i64 @DIV_ROUND_DOWN_ULL(i64 %265, i32 %267)
  %269 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  %270 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %251, %190, %113
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  %274 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 8
  %275 = load i32, i32* %13, align 4
  %276 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  %277 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 4
  %278 = load i32, i32* %14, align 4
  %279 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  %280 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %15, align 4
  %282 = load %struct.pcm512x_priv*, %struct.pcm512x_priv** %10, align 8
  %283 = getelementptr inbounds %struct.pcm512x_priv, %struct.pcm512x_priv* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 4
  store i32 0, i32* %4, align 4
  br label %284

284:                                              ; preds = %271, %231, %219
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local %struct.pcm512x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i64 @gcd(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, ...) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

declare dso_local i64 @DIV_ROUND_DOWN_ULL(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
