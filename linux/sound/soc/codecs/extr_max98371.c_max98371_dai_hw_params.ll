; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98371.c_max98371_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98371.c_max98371_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98371_priv = type { i32 }

@MAX98371_FMT = common dso_local global i32 0, align 4
@MAX98371_FMT_MASK = common dso_local global i32 0, align 4
@MAX98371_DAI_CHANSZ_16 = common dso_local global i32 0, align 4
@MAX98371_DAI_CHANSZ_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAX98371_DAI_CLK = common dso_local global i32 0, align 4
@MAX98371_DAI_BSEL_MASK = common dso_local global i32 0, align 4
@MAX98371_DAI_BSEL_32 = common dso_local global i32 0, align 4
@MAX98371_DAI_BSEL_48 = common dso_local global i32 0, align 4
@MAX98371_DAI_BSEL_64 = common dso_local global i32 0, align 4
@MAX98371_SPK_SR = common dso_local global i32 0, align 4
@MAX98371_SPK_SR_MASK = common dso_local global i32 0, align 4
@MAX98371_SPK_SR_32 = common dso_local global i32 0, align 4
@MAX98371_SPK_SR_44 = common dso_local global i32 0, align 4
@MAX98371_SPK_SR_48 = common dso_local global i32 0, align 4
@MAX98371_SPK_SR_88 = common dso_local global i32 0, align 4
@MAX98371_SPK_SR_96 = common dso_local global i32 0, align 4
@MAX98371_MONOMIX_SRC = common dso_local global i32 0, align 4
@MAX98371_MONOMIX_SRC_MASK = common dso_local global i32 0, align 4
@MONOMIX_RX_0_1 = common dso_local global i32 0, align 4
@MAX98371_DAI_CHANNEL = common dso_local global i32 0, align 4
@MAX98371_CHANNEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max98371_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98371_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98371_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %8, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %18 = call %struct.max98371_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.max98371_priv* %18, %struct.max98371_priv** %9, align 8
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %20 = call i32 @params_channels(%struct.snd_pcm_hw_params* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %24 = call i32 @params_format(%struct.snd_pcm_hw_params* %23)
  switch i32 %24, label %57 [
    i32 128, label %25
    i32 131, label %33
    i32 130, label %41
    i32 129, label %49
  ]

25:                                               ; preds = %3
  %26 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %27 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX98371_FMT, align 4
  %30 = load i32, i32* @MAX98371_FMT_MASK, align 4
  %31 = load i32, i32* @MAX98371_DAI_CHANSZ_16, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 8, i32* %11, align 4
  br label %60

33:                                               ; preds = %3
  %34 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %35 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MAX98371_FMT, align 4
  %38 = load i32, i32* @MAX98371_FMT_MASK, align 4
  %39 = load i32, i32* @MAX98371_DAI_CHANSZ_16, align 4
  %40 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 16, i32* %11, align 4
  br label %60

41:                                               ; preds = %3
  %42 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %43 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAX98371_FMT, align 4
  %46 = load i32, i32* @MAX98371_FMT_MASK, align 4
  %47 = load i32, i32* @MAX98371_DAI_CHANSZ_32, align 4
  %48 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  store i32 24, i32* %11, align 4
  br label %60

49:                                               ; preds = %3
  %50 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %51 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MAX98371_FMT, align 4
  %54 = load i32, i32* @MAX98371_FMT_MASK, align 4
  %55 = load i32, i32* @MAX98371_DAI_CHANSZ_32, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 32, i32* %11, align 4
  br label %60

57:                                               ; preds = %3
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %152

60:                                               ; preds = %49, %41, %33, %25
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  switch i32 %64, label %89 [
    i32 32, label %65
    i32 48, label %73
    i32 64, label %81
  ]

65:                                               ; preds = %60
  %66 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %67 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MAX98371_DAI_CLK, align 4
  %70 = load i32, i32* @MAX98371_DAI_BSEL_MASK, align 4
  %71 = load i32, i32* @MAX98371_DAI_BSEL_32, align 4
  %72 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %70, i32 %71)
  br label %92

