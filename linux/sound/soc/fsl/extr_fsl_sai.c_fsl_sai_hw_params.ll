; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.fsl_sai = type { i32, i32, i32, i32, i64*, i32, i64*, i32, i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@TX = common dso_local global i64 0, align 8
@RX = common dso_local global i64 0, align 8
@FSL_SAI_CR4_SYWD_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CR4_FRSZ_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CR5_WNW_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CR5_W0W_MASK = common dso_local global i32 0, align 4
@FSL_SAI_CR5_FBT_MASK = common dso_local global i32 0, align 4
@FSL_SAI_TMR = common dso_local global i32 0, align 4
@FSL_SAI_RMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @fsl_sai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.fsl_sai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = call %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %18)
  store %struct.fsl_sai* %19, %struct.fsl_sai** %8, align 8
  %20 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %21 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %20, i32 0, i32 11
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %32 = call i32 @params_channels(%struct.snd_pcm_hw_params* %31)
  store i32 %32, i32* %11, align 4
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %34 = call i32 @params_width(%struct.snd_pcm_hw_params* %33)
  store i32 %34, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %40

38:                                               ; preds = %3
  %39 = load i32, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = phi i32 [ 2, %37 ], [ %39, %38 ]
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %44 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %49 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %53 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %58 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %62 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %133, label %65

65:                                               ; preds = %60
  %66 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %67 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %74 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %77 = call i32 @params_rate(%struct.snd_pcm_hw_params* %76)
  %78 = mul nsw i32 %75, %77
  %79 = call i32 @fsl_sai_set_bclk(%struct.snd_soc_dai* %71, i32 %72, i32 %78)
  store i32 %79, i32* %17, align 4
  br label %90

80:                                               ; preds = %65
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %87 = call i32 @params_rate(%struct.snd_pcm_hw_params* %86)
  %88 = mul nsw i32 %85, %87
  %89 = call i32 @fsl_sai_set_bclk(%struct.snd_soc_dai* %81, i32 %82, i32 %88)
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %80, %70
  %91 = load i32, i32* %17, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %4, align 4
  br label %317

95:                                               ; preds = %90
  %96 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %97 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %100 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @BIT(i64 %101)
  %103 = and i32 %98, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %132, label %105

