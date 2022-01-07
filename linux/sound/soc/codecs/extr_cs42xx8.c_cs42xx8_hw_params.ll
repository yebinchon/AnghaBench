; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42xx8_priv = type { i32*, i32, i32, i64, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CS42XX8_FM_AUTO = common dso_local global i32 0, align 4
@CS42XX8_FM_SINGLE = common dso_local global i32 0, align 4
@CS42XX8_FM_DOUBLE = common dso_local global i32 0, align 4
@CS42XX8_FM_QUAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unsupported sample rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cs42xx8_ratios = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported sysclk ratio\0A\00", align 1
@CS42XX8_FUNCMOD_MFREQ_MASK = common dso_local global i32 0, align 4
@CS42XX8_FUNCMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @cs42xx8_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42xx8_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.cs42xx8_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %8, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %23 = call %struct.cs42xx8_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.cs42xx8_priv* %23, %struct.cs42xx8_priv** %9, align 8
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_channels(%struct.snd_pcm_hw_params* %33)
  %35 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %36 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %3
  %38 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %39 = call i8* @params_rate(%struct.snd_pcm_hw_params* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %45 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %46, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %37
  %66 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %67 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %68, %72
  br label %75

74:                                               ; preds = %37
  br label %75

75:                                               ; preds = %74, %65
  %76 = phi i32 [ %73, %65 ], [ 0, %74 ]
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %75
  %89 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %90 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %91, %98
  br label %101

100:                                              ; preds = %75
  br label %101

101:                                              ; preds = %100, %88
  %102 = phi i32 [ %99, %88 ], [ 0, %100 ]
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %107
  store i32 %102, i32* %108, align 4
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %178, %101
  %110 = load i32, i32* %14, align 4
  %111 = icmp slt i32 %110, 2
  br i1 %111, label %112, label %181

112:                                              ; preds = %109
  %113 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %114 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* @CS42XX8_FM_AUTO, align 4
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %120
  store i32 %118, i32* %121, align 4
  br label %177

122:                                              ; preds = %112
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 50000
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i32, i32* @CS42XX8_FM_SINGLE, align 4
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %131
  store i32 %129, i32* %132, align 4
  br label %176

133:                                              ; preds = %122
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 50000
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %143, 100000
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* @CS42XX8_FM_DOUBLE, align 4
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %148
  store i32 %146, i32* %149, align 4
  br label %175

150:                                              ; preds = %139, %133
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 100000
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp slt i32 %160, 200000
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load i32, i32* @CS42XX8_FM_QUAD, align 4
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %165
  store i32 %163, i32* %166, align 4
  br label %174

167:                                              ; preds = %156, %150
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %169 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %444

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %145
  br label %176

176:                                              ; preds = %175, %128
  br label %177

177:                                              ; preds = %176, %117
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %109

181:                                              ; preds = %109
  store i32 0, i32* %14, align 4
  br label %182

182:                                              ; preds = %395, %181
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %185 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %184)
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %398

187:                                              ; preds = %182
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @CS42XX8_FM_AUTO, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %236

194:                                              ; preds = %187
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %10, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %202, %206
  br i1 %207, label %255, label %208

208:                                              ; preds = %194
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %216, %220
  br i1 %221, label %255, label %222

222:                                              ; preds = %208
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %224 = load i32, i32* %14, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %230, %234
  br i1 %235, label %255, label %277

236:                                              ; preds = %187
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %242, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %10, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %249, %253
  br i1 %254, label %255, label %277

255:                                              ; preds = %236, %222, %208, %194
  %256 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %257 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp sge i32 %258, %264
  br i1 %265, label %266, label %277

266:                                              ; preds = %255
  %267 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %268 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp sle i32 %269, %275
  br label %277

277:                                              ; preds = %266, %255, %236, %222
  %278 = phi i1 [ false, %255 ], [ false, %236 ], [ false, %222 ], [ %276, %266 ]
  %279 = zext i1 %278 to i32
  store i32 %279, i32* %17, align 4
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %277
  store i32 1, i32* %17, align 4
  br label %286

286:                                              ; preds = %285, %277
  %287 = load i32, i32* %10, align 4
  %288 = icmp ne i32 %287, 0
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @CS42XX8_FM_AUTO, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %350

296:                                              ; preds = %286
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %298 = load i32, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %10, align 4
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %304, %311
  br i1 %312, label %347, label %313

313:                                              ; preds = %296
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %315 = load i32, i32* %14, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* %10, align 4
  %323 = icmp ne i32 %322, 0
  %324 = xor i1 %323, true
  %325 = zext i1 %324 to i32
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %321, %328
  br i1 %329, label %347, label %330

330:                                              ; preds = %313
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %332 = load i32, i32* %14, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 2
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* %10, align 4
  %340 = icmp ne i32 %339, 0
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %338, %345
  br label %347

347:                                              ; preds = %330, %313, %296
  %348 = phi i1 [ true, %313 ], [ true, %296 ], [ %346, %330 ]
  %349 = zext i1 %348 to i32
  br label %376

350:                                              ; preds = %286
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %352 = load i32, i32* %14, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = load i32, i32* %10, align 4
  %358 = icmp ne i32 %357, 0
  %359 = xor i1 %358, true
  %360 = zext i1 %359 to i32
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %356, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %10, align 4
  %368 = icmp ne i32 %367, 0
  %369 = xor i1 %368, true
  %370 = zext i1 %369 to i32
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %366, %373
  %375 = zext i1 %374 to i32
  br label %376

376:                                              ; preds = %350, %347
  %377 = phi i32 [ %349, %347 ], [ %375, %350 ]
  store i32 %377, i32* %18, align 4
  %378 = load i32, i32* %10, align 4
  %379 = icmp ne i32 %378, 0
  %380 = xor i1 %379, true
  %381 = zext i1 %380 to i32
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %376
  store i32 1, i32* %18, align 4
  br label %387

387:                                              ; preds = %386, %376
  %388 = load i32, i32* %17, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %387
  %391 = load i32, i32* %18, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  br label %398

394:                                              ; preds = %390, %387
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %14, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %14, align 4
  br label %182

398:                                              ; preds = %393, %182
  %399 = load i32, i32* %14, align 4
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %401 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %400)
  %402 = icmp eq i32 %399, %401
  br i1 %402, label %403, label %410