73:                                               ; preds = %60
  %74 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %75 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MAX98371_DAI_CLK, align 4
  %78 = load i32, i32* @MAX98371_DAI_BSEL_MASK, align 4
  %79 = load i32, i32* @MAX98371_DAI_BSEL_48, align 4
  %80 = call i32 @regmap_update_bits(i32 %76, i32 %77, i32 %78, i32 %79)
  br label %92

81:                                               ; preds = %60
  %82 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %83 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MAX98371_DAI_CLK, align 4
  %86 = load i32, i32* @MAX98371_DAI_BSEL_MASK, align 4
  %87 = load i32, i32* @MAX98371_DAI_BSEL_64, align 4
  %88 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 %87)
  br label %92

89:                                               ; preds = %60
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %152

92:                                               ; preds = %81, %73, %65
  %93 = load i32, i32* %13, align 4
  switch i32 %93, label %134 [
    i32 32000, label %94
    i32 44100, label %102
    i32 48000, label %110
    i32 88200, label %118
    i32 96000, label %126
  ]

94:                                               ; preds = %92
  %95 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %96 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MAX98371_SPK_SR, align 4
  %99 = load i32, i32* @MAX98371_SPK_SR_MASK, align 4
  %100 = load i32, i32* @MAX98371_SPK_SR_32, align 4
  %101 = call i32 @regmap_update_bits(i32 %97, i32 %98, i32 %99, i32 %100)
  br label %137

102:                                              ; preds = %92
  %103 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %104 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @MAX98371_SPK_SR, align 4
  %107 = load i32, i32* @MAX98371_SPK_SR_MASK, align 4
  %108 = load i32, i32* @MAX98371_SPK_SR_44, align 4
  %109 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 %107, i32 %108)
  br label %137

110:                                              ; preds = %92
  %111 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %112 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MAX98371_SPK_SR, align 4
  %115 = load i32, i32* @MAX98371_SPK_SR_MASK, align 4
  %116 = load i32, i32* @MAX98371_SPK_SR_48, align 4
  %117 = call i32 @regmap_update_bits(i32 %113, i32 %114, i32 %115, i32 %116)
  br label %137

118:                                              ; preds = %92
  %119 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %120 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MAX98371_SPK_SR, align 4
  %123 = load i32, i32* @MAX98371_SPK_SR_MASK, align 4
  %124 = load i32, i32* @MAX98371_SPK_SR_88, align 4
  %125 = call i32 @regmap_update_bits(i32 %121, i32 %122, i32 %123, i32 %124)
  br label %137

126:                                              ; preds = %92
  %127 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %128 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @MAX98371_SPK_SR, align 4
  %131 = load i32, i32* @MAX98371_SPK_SR_MASK, align 4
  %132 = load i32, i32* @MAX98371_SPK_SR_96, align 4
  %133 = call i32 @regmap_update_bits(i32 %129, i32 %130, i32 %131, i32 %132)
  br label %137

134:                                              ; preds = %92
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %152

137:                                              ; preds = %126, %118, %110, %102, %94
  %138 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %139 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @MAX98371_MONOMIX_SRC, align 4
  %142 = load i32, i32* @MAX98371_MONOMIX_SRC_MASK, align 4
  %143 = load i32, i32* @MONOMIX_RX_0_1, align 4
  %144 = call i32 @regmap_update_bits(i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.max98371_priv*, %struct.max98371_priv** %9, align 8
  %146 = getelementptr inbounds %struct.max98371_priv, %struct.max98371_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @MAX98371_DAI_CHANNEL, align 4
  %149 = load i32, i32* @MAX98371_CHANNEL_MASK, align 4
  %150 = load i32, i32* @MAX98371_CHANNEL_MASK, align 4
  %151 = call i32 @regmap_update_bits(i32 %147, i32 %148, i32 %149, i32 %150)
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %137, %134, %89, %57
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local %struct.max98371_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
