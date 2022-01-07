; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unsupported clock setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@RT5645_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5645_I2S_PD1_SFT = common dso_local global i32 0, align 4
@RT5645_I2S1_SDP = common dso_local global i32 0, align 4
@RT5645_ADDA_CLK1 = common dso_local global i32 0, align 4
@RT5645_I2S_BCLK_MS2_MASK = common dso_local global i32 0, align 4
@RT5645_I2S_PD2_MASK = common dso_local global i32 0, align 4
@RT5645_I2S_BCLK_MS2_SFT = common dso_local global i32 0, align 4
@RT5645_I2S_PD2_SFT = common dso_local global i32 0, align 4
@RT5645_I2S2_SDP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5645_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5645_priv*, align 8
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
  %21 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.rt5645_priv* %21, %struct.rt5645_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %28 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %23, i32* %30, align 4
  %31 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %32 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %35 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %34, i32 0, i32 0
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
  br i1 %44, label %45, label %52

45:                                               ; preds = %3
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %188

52:                                               ; preds = %3
  %53 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %54 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %59 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %188

65:                                               ; preds = %52
  %66 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %67 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %70 [
    i32 130, label %69
  ]

69:                                               ; preds = %65
  store i32 4, i32* %13, align 4
  br label %71

70:                                               ; preds = %65
  store i32 2, i32* %13, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %72, 32
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %76 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %15, align 4
  %84 = shl i32 32, %83
  %85 = mul nsw i32 %82, %84
  %86 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %87 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %90 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 %85, i32* %92, align 4
  %93 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %94 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %97 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.rt5645_priv*, %struct.rt5645_priv** %9, align 8
  %105 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %108 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %111)
  %113 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %114 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %115, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %117, i64 %120)
  %122 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %123 = call i32 @params_width(%struct.snd_pcm_hw_params* %122)
  switch i32 %123, label %128 [
    i32 16, label %124
    i32 20, label %125
    i32 24, label %126
    i32 8, label %127
  ]

124:                                              ; preds = %71
  br label %131

125:                                              ; preds = %71
  store i32 1, i32* %10, align 4
  br label %131

126:                                              ; preds = %71
  store i32 2, i32* %10, align 4
  br label %131

127:                                              ; preds = %71
  store i32 3, i32* %10, align 4
  br label %131

128:                                              ; preds = %71
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %188

131:                                              ; preds = %127, %126, %125, %124
  %132 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %133 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  switch i64 %134, label %177 [
    i64 129, label %135
    i64 128, label %153
  ]

135:                                              ; preds = %131
  %136 = load i32, i32* @RT5645_I2S_PD1_MASK, align 4
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @RT5645_I2S_PD1_SFT, align 4
  %139 = shl i32 %137, %138
  store i32 %139, i32* %11, align 4
  %140 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %141 = load i32, i32* @RT5645_I2S1_SDP, align 4
  %142 = load i32, i32* %13, align 4
  %143 = shl i32 3, %142
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %13, align 4
  %146 = shl i32 %144, %145
  %147 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %140, i32 %141, i32 %143, i32 %146)
  %148 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %149 = load i32, i32* @RT5645_ADDA_CLK1, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %148, i32 %149, i32 %150, i32 %151)
  br label %187

153:                                              ; preds = %131
  %154 = load i32, i32* @RT5645_I2S_BCLK_MS2_MASK, align 4
  %155 = load i32, i32* @RT5645_I2S_PD2_MASK, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @RT5645_I2S_BCLK_MS2_SFT, align 4
  %159 = shl i32 %157, %158
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* @RT5645_I2S_PD2_SFT, align 4
  %162 = shl i32 %160, %161
  %163 = or i32 %159, %162
  store i32 %163, i32* %11, align 4
  %164 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %165 = load i32, i32* @RT5645_I2S2_SDP, align 4
  %166 = load i32, i32* %13, align 4
  %167 = shl i32 3, %166
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %13, align 4
  %170 = shl i32 %168, %169
  %171 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %164, i32 %165, i32 %167, i32 %170)
  %172 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %173 = load i32, i32* @RT5645_ADDA_CLK1, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %11, align 4
  %176 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %172, i32 %173, i32 %174, i32 %175)
  br label %187

177:                                              ; preds = %131
  %178 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %179 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %182 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i32, i8*, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %183)
  %185 = load i32, i32* @EINVAL, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %4, align 4
  br label %188

187:                                              ; preds = %153, %135
  store i32 0, i32* %4, align 4
  br label %188

188:                                              ; preds = %187, %177, %128, %57, %45
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

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
