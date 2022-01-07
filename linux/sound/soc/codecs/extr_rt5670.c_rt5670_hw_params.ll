; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5670_priv = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@RT5670_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5670_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5670_I2S_DL_8 = common dso_local global i32 0, align 4
@RT5670_I2S_BCLK_MS1_MASK = common dso_local global i32 0, align 4
@RT5670_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5670_I2S_BCLK_MS1_SFT = common dso_local global i32 0, align 4
@RT5670_I2S_PD1_SFT = common dso_local global i32 0, align 4
@RT5670_I2S1_SDP = common dso_local global i32 0, align 4
@RT5670_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5670_ADDA_CLK1 = common dso_local global i32 0, align 4
@RT5670_I2S_BCLK_MS2_MASK = common dso_local global i32 0, align 4
@RT5670_I2S_PD2_MASK = common dso_local global i32 0, align 4
@RT5670_I2S_BCLK_MS2_SFT = common dso_local global i32 0, align 4
@RT5670_I2S_PD2_SFT = common dso_local global i32 0, align 4
@RT5670_I2S2_SDP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5670_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5670_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 2
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %8, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %20 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5670_priv* %20, %struct.rt5670_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %34 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %37 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rl6231_get_clk_info(i32 %32, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %3
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %49 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %57 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %202

62:                                               ; preds = %3
  %63 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %64 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %202

75:                                               ; preds = %62
  %76 = load i32, i32* %15, align 4
  %77 = icmp sgt i32 %76, 32
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %14, align 4
  %79 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %80 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %83 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = shl i32 32, %87
  %89 = mul nsw i32 %86, %88
  %90 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %91 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %89, i32* %96, align 4
  %97 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %101 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %104 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %109 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %112 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %115)
  %117 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %118 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %123 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121, i64 %124)
  %126 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %127 = call i32 @params_width(%struct.snd_pcm_hw_params* %126)
  switch i32 %127, label %141 [
    i32 16, label %128
    i32 20, label %129
    i32 24, label %133
    i32 8, label %137
  ]

128:                                              ; preds = %75
  br label %144

129:                                              ; preds = %75
  %130 = load i32, i32* @RT5670_I2S_DL_20, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %144

133:                                              ; preds = %75
  %134 = load i32, i32* @RT5670_I2S_DL_24, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %144

137:                                              ; preds = %75
  %138 = load i32, i32* @RT5670_I2S_DL_8, align 4
  %139 = load i32, i32* %10, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %10, align 4
  br label %144

141:                                              ; preds = %75
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %202

144:                                              ; preds = %137, %133, %129, %128
  %145 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %146 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  switch i64 %147, label %190 [
    i64 129, label %148
    i64 128, label %169
  ]

148:                                              ; preds = %144
  %149 = load i32, i32* @RT5670_I2S_BCLK_MS1_MASK, align 4
  %150 = load i32, i32* @RT5670_I2S_PD1_MASK, align 4
  %151 = or i32 %149, %150
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @RT5670_I2S_BCLK_MS1_SFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @RT5670_I2S_PD1_SFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %154, %157
  store i32 %158, i32* %11, align 4
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %160 = load i32, i32* @RT5670_I2S1_SDP, align 4
  %161 = load i32, i32* @RT5670_I2S_DL_MASK, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %159, i32 %160, i32 %161, i32 %162)
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %165 = load i32, i32* @RT5670_ADDA_CLK1, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %166, i32 %167)
  br label %201

169:                                              ; preds = %144
  %170 = load i32, i32* @RT5670_I2S_BCLK_MS2_MASK, align 4
  %171 = load i32, i32* @RT5670_I2S_PD2_MASK, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @RT5670_I2S_BCLK_MS2_SFT, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* @RT5670_I2S_PD2_SFT, align 4
  %178 = shl i32 %176, %177
  %179 = or i32 %175, %178
  store i32 %179, i32* %11, align 4
  %180 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %181 = load i32, i32* @RT5670_I2S2_SDP, align 4
  %182 = load i32, i32* @RT5670_I2S_DL_MASK, align 4
  %183 = load i32, i32* %10, align 4
  %184 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %186 = load i32, i32* @RT5670_ADDA_CLK1, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %185, i32 %186, i32 %187, i32 %188)
  br label %201

190:                                              ; preds = %144
  %191 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %192 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %195 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  br label %202

201:                                              ; preds = %169, %148
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %201, %190, %141, %67, %44
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
