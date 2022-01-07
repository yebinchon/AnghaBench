; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_pdm.c_rockchip_pdm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/rockchip/extr_rockchip_pdm.c_rockchip_pdm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.rk_pdm_dev = type { i64, i32, i32, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RK_PDM_RK3308 = common dso_local global i64 0, align 8
@PDM_FD_NUMERATOR_SFT = common dso_local global i64 0, align 8
@PDM_FD_DENOMINATOR_SFT = common dso_local global i64 0, align 8
@PDM_CTRL1 = common dso_local global i32 0, align 4
@PDM_FD_NUMERATOR_MSK = common dso_local global i32 0, align 4
@PDM_FD_DENOMINATOR_MSK = common dso_local global i32 0, align 4
@PDM_CLK_FD_RATIO_40 = common dso_local global i32 0, align 4
@PDM_CLK_FD_RATIO_35 = common dso_local global i32 0, align 4
@PDM_CLK_CTRL = common dso_local global i32 0, align 4
@PDM_CLK_FD_RATIO_MSK = common dso_local global i32 0, align 4
@PDM_DS_RATIO_MSK = common dso_local global i32 0, align 4
@PDM_HPF_CTRL = common dso_local global i32 0, align 4
@PDM_HPF_CF_MSK = common dso_local global i32 0, align 4
@PDM_HPF_60HZ = common dso_local global i32 0, align 4
@PDM_HPF_LE = common dso_local global i32 0, align 4
@PDM_HPF_RE = common dso_local global i32 0, align 4
@PDM_CLK_EN = common dso_local global i32 0, align 4
@RK_PDM_RK3229 = common dso_local global i64 0, align 8
@PDM_CTRL0 = common dso_local global i32 0, align 4
@PDM_MODE_MSK = common dso_local global i32 0, align 4
@PDM_MODE_LJ = common dso_local global i32 0, align 4
@PDM_PATH3_EN = common dso_local global i32 0, align 4
@PDM_PATH2_EN = common dso_local global i32 0, align 4
@PDM_PATH1_EN = common dso_local global i32 0, align 4
@PDM_PATH0_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid channel: %d\0A\00", align 1
@PDM_PATH_MSK = common dso_local global i32 0, align 4
@PDM_VDW_MSK = common dso_local global i32 0, align 4
@PDM_DMA_CTRL = common dso_local global i32 0, align 4
@PDM_DMA_RDL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rockchip_pdm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pdm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.rk_pdm_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = call %struct.rk_pdm_dev* @to_info(%struct.snd_soc_dai* %19)
  store %struct.rk_pdm_dev* %20, %struct.rk_pdm_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %239

27:                                               ; preds = %3
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %29 = call i32 @params_rate(%struct.snd_pcm_hw_params* %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @get_pdm_clk(%struct.rk_pdm_dev* %30, i32 %31, i32* %13, i32* %14)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %239

38:                                               ; preds = %27
  %39 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %40 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @clk_set_rate(i32 %41, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %239

49:                                               ; preds = %38
  %50 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %51 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RK_PDM_RK3308, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %117

55:                                               ; preds = %49
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @GENMASK(i32 15, i32 0)
  %59 = call i32 @GENMASK(i32 15, i32 0)
  %60 = call i32 @rational_best_approximation(i32 %56, i32 %57, i32 %58, i32 %59, i64* %15, i64* %16)
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* @PDM_FD_NUMERATOR_SFT, align 8
  %63 = shl i64 %61, %62
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* @PDM_FD_DENOMINATOR_SFT, align 8
  %66 = shl i64 %64, %65
  %67 = or i64 %63, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %70 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PDM_CTRL1, align 4
  %73 = load i32, i32* @PDM_FD_NUMERATOR_MSK, align 4
  %74 = load i32, i32* @PDM_FD_DENOMINATOR_MSK, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @regmap_update_bits_check(i32 %71, i32 %72, i32 %75, i32 %76, i32* %17)
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %55
  %81 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %82 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @reset_control_assert(i32 %83)
  %85 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %86 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @reset_control_deassert(i32 %87)
  %89 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %90 = call i32 @rockchip_pdm_rxctrl(%struct.rk_pdm_dev* %89, i32 0)
  br label %91

91:                                               ; preds = %80, %55
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %15, align 8
  %94 = udiv i64 %92, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp uge i32 %96, 40
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @PDM_CLK_FD_RATIO_40, align 4
  store i32 %99, i32* %9, align 4
  br label %109

100:                                              ; preds = %91
  %101 = load i32, i32* %11, align 4
  %102 = icmp ule i32 %101, 35
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @PDM_CLK_FD_RATIO_35, align 4
  store i32 %104, i32* %9, align 4
  br label %108

105:                                              ; preds = %100
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %239

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %98
  %110 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %111 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @PDM_CLK_CTRL, align 4
  %114 = load i32, i32* @PDM_CLK_FD_RATIO_MSK, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @regmap_update_bits(i32 %112, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %49
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @get_pdm_ds_ratio(i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %121 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @PDM_CLK_CTRL, align 4
  %124 = load i32, i32* @PDM_DS_RATIO_MSK, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @regmap_update_bits(i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %128 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PDM_HPF_CTRL, align 4
  %131 = load i32, i32* @PDM_HPF_CF_MSK, align 4
  %132 = load i32, i32* @PDM_HPF_60HZ, align 4
  %133 = call i32 @regmap_update_bits(i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %135 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PDM_HPF_CTRL, align 4
  %138 = load i32, i32* @PDM_HPF_LE, align 4
  %139 = load i32, i32* @PDM_HPF_RE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @PDM_HPF_LE, align 4
  %142 = load i32, i32* @PDM_HPF_RE, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @regmap_update_bits(i32 %136, i32 %137, i32 %140, i32 %143)
  %145 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %146 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PDM_CLK_CTRL, align 4
  %149 = load i32, i32* @PDM_CLK_EN, align 4
  %150 = load i32, i32* @PDM_CLK_EN, align 4
  %151 = call i32 @regmap_update_bits(i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %153 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @RK_PDM_RK3229, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %117
  %158 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %159 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @PDM_CTRL0, align 4
  %162 = load i32, i32* @PDM_MODE_MSK, align 4
  %163 = load i32, i32* @PDM_MODE_LJ, align 4
  %164 = call i32 @regmap_update_bits(i32 %160, i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %157, %117
  store i32 0, i32* %9, align 4
  %166 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %167 = call i32 @params_format(%struct.snd_pcm_hw_params* %166)
  switch i32 %167, label %188 [
    i32 128, label %168
    i32 132, label %172
    i32 131, label %176
    i32 130, label %180
    i32 129, label %184
  ]

168:                                              ; preds = %165
  %169 = call i32 @PDM_VDW(i32 8)
  %170 = load i32, i32* %9, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %9, align 4
  br label %191

172:                                              ; preds = %165
  %173 = call i32 @PDM_VDW(i32 16)
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %9, align 4
  br label %191

176:                                              ; preds = %165
  %177 = call i32 @PDM_VDW(i32 20)
  %178 = load i32, i32* %9, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %9, align 4
  br label %191

180:                                              ; preds = %165
  %181 = call i32 @PDM_VDW(i32 24)
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  br label %191

184:                                              ; preds = %165
  %185 = call i32 @PDM_VDW(i32 32)
  %186 = load i32, i32* %9, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %9, align 4
  br label %191

188:                                              ; preds = %165
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %4, align 4
  br label %239

191:                                              ; preds = %184, %180, %176, %172, %168
  %192 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %193 = call i32 @params_channels(%struct.snd_pcm_hw_params* %192)
  switch i32 %193, label %210 [
    i32 8, label %194
    i32 6, label %198
    i32 4, label %202
    i32 2, label %206
  ]

194:                                              ; preds = %191
  %195 = load i32, i32* @PDM_PATH3_EN, align 4
  %196 = load i32, i32* %9, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %9, align 4
  br label %198

198:                                              ; preds = %191, %194
  %199 = load i32, i32* @PDM_PATH2_EN, align 4
  %200 = load i32, i32* %9, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %191, %198
  %203 = load i32, i32* @PDM_PATH1_EN, align 4
  %204 = load i32, i32* %9, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %191, %202
  %207 = load i32, i32* @PDM_PATH0_EN, align 4
  %208 = load i32, i32* %9, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %9, align 4
  br label %219

210:                                              ; preds = %191
  %211 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %212 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %215 = call i32 @params_channels(%struct.snd_pcm_hw_params* %214)
  %216 = call i32 @dev_err(i32 %213, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @EINVAL, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %4, align 4
  br label %239

219:                                              ; preds = %206
  %220 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %221 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @PDM_CTRL0, align 4
  %224 = load i32, i32* @PDM_PATH_MSK, align 4
  %225 = load i32, i32* @PDM_VDW_MSK, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %9, align 4
  %228 = call i32 @regmap_update_bits(i32 %222, i32 %223, i32 %226, i32 %227)
  %229 = load %struct.rk_pdm_dev*, %struct.rk_pdm_dev** %8, align 8
  %230 = getelementptr inbounds %struct.rk_pdm_dev, %struct.rk_pdm_dev* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @PDM_DMA_CTRL, align 4
  %233 = load i32, i32* @PDM_DMA_RDL_MSK, align 4
  %234 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %235 = call i32 @params_channels(%struct.snd_pcm_hw_params* %234)
  %236 = mul nsw i32 8, %235
  %237 = call i32 @PDM_DMA_RDL(i32 %236)
  %238 = call i32 @regmap_update_bits(i32 %231, i32 %232, i32 %233, i32 %237)
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %219, %210, %188, %105, %46, %35, %26
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.rk_pdm_dev* @to_info(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @get_pdm_clk(%struct.rk_pdm_dev*, i32, i32*, i32*) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @rational_best_approximation(i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @regmap_update_bits_check(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @rockchip_pdm_rxctrl(%struct.rk_pdm_dev*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @get_pdm_ds_ratio(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @PDM_VDW(i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PDM_DMA_RDL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
