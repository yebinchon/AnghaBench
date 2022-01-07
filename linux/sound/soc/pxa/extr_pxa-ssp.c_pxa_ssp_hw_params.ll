; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ssp_clock_mode = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.ssp_priv = type { i32, i32, %struct.ssp_device* }
%struct.ssp_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_dmaengine_dai_dma_data = type { i32 }

@SSTSA = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SSCR0 = common dso_local global i32 0, align 4
@SSCR0_SSE = common dso_local global i32 0, align 4
@SSCR0_DSS = common dso_local global i32 0, align 4
@SSCR0_EDSS = common dso_local global i32 0, align 4
@PXA3xx_SSP = common dso_local global i32 0, align 4
@SSCR0_FPCKE = common dso_local global i32 0, align 4
@SSCR0_ACS = common dso_local global i32 0, align 4
@pxa_ssp_clock_modes = common dso_local global %struct.pxa_ssp_clock_mode* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SSACD = common dso_local global i32 0, align 4
@SSACD_SCDB_1X = common dso_local global i32 0, align 4
@SSCR0_ECS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SSPSP = common dso_local global i32 0, align 4
@SSCR0_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No TDM timeslot configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @pxa_ssp_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.ssp_priv*, align 8
  %9 = alloca %struct.ssp_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_dmaengine_dai_dma_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pxa_ssp_clock_mode*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %23 = call %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %22)
  store %struct.ssp_priv* %23, %struct.ssp_priv** %8, align 8
  %24 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %25 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %24, i32 0, i32 2
  %26 = load %struct.ssp_device*, %struct.ssp_device** %25, align 8
  store %struct.ssp_device* %26, %struct.ssp_device** %9, align 8
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %28 = call i32 @params_channels(%struct.snd_pcm_hw_params* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %30 = call i32 @params_format(%struct.snd_pcm_hw_params* %29)
  %31 = call i32 @snd_pcm_format_physical_width(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %33 = load i32, i32* @SSTSA, align 4
  %34 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %32, i32 %33)
  %35 = and i32 %34, 15
  store i32 %35, i32* %14, align 4
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %37 = call i32 @params_rate(%struct.snd_pcm_hw_params* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = sdiv i32 %41, 8
  %43 = mul nsw i32 %40, %42
  store i32 %43, i32* %17, align 4
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %46 = call %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %44, %struct.snd_pcm_substream* %45)
  store %struct.snd_dmaengine_dai_dma_data* %46, %struct.snd_dmaengine_dai_dma_data** %15, align 8
  %47 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %3
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %3
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 32
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ true, %50 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load %struct.snd_dmaengine_dai_dma_data*, %struct.snd_dmaengine_dai_dma_data** %15, align 8
  %66 = call i32 @pxa_ssp_set_dma_params(%struct.ssp_device* %47, i32 %58, i32 %64, %struct.snd_dmaengine_dai_dma_data* %65)
  %67 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %68 = load i32, i32* @SSCR0, align 4
  %69 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %67, i32 %68)
  %70 = load i32, i32* @SSCR0_SSE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %302

74:                                               ; preds = %56
  %75 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %76 = call i32 @pxa_ssp_configure_dai_fmt(%struct.ssp_priv* %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %18, align 4
  store i32 %80, i32* %4, align 4
  br label %302

81:                                               ; preds = %74
  %82 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %83 = load i32, i32* @SSCR0, align 4
  %84 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %82, i32 %83)
  %85 = load i32, i32* @SSCR0_DSS, align 4
  %86 = load i32, i32* @SSCR0_EDSS, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = and i32 %84, %88
  store i32 %89, i32* %11, align 4
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %91 = call i32 @params_format(%struct.snd_pcm_hw_params* %90)
  switch i32 %91, label %118 [
    i32 131, label %92
    i32 130, label %106
    i32 129, label %112
  ]

92:                                               ; preds = %81
  %93 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %94 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PXA3xx_SSP, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* @SSCR0_FPCKE, align 4
  %100 = load i32, i32* %11, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %98, %92
  %103 = call i32 @SSCR0_DataSize(i32 16)
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %118

106:                                              ; preds = %81
  %107 = load i32, i32* @SSCR0_EDSS, align 4
  %108 = call i32 @SSCR0_DataSize(i32 8)
  %109 = or i32 %107, %108
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  br label %118