105:                                              ; preds = %95
  %106 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %107 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %106, i32 0, i32 10
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %110 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %109, i32 0, i32 4
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %108, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @clk_prepare_enable(i32 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %105
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %4, align 4
  br label %317

123:                                              ; preds = %105
  %124 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @BIT(i64 %126)
  %128 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %129 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %123, %95
  br label %133

133:                                              ; preds = %132, %60
  %134 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %135 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @FSL_SAI_CR4_SYWD(i32 %139)
  %141 = load i32, i32* %13, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %13, align 4
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @FSL_SAI_CR5_WNW(i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %14, align 4
  %148 = load i32, i32* %16, align 4
  %149 = call i32 @FSL_SAI_CR5_W0W(i32 %148)
  %150 = load i32, i32* %14, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %14, align 4
  %152 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %153 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %143
  %157 = call i32 @FSL_SAI_CR5_FBT(i32 0)
  %158 = load i32, i32* %14, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %14, align 4
  br label %166

160:                                              ; preds = %143
  %161 = load i32, i32* %12, align 4
  %162 = sub nsw i32 %161, 1
  %163 = call i32 @FSL_SAI_CR5_FBT(i32 %162)
  %164 = load i32, i32* %14, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %14, align 4
  br label %166

166:                                              ; preds = %160, %156
  %167 = load i32, i32* %15, align 4
  %168 = call i32 @FSL_SAI_CR4_FRSZ(i32 %167)
  %169 = load i32, i32* %13, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %13, align 4
  %171 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %172 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %281, label %175

175:                                              ; preds = %166
  %176 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %177 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %176, i32 0, i32 6
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* @TX, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %227, label %183

183:                                              ; preds = %175
  %184 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %185 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %184, i32 0, i32 6
  %186 = load i64*, i64** %185, align 8
  %187 = load i64, i64* @RX, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %227

191:                                              ; preds = %183
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %227, label %194

194:                                              ; preds = %191
  %195 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %196 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @FSL_SAI_TCR4(i32 %198)
  %200 = load i32, i32* @FSL_SAI_CR4_SYWD_MASK, align 4
  %201 = load i32, i32* @FSL_SAI_CR4_FRSZ_MASK, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @regmap_update_bits(i32 %197, i32 %199, i32 %202, i32 %203)
  %205 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %206 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i32 @FSL_SAI_TCR5(i32 %208)
  %210 = load i32, i32* @FSL_SAI_CR5_WNW_MASK, align 4
  %211 = load i32, i32* @FSL_SAI_CR5_W0W_MASK, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @FSL_SAI_CR5_FBT_MASK, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* %14, align 4
  %216 = call i32 @regmap_update_bits(i32 %207, i32 %209, i32 %214, i32 %215)
  %217 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %218 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @FSL_SAI_TMR, align 4
  %221 = load i32, i32* %11, align 4
  %222 = shl i32 1, %221
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = sub i64 -1, %224
  %226 = call i32 @regmap_write(i32 %219, i32 %220, i64 %225)
  br label %280

227:                                              ; preds = %191, %183, %175
  %228 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %229 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %228, i32 0, i32 6
  %230 = load i64*, i64** %229, align 8
  %231 = load i64, i64* @RX, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %279, label %235

235:                                              ; preds = %227
  %236 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %237 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %236, i32 0, i32 6
  %238 = load i64*, i64** %237, align 8
  %239 = load i64, i64* @TX, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %279

243:                                              ; preds = %235
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %279

246:                                              ; preds = %243
  %247 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %248 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @FSL_SAI_RCR4(i32 %250)
  %252 = load i32, i32* @FSL_SAI_CR4_SYWD_MASK, align 4
  %253 = load i32, i32* @FSL_SAI_CR4_FRSZ_MASK, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @regmap_update_bits(i32 %249, i32 %251, i32 %254, i32 %255)
  %257 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %258 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @FSL_SAI_RCR5(i32 %260)
  %262 = load i32, i32* @FSL_SAI_CR5_WNW_MASK, align 4
  %263 = load i32, i32* @FSL_SAI_CR5_W0W_MASK, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @FSL_SAI_CR5_FBT_MASK, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* %14, align 4
  %268 = call i32 @regmap_update_bits(i32 %259, i32 %261, i32 %266, i32 %267)
  %269 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %270 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @FSL_SAI_RMR, align 4
  %273 = load i32, i32* %11, align 4
  %274 = shl i32 1, %273
  %275 = sub nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = sub i64 -1, %276
  %278 = call i32 @regmap_write(i32 %271, i32 %272, i64 %277)
  br label %279

279:                                              ; preds = %246, %243, %235, %227
  br label %280

280:                                              ; preds = %279, %194
  br label %281

281:                                              ; preds = %280, %166
  %282 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %283 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @FSL_SAI_xCR4(i32 %285, i32 %286)
  %288 = load i32, i32* @FSL_SAI_CR4_SYWD_MASK, align 4
  %289 = load i32, i32* @FSL_SAI_CR4_FRSZ_MASK, align 4
  %290 = or i32 %288, %289
  %291 = load i32, i32* %13, align 4
  %292 = call i32 @regmap_update_bits(i32 %284, i32 %287, i32 %290, i32 %291)
  %293 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %294 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %9, align 4
  %298 = call i32 @FSL_SAI_xCR5(i32 %296, i32 %297)
  %299 = load i32, i32* @FSL_SAI_CR5_WNW_MASK, align 4
  %300 = load i32, i32* @FSL_SAI_CR5_W0W_MASK, align 4
  %301 = or i32 %299, %300
  %302 = load i32, i32* @FSL_SAI_CR5_FBT_MASK, align 4
  %303 = or i32 %301, %302
  %304 = load i32, i32* %14, align 4
  %305 = call i32 @regmap_update_bits(i32 %295, i32 %298, i32 %303, i32 %304)
  %306 = load %struct.fsl_sai*, %struct.fsl_sai** %8, align 8
  %307 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %10, align 4
  %310 = call i32 @FSL_SAI_xMR(i32 %309)
  %311 = load i32, i32* %11, align 4
  %312 = shl i32 1, %311
  %313 = sub nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = sub i64 -1, %314
  %316 = call i32 @regmap_write(i32 %308, i32 %310, i64 %315)
  store i32 0, i32* %4, align 4
  br label %317

317:                                              ; preds = %281, %121, %93
  %318 = load i32, i32* %4, align 4
  ret i32 %318
}

declare dso_local %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @fsl_sai_set_bclk(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @FSL_SAI_CR4_SYWD(i32) #1

declare dso_local i32 @FSL_SAI_CR5_WNW(i32) #1

declare dso_local i32 @FSL_SAI_CR5_W0W(i32) #1

declare dso_local i32 @FSL_SAI_CR5_FBT(i32) #1

declare dso_local i32 @FSL_SAI_CR4_FRSZ(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FSL_SAI_TCR4(i32) #1

declare dso_local i32 @FSL_SAI_TCR5(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @FSL_SAI_RCR4(i32) #1

declare dso_local i32 @FSL_SAI_RCR5(i32) #1

declare dso_local i32 @FSL_SAI_xCR4(i32, i32) #1

declare dso_local i32 @FSL_SAI_xCR5(i32, i32) #1

declare dso_local i32 @FSL_SAI_xMR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