403:                                              ; preds = %398
  %404 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %405 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @dev_err(i32 %406, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %408 = load i32, i32* @EINVAL, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %4, align 4
  br label %444

410:                                              ; preds = %398
  %411 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %412 = call i8* @params_rate(%struct.snd_pcm_hw_params* %411)
  %413 = ptrtoint i8* %412 to i32
  %414 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %415 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %414, i32 0, i32 0
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %10, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32 %413, i32* %419, align 4
  %420 = load i32, i32* @CS42XX8_FUNCMOD_MFREQ_MASK, align 4
  store i32 %420, i32* %16, align 4
  %421 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cs42xx8_ratios, align 8
  %422 = load i32, i32* %14, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 8
  store i32 %426, i32* %15, align 4
  %427 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %9, align 8
  %428 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* @CS42XX8_FUNCMOD, align 4
  %431 = load i32, i32* %10, align 4
  %432 = call i32 @CS42XX8_FUNCMOD_xC_FM_MASK(i32 %431)
  %433 = load i32, i32* %16, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* %10, align 4
  %436 = load i32, i32* %10, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = call i32 @CS42XX8_FUNCMOD_xC_FM(i32 %435, i32 %439)
  %441 = load i32, i32* %15, align 4
  %442 = or i32 %440, %441
  %443 = call i32 @regmap_update_bits(i32 %429, i32 %430, i32 %434, i32 %442)
  store i32 0, i32* %4, align 4
  br label %444

444:                                              ; preds = %410, %403, %167
  %445 = load i32, i32* %4, align 4
  ret i32 %445
}

declare dso_local %struct.cs42xx8_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i8* @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @CS42XX8_FUNCMOD_xC_FM_MASK(i32) #1

declare dso_local i32 @CS42XX8_FUNCMOD_xC_FM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