112:                                              ; preds = %81
  %113 = load i32, i32* @SSCR0_EDSS, align 4
  %114 = call i32 @SSCR0_DataSize(i32 16)
  %115 = or i32 %113, %114
  %116 = load i32, i32* %11, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %81, %112, %106, %102
  %119 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %120 = load i32, i32* @SSCR0, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %119, i32 %120, i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @SSCR0_ACS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %202

127:                                              ; preds = %118
  %128 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %129 = load i32, i32* %17, align 4
  %130 = call i32 @pxa_ssp_set_pll(%struct.ssp_priv* %128, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load i32, i32* %18, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %201

133:                                              ; preds = %127
  %134 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** @pxa_ssp_clock_modes, align 8
  store %struct.pxa_ssp_clock_mode* %134, %struct.pxa_ssp_clock_mode** %19, align 8
  br label %135

135:                                              ; preds = %148, %133
  %136 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** %19, align 8
  %137 = getelementptr inbounds %struct.pxa_ssp_clock_mode, %struct.pxa_ssp_clock_mode* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %135
  %141 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** %19, align 8
  %142 = getelementptr inbounds %struct.pxa_ssp_clock_mode, %struct.pxa_ssp_clock_mode* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %151

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** %19, align 8
  %150 = getelementptr inbounds %struct.pxa_ssp_clock_mode, %struct.pxa_ssp_clock_mode* %149, i32 1
  store %struct.pxa_ssp_clock_mode* %150, %struct.pxa_ssp_clock_mode** %19, align 8
  br label %135

151:                                              ; preds = %146, %135
  %152 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** %19, align 8
  %153 = getelementptr inbounds %struct.pxa_ssp_clock_mode, %struct.pxa_ssp_clock_mode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %302

159:                                              ; preds = %151
  %160 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** %19, align 8
  %161 = getelementptr inbounds %struct.pxa_ssp_clock_mode, %struct.pxa_ssp_clock_mode* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %21, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 32
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %21, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %165, %159
  %169 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @pxa_ssp_set_pll(%struct.ssp_priv* %169, i32 %170)
  store i32 %171, i32* %18, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* %18, align 4
  store i32 %175, i32* %4, align 4
  br label %302

176:                                              ; preds = %168
  %177 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %178 = load i32, i32* @SSACD, align 4
  %179 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %177, i32 %178)
  store i32 %179, i32* %20, align 4
  %180 = call i32 @SSACD_ACDS(i32 7)
  %181 = load i32, i32* @SSACD_SCDB_1X, align 4
  %182 = or i32 %180, %181
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %20, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %20, align 4
  %186 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** %19, align 8
  %187 = getelementptr inbounds %struct.pxa_ssp_clock_mode, %struct.pxa_ssp_clock_mode* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @SSACD_ACDS(i32 %188)
  %190 = load i32, i32* %20, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %20, align 4
  %192 = load %struct.pxa_ssp_clock_mode*, %struct.pxa_ssp_clock_mode** %19, align 8
  %193 = getelementptr inbounds %struct.pxa_ssp_clock_mode, %struct.pxa_ssp_clock_mode* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %20, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %20, align 4
  %197 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %198 = load i32, i32* @SSACD, align 4
  %199 = load i32, i32* %20, align 4
  %200 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %176, %127
  br label %214

202:                                              ; preds = %118
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* @SSCR0_ECS, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %202
  %208 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* %16, align 4
  %211 = sdiv i32 %209, %210
  %212 = call i32 @pxa_ssp_set_scr(%struct.ssp_device* %208, i32 %211)
  br label %213

213:                                              ; preds = %207, %202
  br label %214

214:                                              ; preds = %213, %201
  %215 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %216 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %219 = and i32 %217, %218
  switch i32 %219, label %282 [
    i32 128, label %220
  ]

220:                                              ; preds = %214
  %221 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %222 = load i32, i32* @SSPSP, align 4
  %223 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %221, i32 %222)
  store i32 %223, i32* %12, align 4
  %224 = load %struct.ssp_priv*, %struct.ssp_priv** %8, align 8
  %225 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %17, align 4
  %228 = sdiv i32 %226, %227
  %229 = icmp eq i32 %228, 64
  br i1 %229, label %230, label %262

