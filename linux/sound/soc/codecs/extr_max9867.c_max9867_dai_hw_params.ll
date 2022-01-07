; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max9867.c_max9867_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max9867_priv = type { i64, i32, i64, i64 }

@MAX9867_AUDIOCLKHIGH = common dso_local global i32 0, align 4
@MAX9867_NI_HIGH_MASK = common dso_local global i32 0, align 4
@MAX9867_AUDIOCLKLOW = common dso_local global i32 0, align 4
@MAX9867_NI_LOW_MASK = common dso_local global i32 0, align 4
@MAX9867_IFC1B_48X = common dso_local global i32 0, align 4
@MAX9867_IFC1B_PCLK_2 = common dso_local global i32 0, align 4
@MAX9867_IFC1B_PCLK_4 = common dso_local global i32 0, align 4
@MAX9867_IFC1B_PCLK_8 = common dso_local global i32 0, align 4
@MAX9867_IFC1B_PCLK_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX9867_IFC1B_64X = common dso_local global i32 0, align 4
@MAX9867_IFC1B = common dso_local global i32 0, align 4
@MAX9867_IFC1B_BCLK_MASK = common dso_local global i32 0, align 4
@MAX9867_RAPID_LOCK = common dso_local global i32 0, align 4
@MAX9867_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max9867_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max9867_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.max9867_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %11, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %18 = call %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.max9867_priv* %18, %struct.max9867_priv** %12, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_rate(%struct.snd_pcm_hw_params* %19)
  %21 = sext i32 %20 to i64
  %22 = mul i64 6291456, %21
  %23 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %24 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @DIV_ROUND_CLOSEST_ULL(i64 %22, i64 %25)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %28 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX9867_AUDIOCLKHIGH, align 4
  %31 = load i32, i32* @MAX9867_NI_HIGH_MASK, align 4
  %32 = load i32, i32* %13, align 4
  %33 = and i32 65280, %32
  %34 = lshr i32 %33, 8
  %35 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %34)
  %36 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %37 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MAX9867_AUDIOCLKLOW, align 4
  %40 = load i32, i32* @MAX9867_NI_LOW_MASK, align 4
  %41 = load i32, i32* %13, align 4
  %42 = and i32 255, %41
  %43 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %42)
  %44 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %45 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %100

48:                                               ; preds = %3
  %49 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %50 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @MAX9867_IFC1B_48X, align 4
  store i32 %54, i32* %8, align 4
  br label %92

55:                                               ; preds = %48
  %56 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %57 = call i32 @params_rate(%struct.snd_pcm_hw_params* %56)
  %58 = mul nsw i32 %57, 2
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %60 = call i32 @params_width(%struct.snd_pcm_hw_params* %59)
  %61 = mul nsw i32 %58, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %9, align 8
  %63 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %64 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = udiv i64 %65, %66
  store i64 %67, i64* %10, align 8
  %68 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %69 = call i32 @params_width(%struct.snd_pcm_hw_params* %68)
  switch i32 %69, label %88 [
    i32 8, label %70
    i32 16, label %70
    i32 24, label %84
    i32 32, label %86
  ]

70:                                               ; preds = %55, %55
  %71 = load i64, i64* %10, align 8
  switch i64 %71, label %80 [
    i64 2, label %72
    i64 4, label %74
    i64 8, label %76
    i64 16, label %78
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* @MAX9867_IFC1B_PCLK_2, align 4
  store i32 %73, i32* %8, align 4
  br label %83

74:                                               ; preds = %70
  %75 = load i32, i32* @MAX9867_IFC1B_PCLK_4, align 4
  store i32 %75, i32* %8, align 4
  br label %83

76:                                               ; preds = %70
  %77 = load i32, i32* @MAX9867_IFC1B_PCLK_8, align 4
  store i32 %77, i32* %8, align 4
  br label %83

78:                                               ; preds = %70
  %79 = load i32, i32* @MAX9867_IFC1B_PCLK_16, align 4
  store i32 %79, i32* %8, align 4
  br label %83

80:                                               ; preds = %70
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %116

83:                                               ; preds = %78, %76, %74, %72
  br label %91

84:                                               ; preds = %55
  %85 = load i32, i32* @MAX9867_IFC1B_48X, align 4
  store i32 %85, i32* %8, align 4
  br label %91

86:                                               ; preds = %55
  %87 = load i32, i32* @MAX9867_IFC1B_64X, align 4
  store i32 %87, i32* %8, align 4
  br label %91

88:                                               ; preds = %55
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %116

91:                                               ; preds = %86, %84, %83
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %94 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MAX9867_IFC1B, align 4
  %97 = load i32, i32* @MAX9867_IFC1B_BCLK_MASK, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  br label %115

100:                                              ; preds = %3
  %101 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %102 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MAX9867_AUDIOCLKLOW, align 4
  %105 = load i32, i32* @MAX9867_RAPID_LOCK, align 4
  %106 = load i32, i32* @MAX9867_RAPID_LOCK, align 4
  %107 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.max9867_priv*, %struct.max9867_priv** %12, align 8
  %109 = getelementptr inbounds %struct.max9867_priv, %struct.max9867_priv* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MAX9867_AUDIOCLKHIGH, align 4
  %112 = load i32, i32* @MAX9867_PLL, align 4
  %113 = load i32, i32* @MAX9867_PLL, align 4
  %114 = call i32 @regmap_update_bits(i32 %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %100, %92
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %88, %80
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.max9867_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
