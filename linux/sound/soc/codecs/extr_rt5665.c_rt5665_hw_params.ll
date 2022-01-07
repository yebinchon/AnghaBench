; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5665.c_rt5665_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5665_priv = type { i32*, i64*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Force using PLL\00", align 1
@RT5665_PLL1_S_MCLK = common dso_local global i32 0, align 4
@RT5665_SCLK_S_PLL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", align 1
@RT5665_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5665_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5665_I2S_DL_8 = common dso_local global i32 0, align 4
@RT5665_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5665_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5665_I2S_PD1_SFT = common dso_local global i32 0, align 4
@RT5665_I2S1_SDP = common dso_local global i32 0, align 4
@RT5665_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5665_ADDA_CLK_2 = common dso_local global i32 0, align 4
@RT5665_I2S_PD2_MASK = common dso_local global i32 0, align 4
@RT5665_I2S_PD2_SFT = common dso_local global i32 0, align 4
@RT5665_I2S2_SDP = common dso_local global i32 0, align 4
@RT5665_I2S_PD3_MASK = common dso_local global i32 0, align 4
@RT5665_I2S_PD3_SFT = common dso_local global i32 0, align 4
@RT5665_I2S3_SDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@RT5665_STO1_DAC_SIL_DET = common dso_local global i32 0, align 4
@RT5665_DAC_OSR_MASK = common dso_local global i32 0, align 4
@RT5665_ADC_OSR_MASK = common dso_local global i32 0, align 4
@RT5665_DAC_OSR_32 = common dso_local global i32 0, align 4
@RT5665_ADC_OSR_32 = common dso_local global i32 0, align 4
@RT5665_DAC_OSR_64 = common dso_local global i32 0, align 4
@RT5665_ADC_OSR_64 = common dso_local global i32 0, align 4
@RT5665_DAC_OSR_128 = common dso_local global i32 0, align 4
@RT5665_ADC_OSR_128 = common dso_local global i32 0, align 4
@RT5665_I2S_M_CLK_CTRL_1 = common dso_local global i32 0, align 4
@RT5665_I2S2_M_PD_MASK = common dso_local global i32 0, align 4
@RT5665_I2S2_M_PD_SFT = common dso_local global i32 0, align 4
@RT5665_I2S3_M_PD_MASK = common dso_local global i32 0, align 4
@RT5665_I2S3_M_PD_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5665_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5665_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5665_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %8, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = call %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.rt5665_priv* %21, %struct.rt5665_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 256, i32* %14, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %23, i32* %30, align 4
  %31 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %32 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rl6231_get_clk_info(i32 %33, i32 %41)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %3
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_warn(i32 %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = load i32, i32* @RT5665_PLL1_S_MCLK, align 4
  %52 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %53 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %56 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %59 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 512
  %64 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %50, i32 0, i32 %51, i32 %54, i32 %63)
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %66 = load i32, i32* @RT5665_SCLK_S_PLL1, align 4
  %67 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %68 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %74, 512
  %76 = call i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component* %65, i32 %66, i32 0, i32 %75, i32 0)
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %45, %3
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %79 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %78)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %84 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %270

90:                                               ; preds = %77
  %91 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %92 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %95 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @dev_dbg(i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, i64 %105)
  %107 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %108 = call i32 @params_width(%struct.snd_pcm_hw_params* %107)
  switch i32 %108, label %122 [
    i32 16, label %109
    i32 20, label %110
    i32 24, label %114
    i32 8, label %118
  ]

109:                                              ; preds = %90
  store i32 256, i32* %14, align 4
  br label %125

110:                                              ; preds = %90
  %111 = load i32, i32* @RT5665_I2S_DL_20, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  store i32 4864, i32* %14, align 4
  br label %125

114:                                              ; preds = %90
  %115 = load i32, i32* @RT5665_I2S_DL_24, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  store i32 9472, i32* %14, align 4
  br label %125

118:                                              ; preds = %90
  %119 = load i32, i32* @RT5665_I2S_DL_8, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %125

122:                                              ; preds = %90
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %270

125:                                              ; preds = %118, %114, %110, %109
  %126 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %127 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  switch i64 %128, label %173 [
    i64 132, label %129
    i64 131, label %129
    i64 130, label %151
    i64 129, label %151
    i64 128, label %162
  ]

129:                                              ; preds = %125, %125
  %130 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %131 = call i32 @params_channels(%struct.snd_pcm_hw_params* %130)
  %132 = icmp sgt i32 %131, 2
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %135 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %136 = call i32 @params_channels(%struct.snd_pcm_hw_params* %135)
  %137 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %138 = call i32 @params_width(%struct.snd_pcm_hw_params* %137)
  %139 = call i32 @rt5665_set_tdm_slot(%struct.snd_soc_dai* %134, i32 15, i32 15, i32 %136, i32 %138)
  br label %140

