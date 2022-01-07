; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt1011_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Force using PLL \00", align 1
@RT1011_PLL1_S_BCLK = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_S_PLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", align 1
@RT1011_I2S_TX_DL_16B = common dso_local global i32 0, align 4
@RT1011_I2S_RX_DL_16B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_TX_LEN_16B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_RX_LEN_16B = common dso_local global i32 0, align 4
@RT1011_I2S_TX_DL_20B = common dso_local global i32 0, align 4
@RT1011_I2S_RX_DL_20B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_TX_LEN_20B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_RX_LEN_20B = common dso_local global i32 0, align 4
@RT1011_I2S_TX_DL_24B = common dso_local global i32 0, align 4
@RT1011_I2S_RX_DL_24B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_TX_LEN_24B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_RX_LEN_24B = common dso_local global i32 0, align 4
@RT1011_I2S_TX_DL_32B = common dso_local global i32 0, align 4
@RT1011_I2S_RX_DL_32B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_TX_LEN_32B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_RX_LEN_32B = common dso_local global i32 0, align 4
@RT1011_I2S_TX_DL_8B = common dso_local global i32 0, align 4
@RT1011_I2S_RX_DL_8B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_TX_LEN_8B = common dso_local global i32 0, align 4
@RT1011_I2S_CH_RX_LEN_8B = common dso_local global i32 0, align 4
@RT1011_FS_SYS_DIV_MASK = common dso_local global i32 0, align 4
@RT1011_FS_SYS_DIV_SFT = common dso_local global i32 0, align 4
@RT1011_TDM_TOTAL_SET = common dso_local global i32 0, align 4
@RT1011_I2S_TX_DL_MASK = common dso_local global i32 0, align 4
@RT1011_I2S_RX_DL_MASK = common dso_local global i32 0, align 4
@RT1011_TDM1_SET_1 = common dso_local global i32 0, align 4
@RT1011_I2S_CH_TX_LEN_MASK = common dso_local global i32 0, align 4
@RT1011_I2S_CH_RX_LEN_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@RT1011_CLK_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt1011_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt1011_priv*, align 8
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
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 1
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %8, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = call %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.rt1011_priv* %21, %struct.rt1011_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %27 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %30 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rt1011_get_clk_info(i32 %28, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %3
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_warn(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %41 = load i32, i32* @RT1011_PLL1_S_BCLK, align 4
  %42 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %43 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 64
  %46 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %47 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 256
  %50 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %40, i32 0, i32 %41, i32 %45, i32 %49)
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %52 = load i32, i32* @RT1011_FS_SYS_PRE_S_PLL1, align 4
  %53 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %54 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %55, 256
  %57 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %58 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %51, i32 %52, i32 %56, i32 %57)
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %35, %3
  %60 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %61 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %213

72:                                               ; preds = %59
  %73 = load i32, i32* %16, align 4
  %74 = icmp sgt i32 %73, 32
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %15, align 4
  %76 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %77 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = shl i32 32, %79
  %81 = mul nsw i32 %78, %80
  %82 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %83 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %90 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %88, i32 %91)
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %94 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rt1011_priv*, %struct.rt1011_priv** %9, align 8
  %97 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %101 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_dbg(i32 %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %98, i32 %99, i32 %102)
  %104 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %105 = call i32 @params_width(%struct.snd_pcm_hw_params* %104)
  switch i32 %105, label %171 [
    i32 16, label %106
    i32 20, label %119
    i32 24, label %132
    i32 32, label %145
    i32 8, label %158
  ]

106:                                              ; preds = %72
  %107 = load i32, i32* @RT1011_I2S_TX_DL_16B, align 4
  %108 = load i32, i32* %10, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* @RT1011_I2S_RX_DL_16B, align 4
  %111 = load i32, i32* %10, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* @RT1011_I2S_CH_TX_LEN_16B, align 4
  %114 = load i32, i32* %11, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* @RT1011_I2S_CH_RX_LEN_16B, align 4
  %117 = load i32, i32* %11, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %11, align 4
  br label %174

119:                                              ; preds = %72
  %120 = load i32, i32* @RT1011_I2S_TX_DL_20B, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* @RT1011_I2S_RX_DL_20B, align 4
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* @RT1011_I2S_CH_TX_LEN_20B, align 4
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* @RT1011_I2S_CH_RX_LEN_20B, align 4
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %174

132:                                              ; preds = %72
  %133 = load i32, i32* @RT1011_I2S_TX_DL_24B, align 4
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @RT1011_I2S_RX_DL_24B, align 4
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* @RT1011_I2S_CH_TX_LEN_24B, align 4
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* @RT1011_I2S_CH_RX_LEN_24B, align 4
  %143 = load i32, i32* %11, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %174

145:                                              ; preds = %72
  %146 = load i32, i32* @RT1011_I2S_TX_DL_32B, align 4
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* @RT1011_I2S_RX_DL_32B, align 4
  %150 = load i32, i32* %10, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @RT1011_I2S_CH_TX_LEN_32B, align 4
  %153 = load i32, i32* %11, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* @RT1011_I2S_CH_RX_LEN_32B, align 4
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %11, align 4
  br label %174

158:                                              ; preds = %72
  %159 = load i32, i32* @RT1011_I2S_TX_DL_8B, align 4
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* @RT1011_I2S_RX_DL_8B, align 4
  %163 = load i32, i32* %10, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* @RT1011_I2S_CH_TX_LEN_8B, align 4
  %166 = load i32, i32* %11, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* @RT1011_I2S_CH_RX_LEN_8B, align 4
  %169 = load i32, i32* %11, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %11, align 4
  br label %174

171:                                              ; preds = %72
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %213

174:                                              ; preds = %158, %145, %132, %119, %106
  %175 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %176 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %197 [
    i32 128, label %178
  ]

178:                                              ; preds = %174
  %179 = load i32, i32* @RT1011_FS_SYS_DIV_MASK, align 4
  store i32 %179, i32* %13, align 4
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* @RT1011_FS_SYS_DIV_SFT, align 4
  %182 = shl i32 %180, %181
  store i32 %182, i32* %12, align 4
  %183 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %184 = load i32, i32* @RT1011_TDM_TOTAL_SET, align 4
  %185 = load i32, i32* @RT1011_I2S_TX_DL_MASK, align 4
  %186 = load i32, i32* @RT1011_I2S_RX_DL_MASK, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %183, i32 %184, i32 %187, i32 %188)
  %190 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %191 = load i32, i32* @RT1011_TDM1_SET_1, align 4
  %192 = load i32, i32* @RT1011_I2S_CH_TX_LEN_MASK, align 4
  %193 = load i32, i32* @RT1011_I2S_CH_RX_LEN_MASK, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %190, i32 %191, i32 %194, i32 %195)
  br label %207

197:                                              ; preds = %174
  %198 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %199 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %202 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @dev_err(i32 %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %4, align 4
  br label %213

207:                                              ; preds = %178
  %208 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %209 = load i32, i32* @RT1011_CLK_2, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %208, i32 %209, i32 %210, i32 %211)
  store i32 0, i32* %4, align 4
  br label %213

213:                                              ; preds = %207, %197, %171, %64
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rt1011_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
