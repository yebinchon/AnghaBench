; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5514_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Unsupported clock setting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported frame size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"bclk is %dHz and lrck is %dHz\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"bclk_ms is %d and pre_div is %d for iis %d\0A\00", align 1
@RT5514_I2S_DL_20 = common dso_local global i32 0, align 4
@RT5514_I2S_DL_24 = common dso_local global i32 0, align 4
@RT5514_I2S_DL_8 = common dso_local global i32 0, align 4
@RT5514_I2S_CTRL1 = common dso_local global i32 0, align 4
@RT5514_I2S_DL_MASK = common dso_local global i32 0, align 4
@RT5514_CLK_CTRL1 = common dso_local global i32 0, align 4
@RT5514_CLK_AD_ANA1_SEL_MASK = common dso_local global i32 0, align 4
@RT5514_CLK_AD_ANA1_SEL_SFT = common dso_local global i32 0, align 4
@RT5514_CLK_CTRL2 = common dso_local global i32 0, align 4
@RT5514_CLK_SYS_DIV_OUT_MASK = common dso_local global i32 0, align 4
@RT5514_SEL_ADC_OSR_MASK = common dso_local global i32 0, align 4
@RT5514_CLK_SYS_DIV_OUT_SFT = common dso_local global i32 0, align 4
@RT5514_SEL_ADC_OSR_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @rt5514_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5514_priv*, align 8
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
  %18 = call %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.rt5514_priv* %18, %struct.rt5514_priv** %9, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_rate(%struct.snd_pcm_hw_params* %19)
  %21 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %22 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %24 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %27 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rl6231_get_clk_info(i32 %25, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %3
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %128

39:                                               ; preds = %3
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %41 = call i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %128

52:                                               ; preds = %39
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 32
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %57 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 32, %59
  %61 = mul nsw i32 %58, %60
  %62 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %63 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %65 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %68 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %71 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %78, i32 %81)
  %83 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %84 = call i32 @params_format(%struct.snd_pcm_hw_params* %83)
  switch i32 %84, label %92 [
    i32 131, label %85
    i32 130, label %86
    i32 129, label %88
    i32 128, label %90
  ]

85:                                               ; preds = %52
  br label %95

86:                                               ; preds = %52
  %87 = load i32, i32* @RT5514_I2S_DL_20, align 4
  store i32 %87, i32* %13, align 4
  br label %95

88:                                               ; preds = %52
  %89 = load i32, i32* @RT5514_I2S_DL_24, align 4
  store i32 %89, i32* %13, align 4
  br label %95

90:                                               ; preds = %52
  %91 = load i32, i32* @RT5514_I2S_DL_8, align 4
  store i32 %91, i32* %13, align 4
  br label %95

92:                                               ; preds = %52
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %128

95:                                               ; preds = %90, %88, %86, %85
  %96 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %97 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RT5514_I2S_CTRL1, align 4
  %100 = load i32, i32* @RT5514_I2S_DL_MASK, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %100, i32 %101)
  %103 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %104 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @RT5514_CLK_CTRL1, align 4
  %107 = load i32, i32* @RT5514_CLK_AD_ANA1_SEL_MASK, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* @RT5514_CLK_AD_ANA1_SEL_SFT, align 4
  %111 = shl i32 %109, %110
  %112 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 %107, i32 %111)
  %113 = load %struct.rt5514_priv*, %struct.rt5514_priv** %9, align 8
  %114 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @RT5514_CLK_CTRL2, align 4
  %117 = load i32, i32* @RT5514_CLK_SYS_DIV_OUT_MASK, align 4
  %118 = load i32, i32* @RT5514_SEL_ADC_OSR_MASK, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @RT5514_CLK_SYS_DIV_OUT_SFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @RT5514_SEL_ADC_OSR_SFT, align 4
  %125 = shl i32 %123, %124
  %126 = or i32 %122, %125
  %127 = call i32 @regmap_update_bits(i32 %115, i32 %116, i32 %119, i32 %126)
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %95, %92, %44, %32
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @rl6231_get_clk_info(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_params_to_frame_size(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
