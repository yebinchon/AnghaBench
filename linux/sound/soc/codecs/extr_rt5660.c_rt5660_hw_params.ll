; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5660.c_rt5660_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5660.c_rt5660_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i64, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5660_priv = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Unsupported clock setting %d for DAI %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@RT5660_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5660_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5660_I2S_DL_8 = common dso_local global i32 0, align 4
@RT5660_I2S_BCLK_MS1_MASK = common dso_local global i32 0, align 4
@RT5660_I2S_PD1_MASK = common dso_local global i32 0, align 4
@RT5660_I2S_BCLK_MS1_SFT = common dso_local global i32 0, align 4
@RT5660_I2S_PD1_SFT = common dso_local global i32 0, align 4
@RT5660_I2S1_SDP = common dso_local global i32 0, align 4
@RT5660_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5660_ADDA_CLK1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5660_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5660_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5660_priv*, align 8
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
  %20 = call %struct.rt5660_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5660_priv* %20, %struct.rt5660_priv** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %27 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %29, align 4
  %30 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %34 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %33, i32 0, i32 0
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
  %48 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %49 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %48, i32 0, i32 0
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
  br label %182

62:                                               ; preds = %3
  %63 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %64 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %4, align 4
  br label %182

74:                                               ; preds = %62
  %75 = load i32, i32* %15, align 4
  %76 = icmp sgt i32 %75, 32
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 1, i32* %14, align 4
  br label %79

78:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %81 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %84 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = shl i32 32, %88
  %90 = mul nsw i32 %87, %89
  %91 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %92 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %95 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %90, i32* %97, align 4
  %98 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %102 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rt5660_priv*, %struct.rt5660_priv** %9, align 8
  %110 = getelementptr inbounds %struct.rt5660_priv, %struct.rt5660_priv* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %113 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %116)
  %118 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %119 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %122, i64 %125)
  %127 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %128 = call i32 @params_width(%struct.snd_pcm_hw_params* %127)
  switch i32 %128, label %142 [
    i32 16, label %129
    i32 20, label %130
    i32 24, label %134
    i32 8, label %138
  ]

129:                                              ; preds = %79
  br label %145

130:                                              ; preds = %79
  %131 = load i32, i32* @RT5660_I2S_DL_20, align 4
  %132 = load i32, i32* %10, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %10, align 4
  br label %145

134:                                              ; preds = %79
  %135 = load i32, i32* @RT5660_I2S_DL_24, align 4
  %136 = load i32, i32* %10, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %10, align 4
  br label %145

138:                                              ; preds = %79
  %139 = load i32, i32* @RT5660_I2S_DL_8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  br label %145

142:                                              ; preds = %79
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %182

145:                                              ; preds = %138, %134, %130, %129
  %146 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %147 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  switch i64 %148, label %170 [
    i64 128, label %149
  ]

149:                                              ; preds = %145
  %150 = load i32, i32* @RT5660_I2S_BCLK_MS1_MASK, align 4
  %151 = load i32, i32* @RT5660_I2S_PD1_MASK, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32, i32* @RT5660_I2S_BCLK_MS1_SFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @RT5660_I2S_PD1_SFT, align 4
  %158 = shl i32 %156, %157
  %159 = or i32 %155, %158
  store i32 %159, i32* %11, align 4
  %160 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %161 = load i32, i32* @RT5660_I2S1_SDP, align 4
  %162 = load i32, i32* @RT5660_I2S_DL_MASK, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %160, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %166 = load i32, i32* @RT5660_ADDA_CLK1, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %165, i32 %166, i32 %167, i32 %168)
  br label %181

170:                                              ; preds = %145
  %171 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %172 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %175 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %173, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %4, align 4
  br label %182

181:                                              ; preds = %149
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %170, %142, %67, %44
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local %struct.rt5660_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