230:                                              ; preds = %220
  %231 = load i32, i32* %13, align 4
  %232 = icmp eq i32 %231, 16
  br i1 %232, label %233, label %262

233:                                              ; preds = %230
  %234 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %235 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @PXA3xx_SSP, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %4, align 4
  br label %302

242:                                              ; preds = %233
  %243 = load i32, i32* %13, align 4
  %244 = mul nsw i32 %243, 2
  %245 = call i32 @SSPSP_SFRMWDTH(i32 %244)
  %246 = load i32, i32* %12, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %12, align 4
  %248 = load i32, i32* %13, align 4
  %249 = mul nsw i32 %248, 4
  %250 = call i32 @SSPSP_SFRMDLY(i32 %249)
  %251 = load i32, i32* %12, align 4
  %252 = or i32 %251, %250
  store i32 %252, i32* %12, align 4
  %253 = call i32 @SSPSP_EDMYSTOP(i32 3)
  %254 = load i32, i32* %12, align 4
  %255 = or i32 %254, %253
  store i32 %255, i32* %12, align 4
  %256 = call i32 @SSPSP_DMYSTOP(i32 3)
  %257 = load i32, i32* %12, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %12, align 4
  %259 = call i32 @SSPSP_DMYSTRT(i32 1)
  %260 = load i32, i32* %12, align 4
  %261 = or i32 %260, %259
  store i32 %261, i32* %12, align 4
  br label %277

262:                                              ; preds = %230, %220
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 1
  %265 = call i32 @SSPSP_SFRMWDTH(i32 %264)
  %266 = load i32, i32* %12, align 4
  %267 = or i32 %266, %265
  store i32 %267, i32* %12, align 4
  %268 = load i32, i32* %13, align 4
  %269 = add nsw i32 %268, 1
  %270 = mul nsw i32 %269, 2
  %271 = call i32 @SSPSP_SFRMDLY(i32 %270)
  %272 = load i32, i32* %12, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %12, align 4
  %274 = call i32 @SSPSP_DMYSTRT(i32 1)
  %275 = load i32, i32* %12, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %12, align 4
  br label %277

277:                                              ; preds = %262, %242
  %278 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %279 = load i32, i32* @SSPSP, align 4
  %280 = load i32, i32* %12, align 4
  %281 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %278, i32 %279, i32 %280)
  br label %283

282:                                              ; preds = %214
  br label %283

283:                                              ; preds = %282, %277
  %284 = load i32, i32* %11, align 4
  %285 = load i32, i32* @SSCR0_MOD, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %283
  %289 = load i32, i32* %14, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %288
  %292 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %293 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %292, i32 0, i32 0
  %294 = load %struct.TYPE_2__*, %struct.TYPE_2__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 0
  %296 = call i32 @dev_err(i32* %295, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %297 = load i32, i32* @EINVAL, align 4
  %298 = sub nsw i32 0, %297
  store i32 %298, i32* %4, align 4
  br label %302

299:                                              ; preds = %288, %283
  %300 = load %struct.ssp_device*, %struct.ssp_device** %9, align 8
  %301 = call i32 @dump_registers(%struct.ssp_device* %300)
  store i32 0, i32* %4, align 4
  br label %302

302:                                              ; preds = %299, %291, %239, %174, %156, %79, %73
  %303 = load i32, i32* %4, align 4
  ret i32 %303
}

declare dso_local %struct.ssp_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local %struct.snd_dmaengine_dai_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @pxa_ssp_set_dma_params(%struct.ssp_device*, i32, i32, %struct.snd_dmaengine_dai_dma_data*) #1

declare dso_local i32 @pxa_ssp_configure_dai_fmt(%struct.ssp_priv*) #1

declare dso_local i32 @SSCR0_DataSize(i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @pxa_ssp_set_pll(%struct.ssp_priv*, i32) #1

declare dso_local i32 @SSACD_ACDS(i32) #1

declare dso_local i32 @pxa_ssp_set_scr(%struct.ssp_device*, i32) #1

declare dso_local i32 @SSPSP_SFRMWDTH(i32) #1

declare dso_local i32 @SSPSP_SFRMDLY(i32) #1

declare dso_local i32 @SSPSP_EDMYSTOP(i32) #1

declare dso_local i32 @SSPSP_DMYSTOP(i32) #1

declare dso_local i32 @SSPSP_DMYSTRT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dump_registers(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
