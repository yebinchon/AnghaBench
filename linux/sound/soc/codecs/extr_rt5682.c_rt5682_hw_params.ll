; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5682_priv = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"lrck is %dHz and pre_div is %d for iis %d\0A\00", align 1
@RT5682_I2S1_DL_20 = common dso_local global i32 0, align 4
@RT5682_I2S2_DL_20 = common dso_local global i32 0, align 4
@RT5682_I2S1_DL_24 = common dso_local global i32 0, align 4
@RT5682_I2S2_DL_24 = common dso_local global i32 0, align 4
@RT5682_I2S1_DL_32 = common dso_local global i32 0, align 4
@RT5682_I2S2_DL_8 = common dso_local global i32 0, align 4
@RT5682_I2S1_SDP = common dso_local global i32 0, align 4
@RT5682_I2S1_DL_MASK = common dso_local global i32 0, align 4
@RT5682_ADDA_CLK_1 = common dso_local global i32 0, align 4
@RT5682_I2S_M_DIV_MASK = common dso_local global i32 0, align 4
@RT5682_I2S_M_DIV_SFT = common dso_local global i32 0, align 4
@RT5682_I2S1_MONO_MASK = common dso_local global i32 0, align 4
@RT5682_I2S1_MONO_EN = common dso_local global i32 0, align 4
@RT5682_I2S1_MONO_DIS = common dso_local global i32 0, align 4
@RT5682_I2S2_SDP = common dso_local global i32 0, align 4
@RT5682_I2S2_DL_MASK = common dso_local global i32 0, align 4
@RT5682_I2S_M_CLK_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_I2S2_M_PD_MASK = common dso_local global i32 0, align 4
@RT5682_I2S2_M_PD_SFT = common dso_local global i32 0, align 4
@RT5682_I2S2_MONO_MASK = common dso_local global i32 0, align 4
@RT5682_I2S2_MONO_EN = common dso_local global i32 0, align 4
@RT5682_I2S2_MONO_DIS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5682_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5682_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 2
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.rt5682_priv* %18, %struct.rt5682_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_rate(%struct.snd_pcm_hw_params* %19)
  %21 = load %struct.rt5682_priv*, %struct.rt5682_priv** %9, align 8
  %22 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %25 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32 %20, i32* %27, align 4
  %28 = load %struct.rt5682_priv*, %struct.rt5682_priv** %9, align 8
  %29 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rt5682_priv*, %struct.rt5682_priv** %9, align 8
  %32 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @rl6231_get_clk_info(i32 %30, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %41 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %3
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %193

52:                                               ; preds = %3
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rt5682_priv*, %struct.rt5682_priv** %9, align 8
  %57 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %60 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64, i64 %67)
  %69 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %70 = call i32 @params_width(%struct.snd_pcm_hw_params* %69)
  switch i32 %70, label %100 [
    i32 16, label %71
    i32 20, label %72
    i32 24, label %79
    i32 32, label %86
    i32 8, label %93
  ]

71:                                               ; preds = %52
  br label %103

72:                                               ; preds = %52
  %73 = load i32, i32* @RT5682_I2S1_DL_20, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* @RT5682_I2S2_DL_20, align 4
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %103

79:                                               ; preds = %52
  %80 = load i32, i32* @RT5682_I2S1_DL_24, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* @RT5682_I2S2_DL_24, align 4
  %84 = load i32, i32* %11, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %103

86:                                               ; preds = %52
  %87 = load i32, i32* @RT5682_I2S1_DL_32, align 4
  %88 = load i32, i32* %10, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* @RT5682_I2S2_DL_24, align 4
  %91 = load i32, i32* %11, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %11, align 4
  br label %103

93:                                               ; preds = %52
  %94 = load i32, i32* @RT5682_I2S2_DL_8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* @RT5682_I2S2_DL_8, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %103

100:                                              ; preds = %52
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %193

103:                                              ; preds = %93, %86, %79, %72, %71
  %104 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  switch i64 %106, label %181 [
    i64 129, label %107
    i64 128, label %144
  ]

107:                                              ; preds = %103
  %108 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %109 = load i32, i32* @RT5682_I2S1_SDP, align 4
  %110 = load i32, i32* @RT5682_I2S1_DL_MASK, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.rt5682_priv*, %struct.rt5682_priv** %9, align 8
  %114 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 129
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %107
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %121 = load i32, i32* @RT5682_ADDA_CLK_1, align 4
  %122 = load i32, i32* @RT5682_I2S_M_DIV_MASK, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* @RT5682_I2S_M_DIV_SFT, align 4
  %125 = shl i32 %123, %124
  %126 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %120, i32 %121, i32 %122, i32 %125)
  br label %127

127:                                              ; preds = %119, %107
  %128 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %129 = call i32 @params_channels(%struct.snd_pcm_hw_params* %128)
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %133 = load i32, i32* @RT5682_I2S1_SDP, align 4
  %134 = load i32, i32* @RT5682_I2S1_MONO_MASK, align 4
  %135 = load i32, i32* @RT5682_I2S1_MONO_EN, align 4
  %136 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %133, i32 %134, i32 %135)
  br label %143

137:                                              ; preds = %127
  %138 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %139 = load i32, i32* @RT5682_I2S1_SDP, align 4
  %140 = load i32, i32* @RT5682_I2S1_MONO_MASK, align 4
  %141 = load i32, i32* @RT5682_I2S1_MONO_DIS, align 4
  %142 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %138, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %131
  br label %192

144:                                              ; preds = %103
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %146 = load i32, i32* @RT5682_I2S2_SDP, align 4
  %147 = load i32, i32* @RT5682_I2S2_DL_MASK, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %145, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.rt5682_priv*, %struct.rt5682_priv** %9, align 8
  %151 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 128
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %144
  %157 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %158 = load i32, i32* @RT5682_I2S_M_CLK_CTRL_1, align 4
  %159 = load i32, i32* @RT5682_I2S2_M_PD_MASK, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @RT5682_I2S2_M_PD_SFT, align 4
  %162 = shl i32 %160, %161
  %163 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %157, i32 %158, i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %156, %144
  %165 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %166 = call i32 @params_channels(%struct.snd_pcm_hw_params* %165)
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %170 = load i32, i32* @RT5682_I2S2_SDP, align 4
  %171 = load i32, i32* @RT5682_I2S2_MONO_MASK, align 4
  %172 = load i32, i32* @RT5682_I2S2_MONO_EN, align 4
  %173 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %169, i32 %170, i32 %171, i32 %172)
  br label %180

174:                                              ; preds = %164
  %175 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %176 = load i32, i32* @RT5682_I2S2_SDP, align 4
  %177 = load i32, i32* @RT5682_I2S2_MONO_MASK, align 4
  %178 = load i32, i32* @RT5682_I2S2_MONO_DIS, align 4
  %179 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %175, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %168
  br label %192

181:                                              ; preds = %103
  %182 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %183 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %186 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i32 @dev_err(i32 %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %193

192:                                              ; preds = %180, %143
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %192, %181, %100, %44
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
