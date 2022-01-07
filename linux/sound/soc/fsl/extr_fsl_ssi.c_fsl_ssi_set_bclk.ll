; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_set_bclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi.c_fsl_ssi_set_bclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.fsl_ssi = type { i32, i32, i32, i32, i64, i32, %struct.regmap* }
%struct.regmap = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bitclk > ipgclk / 5\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to handle the required sysclk\0A\00", align 1
@SSI_SxCCR_DIV2 = common dso_local global i32 0, align 4
@SSI_SxCCR_PSR = common dso_local global i32 0, align 4
@SSI_SxCCR_PM_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to set baudclk rate\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @fsl_ssi_set_bclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_set_bclk(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_ssi*, align 8
  %11 = alloca %struct.regmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %37 = call %struct.fsl_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %36)
  store %struct.fsl_ssi* %37, %struct.fsl_ssi** %10, align 8
  %38 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %39 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %38, i32 0, i32 6
  %40 = load %struct.regmap*, %struct.regmap** %39, align 8
  store %struct.regmap* %40, %struct.regmap** %11, align 8
  store i32 999, i32* %12, align 4
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %42 = call i32 @params_channels(%struct.snd_pcm_hw_params* %41)
  store i32 %42, i32* %23, align 4
  store i32 32, i32* %24, align 4
  store i32 100000, i32* %26, align 4
  %43 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %44 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %49 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %23, align 4
  br label %51

51:                                               ; preds = %47, %3
  %52 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %53 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %23, align 4
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %61 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %24, align 4
  br label %63

63:                                               ; preds = %59, %56, %51
  %64 = load i32, i32* %23, align 4
  %65 = load i32, i32* %24, align 4
  %66 = mul i32 %64, %65
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %68 = call i32 @params_rate(%struct.snd_pcm_hw_params* %67)
  %69 = mul i32 %66, %68
  store i32 %69, i32* %27, align 4
  %70 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %71 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %271

78:                                               ; preds = %63
  %79 = load i32, i32* %27, align 4
  %80 = mul i32 %79, 5
  %81 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %82 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @clk_get_rate(i32 %83)
  %85 = icmp ugt i32 %80, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %271

93:                                               ; preds = %78
  %94 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %95 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %98 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @BIT(i64 %99)
  %101 = xor i32 %100, -1
  %102 = and i32 %96, %101
  store i32 %102, i32* %28, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i32, i32* %14, align 4
  %106 = mul nsw i32 7, %105
  %107 = add nsw i32 %106, 1
  %108 = mul nsw i32 %104, %107
  %109 = mul nsw i32 %108, 2
  store i32 %109, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %110

110:                                              ; preds = %198, %93
  %111 = load i32, i32* %19, align 4
  %112 = icmp slt i32 %111, 255
  br i1 %112, label %113, label %201

113:                                              ; preds = %110
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %18, align 4
  %116 = mul i32 %114, %115
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 1
  %119 = mul i32 %116, %118
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %22, align 8
  %121 = load i32, i32* %28, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %125 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @clk_get_rate(i32 %126)
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %20, align 8
  br label %135

129:                                              ; preds = %113
  %130 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %131 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %22, align 8
  %134 = call i64 @clk_round_rate(i32 %132, i64 %133)
  store i64 %134, i64* %20, align 8
  br label %135

135:                                              ; preds = %129, %123
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %20, align 8
  %139 = udiv i64 %138, %137
  store i64 %139, i64* %20, align 8
  %140 = load i64, i64* %20, align 8
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = udiv i64 %140, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %27, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  store i32 0, i32* %25, align 4
  br label %171

150:                                              ; preds = %135
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %17, align 4
  %153 = udiv i32 %151, %152
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %27, align 4
  %157 = load i32, i32* %17, align 4
  %158 = sub i32 %156, %157
  store i32 %158, i32* %25, align 4
  br label %170

159:                                              ; preds = %150
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %27, align 4
  %162 = udiv i32 %160, %161
  %163 = icmp eq i32 %162, 1
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %27, align 4
  %167 = sub i32 %165, %166
  store i32 %167, i32* %25, align 4
  br label %169

168:                                              ; preds = %159
  br label %198

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %155
  br label %171

171:                                              ; preds = %170, %149
  %172 = load i32, i32* %25, align 4
  %173 = mul nsw i32 %172, 100000
  store i32 %173, i32* %25, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %27, align 4
  %176 = call i32 @do_div(i32 %174, i32 %175)
  %177 = load i32, i32* %25, align 4
  %178 = load i32, i32* %26, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %171
  %181 = load i32, i32* %19, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32, i32* %14, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %13, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %186, %183, %180
  %190 = load i64, i64* %22, align 8
  store i64 %190, i64* %21, align 8
  %191 = load i32, i32* %25, align 4
  store i32 %191, i32* %26, align 4
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %189, %186, %171
  %194 = load i32, i32* %26, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %201

197:                                              ; preds = %193
  br label %198

198:                                              ; preds = %197, %168
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  br label %110

201:                                              ; preds = %196, %110
  %202 = load i32, i32* %12, align 4
  %203 = icmp eq i32 %202, 999
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %206 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @dev_err(i32 %207, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %271

211:                                              ; preds = %201
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  %214 = call i32 @SSI_SxCCR_PM(i32 %213)
  %215 = load i32, i32* %13, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* @SSI_SxCCR_DIV2, align 4
  br label %220

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  %222 = or i32 %214, %221
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @SSI_SxCCR_PSR, align 4
  br label %228

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %225
  %229 = phi i32 [ %226, %225 ], [ 0, %227 ]
  %230 = or i32 %222, %229
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* @SSI_SxCCR_PM_MASK, align 4
  %232 = load i32, i32* @SSI_SxCCR_DIV2, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @SSI_SxCCR_PSR, align 4
  %235 = or i32 %233, %234
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %228
  %239 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %240 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br label %243

243:                                              ; preds = %238, %228
  %244 = phi i1 [ true, %228 ], [ %242, %238 ]
  %245 = zext i1 %244 to i32
  store i32 %245, i32* %8, align 4
  %246 = load %struct.regmap*, %struct.regmap** %11, align 8
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @REG_SSI_SxCCR(i32 %247)
  %249 = load i32, i32* %16, align 4
  %250 = load i32, i32* %15, align 4
  %251 = call i32 @regmap_update_bits(%struct.regmap* %246, i32 %248, i32 %249, i32 %250)
  %252 = load i32, i32* %28, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %270, label %254

254:                                              ; preds = %243
  %255 = load %struct.fsl_ssi*, %struct.fsl_ssi** %10, align 8
  %256 = getelementptr inbounds %struct.fsl_ssi, %struct.fsl_ssi* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i64, i64* %21, align 8
  %259 = call i32 @clk_set_rate(i32 %257, i64 %258)
  store i32 %259, i32* %29, align 4
  %260 = load i32, i32* %29, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %254
  %263 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %264 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @dev_err(i32 %265, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %267 = load i32, i32* @EINVAL, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %4, align 4
  br label %271

269:                                              ; preds = %254
  br label %270

270:                                              ; preds = %269, %243
  store i32 0, i32* %4, align 4
  br label %271

271:                                              ; preds = %270, %262, %204, %86, %75
  %272 = load i32, i32* %4, align 4
  ret i32 %272
}

declare dso_local %struct.fsl_ssi* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @SSI_SxCCR_PM(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @REG_SSI_SxCCR(i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