140:                                              ; preds = %133, %129
  %141 = load i32, i32* @RT5665_ADDA_CLK_1, align 4
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* @RT5665_I2S_PD1_MASK, align 4
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @RT5665_I2S_PD1_SFT, align 4
  %145 = shl i32 %143, %144
  store i32 %145, i32* %11, align 4
  %146 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %147 = load i32, i32* @RT5665_I2S1_SDP, align 4
  %148 = load i32, i32* @RT5665_I2S_DL_MASK, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %146, i32 %147, i32 %148, i32 %149)
  br label %184

151:                                              ; preds = %125, %125
  %152 = load i32, i32* @RT5665_ADDA_CLK_2, align 4
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* @RT5665_I2S_PD2_MASK, align 4
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @RT5665_I2S_PD2_SFT, align 4
  %156 = shl i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %158 = load i32, i32* @RT5665_I2S2_SDP, align 4
  %159 = load i32, i32* @RT5665_I2S_DL_MASK, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %157, i32 %158, i32 %159, i32 %160)
  br label %184

162:                                              ; preds = %125
  %163 = load i32, i32* @RT5665_ADDA_CLK_2, align 4
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* @RT5665_I2S_PD3_MASK, align 4
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* @RT5665_I2S_PD3_SFT, align 4
  %167 = shl i32 %165, %166
  store i32 %167, i32* %11, align 4
  %168 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %169 = load i32, i32* @RT5665_I2S3_SDP, align 4
  %170 = load i32, i32* @RT5665_I2S_DL_MASK, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %168, i32 %169, i32 %170, i32 %171)
  br label %184

173:                                              ; preds = %125
  %174 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %175 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %178 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = call i32 @dev_err(i32 %176, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %4, align 4
  br label %270

184:                                              ; preds = %162, %151, %140
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %185, i32 %186, i32 %187, i32 %188)
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %191 = load i32, i32* @RT5665_STO1_DAC_SIL_DET, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %190, i32 %191, i32 14080, i32 %192)
  %194 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %195 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %198 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  switch i32 %201, label %222 [
    i32 192000, label %202
    i32 96000, label %212
  ]

202:                                              ; preds = %184
  %203 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %204 = load i32, i32* @RT5665_ADDA_CLK_1, align 4
  %205 = load i32, i32* @RT5665_DAC_OSR_MASK, align 4
  %206 = load i32, i32* @RT5665_ADC_OSR_MASK, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @RT5665_DAC_OSR_32, align 4
  %209 = load i32, i32* @RT5665_ADC_OSR_32, align 4
  %210 = or i32 %208, %209
  %211 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %203, i32 %204, i32 %207, i32 %210)
  br label %232

212:                                              ; preds = %184
  %213 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %214 = load i32, i32* @RT5665_ADDA_CLK_1, align 4
  %215 = load i32, i32* @RT5665_DAC_OSR_MASK, align 4
  %216 = load i32, i32* @RT5665_ADC_OSR_MASK, align 4
  %217 = or i32 %215, %216
  %218 = load i32, i32* @RT5665_DAC_OSR_64, align 4
  %219 = load i32, i32* @RT5665_ADC_OSR_64, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %213, i32 %214, i32 %217, i32 %220)
  br label %232

222:                                              ; preds = %184
  %223 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %224 = load i32, i32* @RT5665_ADDA_CLK_1, align 4
  %225 = load i32, i32* @RT5665_DAC_OSR_MASK, align 4
  %226 = load i32, i32* @RT5665_ADC_OSR_MASK, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @RT5665_DAC_OSR_128, align 4
  %229 = load i32, i32* @RT5665_ADC_OSR_128, align 4
  %230 = or i32 %228, %229
  %231 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %223, i32 %224, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %222, %212, %202
  %233 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %234 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %233, i32 0, i32 1
  %235 = load i64*, i64** %234, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 130
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %232
  %240 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %241 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 129
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %239, %232
  %247 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %248 = load i32, i32* @RT5665_I2S_M_CLK_CTRL_1, align 4
  %249 = load i32, i32* @RT5665_I2S2_M_PD_MASK, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load i32, i32* @RT5665_I2S2_M_PD_SFT, align 4
  %252 = shl i32 %250, %251
  %253 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %247, i32 %248, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %246, %239
  %255 = load %struct.rt5665_priv*, %struct.rt5665_priv** %9, align 8
  %256 = getelementptr inbounds %struct.rt5665_priv, %struct.rt5665_priv* %255, i32 0, i32 1
  %257 = load i64*, i64** %256, align 8
  %258 = getelementptr inbounds i64, i64* %257, i64 128
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %269

261:                                              ; preds = %254
  %262 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %263 = load i32, i32* @RT5665_I2S_M_CLK_CTRL_1, align 4
  %264 = load i32, i32* @RT5665_I2S3_M_PD_MASK, align 4
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* @RT5665_I2S3_M_PD_SFT, align 4
  %267 = shl i32 %265, %266
  %268 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %262, i32 %263, i32 %264, i32 %267)
  br label %269

269:                                              ; preds = %261, %254
  store i32 0, i32* %4, align 4
  br label %270

270:                                              ; preds = %269, %173, %122, %82
  %271 = load i32, i32* %4, align 4
  ret i32 %271
}

declare dso_local %struct.rt5665_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_component_set_pll(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_set_sysclk(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rt5665_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
