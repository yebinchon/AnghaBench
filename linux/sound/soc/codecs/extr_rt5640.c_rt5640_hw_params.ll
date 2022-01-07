; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@RT5640_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5640_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5640_I2S_DL_8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to get sdp info: %d\0A\00", align 1
@RT5640_U_IF1 = common dso_local global i32 0, align 4
@RT5640_I2S_BCLK_MS1_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_BCLK_MS1_SFT = common dso_local global i32 0, align 4
@RT5640_I2S_PD1_SFT = common dso_local global i32 0, align 4
@RT5640_I2S1_SDP = common dso_local global i32 0, align 4
@RT5640_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5640_ADDA_CLK1 = common dso_local global i32 0, align 4
@RT5640_U_IF2 = common dso_local global i32 0, align 4
@RT5640_I2S_BCLK_MS2_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_PD2_MASK = common dso_local global i32 0, align 4
@RT5640_I2S_BCLK_MS2_SFT = common dso_local global i32 0, align 4
@RT5640_I2S_PD2_SFT = common dso_local global i32 0, align 4
@RT5640_I2S2_SDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5640_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5640_priv*, align 8
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
  %21 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.rt5640_priv* %21, %struct.rt5640_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %23, i32* %30, align 4
  %31 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %32 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %38 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rl6231_get_clk_info(i32 %33, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %3
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %50 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %215

63:                                               ; preds = %3
  %64 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %65 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %70 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %4, align 4
  br label %215

75:                                               ; preds = %63
  %76 = load i32, i32* %16, align 4
  %77 = icmp sgt i32 %76, 32
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %80

79:                                               ; preds = %75
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %82 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %85 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = shl i32 32, %89
  %91 = mul nsw i32 %88, %90
  %92 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %93 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %96 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %91, i32* %98, align 4
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %103 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %106 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rt5640_priv*, %struct.rt5640_priv** %9, align 8
  %111 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %117)
  %119 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %120 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %125 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %123, i64 %126)
  %128 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %129 = call i32 @params_width(%struct.snd_pcm_hw_params* %128)
  switch i32 %129, label %143 [
    i32 16, label %130
    i32 20, label %131
    i32 24, label %135
    i32 8, label %139
  ]

130:                                              ; preds = %80
  br label %146

131:                                              ; preds = %80
  %132 = load i32, i32* @RT5640_I2S_DL_20, align 4
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %146

135:                                              ; preds = %80
  %136 = load i32, i32* @RT5640_I2S_DL_24, align 4
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %146

139:                                              ; preds = %80
  %140 = load i32, i32* @RT5640_I2S_DL_8, align 4
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  br label %146

143:                                              ; preds = %80
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %215

146:                                              ; preds = %139, %135, %131, %130
  %147 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %148 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %149 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @get_sdp_info(%struct.snd_soc_component* %147, i64 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %146
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %156 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %4, align 4
  br label %215

162:                                              ; preds = %146
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @RT5640_U_IF1, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %162
  %168 = load i32, i32* @RT5640_I2S_BCLK_MS1_MASK, align 4
  %169 = load i32, i32* @RT5640_I2S_PD1_MASK, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* @RT5640_I2S_BCLK_MS1_SFT, align 4
  %173 = shl i32 %171, %172
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @RT5640_I2S_PD1_SFT, align 4
  %176 = shl i32 %174, %175
  %177 = or i32 %173, %176
  store i32 %177, i32* %11, align 4
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %179 = load i32, i32* @RT5640_I2S1_SDP, align 4
  %180 = load i32, i32* @RT5640_I2S_DL_MASK, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %184 = load i32, i32* @RT5640_ADDA_CLK1, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %183, i32 %184, i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %167, %162
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @RT5640_U_IF2, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %214

193:                                              ; preds = %188
  %194 = load i32, i32* @RT5640_I2S_BCLK_MS2_MASK, align 4
  %195 = load i32, i32* @RT5640_I2S_PD2_MASK, align 4
  %196 = or i32 %194, %195
  store i32 %196, i32* %12, align 4
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* @RT5640_I2S_BCLK_MS2_SFT, align 4
  %199 = shl i32 %197, %198
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @RT5640_I2S_PD2_SFT, align 4
  %202 = shl i32 %200, %201
  %203 = or i32 %199, %202
  store i32 %203, i32* %11, align 4
  %204 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %205 = load i32, i32* @RT5640_I2S2_SDP, align 4
  %206 = load i32, i32* @RT5640_I2S_DL_MASK, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %204, i32 %205, i32 %206, i32 %207)
  %209 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %210 = load i32, i32* @RT5640_ADDA_CLK1, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* %11, align 4
  %213 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %209, i32 %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %193, %188
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %214, %154, %143, %68, %45
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @get_sdp_info(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
