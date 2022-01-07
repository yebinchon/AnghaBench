; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5659_priv = type { i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", align 1
@RT5659_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5659_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5659_I2S_DL_8 = common dso_local global i32 0, align 4
@RT5659_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_PD1_SFT = common dso_local global i32 0, align 4
@RT5659_I2S1_SDP = common dso_local global i32 0, align 4
@RT5659_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_PD2_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_PD2_SFT = common dso_local global i32 0, align 4
@RT5659_I2S2_SDP = common dso_local global i32 0, align 4
@RT5659_I2S_PD3_MASK = common dso_local global i32 0, align 4
@RT5659_I2S_PD3_SFT = common dso_local global i32 0, align 4
@RT5659_I2S3_SDP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@RT5659_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5659_DAC_OSR_MASK = common dso_local global i32 0, align 4
@RT5659_DAC_OSR_32 = common dso_local global i32 0, align 4
@RT5659_DAC_OSR_64 = common dso_local global i32 0, align 4
@RT5659_DAC_OSR_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5659_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5659_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %8, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %19 = call %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.rt5659_priv* %19, %struct.rt5659_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  %22 = load %struct.rt5659_priv*, %struct.rt5659_priv** %9, align 8
  %23 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %21, i32* %28, align 4
  %29 = load %struct.rt5659_priv*, %struct.rt5659_priv** %9, align 8
  %30 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.rt5659_priv*, %struct.rt5659_priv** %9, align 8
  %33 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rl6231_get_clk_info(i32 %31, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %3
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.rt5659_priv*, %struct.rt5659_priv** %9, align 8
  %48 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %187

61:                                               ; preds = %3
  %62 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %63 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %187

74:                                               ; preds = %61
  %75 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rt5659_priv*, %struct.rt5659_priv** %9, align 8
  %79 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @dev_dbg(i32 %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86, i64 %89)
  %91 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %92 = call i32 @params_width(%struct.snd_pcm_hw_params* %91)
  switch i32 %92, label %106 [
    i32 16, label %93
    i32 20, label %94
    i32 24, label %98
    i32 8, label %102
  ]

93:                                               ; preds = %74
  br label %109

94:                                               ; preds = %74
  %95 = load i32, i32* @RT5659_I2S_DL_20, align 4
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %10, align 4
  br label %109

98:                                               ; preds = %74
  %99 = load i32, i32* @RT5659_I2S_DL_24, align 4
  %100 = load i32, i32* %10, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %109

102:                                              ; preds = %74
  %103 = load i32, i32* @RT5659_I2S_DL_8, align 4
  %104 = load i32, i32* %10, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %10, align 4
  br label %109

106:                                              ; preds = %74
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %187

109:                                              ; preds = %102, %98, %94, %93
  %110 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %111 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  switch i64 %112, label %143 [
    i64 130, label %113
    i64 129, label %123
    i64 128, label %133
  ]

113:                                              ; preds = %109
  %114 = load i32, i32* @RT5659_I2S_PD1_MASK, align 4
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @RT5659_I2S_PD1_SFT, align 4
  %117 = shl i32 %115, %116
  store i32 %117, i32* %11, align 4
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %119 = load i32, i32* @RT5659_I2S1_SDP, align 4
  %120 = load i32, i32* @RT5659_I2S_DL_MASK, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %118, i32 %119, i32 %120, i32 %121)
  br label %154

123:                                              ; preds = %109
  %124 = load i32, i32* @RT5659_I2S_PD2_MASK, align 4
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @RT5659_I2S_PD2_SFT, align 4
  %127 = shl i32 %125, %126
  store i32 %127, i32* %11, align 4
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %129 = load i32, i32* @RT5659_I2S2_SDP, align 4
  %130 = load i32, i32* @RT5659_I2S_DL_MASK, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %128, i32 %129, i32 %130, i32 %131)
  br label %154

133:                                              ; preds = %109
  %134 = load i32, i32* @RT5659_I2S_PD3_MASK, align 4
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @RT5659_I2S_PD3_SFT, align 4
  %137 = shl i32 %135, %136
  store i32 %137, i32* %11, align 4
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %139 = load i32, i32* @RT5659_I2S3_SDP, align 4
  %140 = load i32, i32* @RT5659_I2S_DL_MASK, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %138, i32 %139, i32 %140, i32 %141)
  br label %154

143:                                              ; preds = %109
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %145 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %148 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %187

154:                                              ; preds = %133, %123, %113
  %155 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %156 = load i32, i32* @RT5659_ADDA_CLK_1, align 4
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %155, i32 %156, i32 %157, i32 %158)
  %160 = load %struct.rt5659_priv*, %struct.rt5659_priv** %9, align 8
  %161 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %164 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  %167 = load i32, i32* %166, align 4
  switch i32 %167, label %180 [
    i32 192000, label %168
    i32 96000, label %174
  ]

168:                                              ; preds = %154
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %170 = load i32, i32* @RT5659_ADDA_CLK_1, align 4
  %171 = load i32, i32* @RT5659_DAC_OSR_MASK, align 4
  %172 = load i32, i32* @RT5659_DAC_OSR_32, align 4
  %173 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %169, i32 %170, i32 %171, i32 %172)
  br label %186

174:                                              ; preds = %154
  %175 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %176 = load i32, i32* @RT5659_ADDA_CLK_1, align 4
  %177 = load i32, i32* @RT5659_DAC_OSR_MASK, align 4
  %178 = load i32, i32* @RT5659_DAC_OSR_64, align 4
  %179 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %175, i32 %176, i32 %177, i32 %178)
  br label %186

180:                                              ; preds = %154
  %181 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %182 = load i32, i32* @RT5659_ADDA_CLK_1, align 4
  %183 = load i32, i32* @RT5659_DAC_OSR_MASK, align 4
  %184 = load i32, i32* @RT5659_DAC_OSR_128, align 4
  %185 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %181, i32 %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %180, %174, %168
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %143, %106, %66, %43
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
