; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.max98373_priv = type { i32, i32, i32, i32, i64 }

@MAX98373_R2020_PCM_TX_HIZ_EN_1 = common dso_local global i32 0, align 4
@MAX98373_R2021_PCM_TX_HIZ_EN_2 = common dso_local global i32 0, align 4
@MAX98373_R2029_PCM_TO_SPK_MONO_MIX_1 = common dso_local global i32 0, align 4
@MAX98373_R202A_PCM_TO_SPK_MONO_MIX_2 = common dso_local global i32 0, align 4
@MAX98373_R203D_AMP_DIG_VOL_CTRL = common dso_local global i32 0, align 4
@MAX98373_R203E_AMP_PATH_GAIN = common dso_local global i32 0, align 4
@MAX98373_R203F_AMP_DSP_CFG = common dso_local global i32 0, align 4
@MAX98373_R2046_IV_SENSE_ADC_DSP_CFG = common dso_local global i32 0, align 4
@MAX98373_R2022_PCM_TX_SRC_1 = common dso_local global i32 0, align 4
@MAX98373_PCM_TX_CH_SRC_A_I_SHIFT = common dso_local global i32 0, align 4
@MAX98373_R2023_PCM_TX_SRC_2 = common dso_local global i32 0, align 4
@MAX98373_R2024_PCM_DATA_FMT_CFG = common dso_local global i32 0, align 4
@MAX98373_PCM_TX_CH_INTERLEAVE_MASK = common dso_local global i32 0, align 4
@MAX98373_R2043_AMP_EN = common dso_local global i32 0, align 4
@MAX98373_SPK_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @max98373_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98373_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.max98373_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.max98373_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.max98373_priv* %5, %struct.max98373_priv** %3, align 8
  %6 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @max98373_reset(%struct.max98373_priv* %6, i32 %9)
  %11 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %12 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MAX98373_R2020_PCM_TX_HIZ_EN_1, align 4
  %15 = call i32 @regmap_write(i32 %13, i32 %14, i32 255)
  %16 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %17 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX98373_R2021_PCM_TX_HIZ_EN_2, align 4
  %20 = call i32 @regmap_write(i32 %18, i32 %19, i32 255)
  %21 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %22 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MAX98373_R2029_PCM_TO_SPK_MONO_MIX_1, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 128)
  %26 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %27 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX98373_R202A_PCM_TO_SPK_MONO_MIX_2, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 1)
  %31 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %32 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MAX98373_R203D_AMP_DIG_VOL_CTRL, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 0)
  %36 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %37 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAX98373_R203E_AMP_PATH_GAIN, align 4
  %40 = call i32 @regmap_write(i32 %38, i32 %39, i32 0)
  %41 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %42 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAX98373_R203F_AMP_DSP_CFG, align 4
  %45 = call i32 @regmap_write(i32 %43, i32 %44, i32 3)
  %46 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %47 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX98373_R2046_IV_SENSE_ADC_DSP_CFG, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 7)
  %51 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %52 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MAX98373_R2022_PCM_TX_SRC_1, align 4
  %55 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %56 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MAX98373_PCM_TX_CH_SRC_A_I_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %61 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = and i32 %63, 255
  %65 = call i32 @regmap_write(i32 %53, i32 %54, i32 %64)
  %66 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %67 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 8
  br i1 %69, label %70, label %80

70:                                               ; preds = %1
  %71 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %72 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MAX98373_R2020_PCM_TX_HIZ_EN_1, align 4
  %75 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %76 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %78, i32 0)
  br label %91

80:                                               ; preds = %1
  %81 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %82 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MAX98373_R2021_PCM_TX_HIZ_EN_2, align 4
  %85 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %86 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, 8
  %89 = shl i32 1, %88
  %90 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %80, %70
  %92 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %93 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %98 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MAX98373_R2020_PCM_TX_HIZ_EN_1, align 4
  %101 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %102 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = shl i32 1, %103
  %105 = call i32 @regmap_update_bits(i32 %99, i32 %100, i32 %104, i32 0)
  br label %117

106:                                              ; preds = %91
  %107 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %108 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAX98373_R2021_PCM_TX_HIZ_EN_2, align 4
  %111 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %112 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sub nsw i32 %113, 8
  %115 = shl i32 1, %114
  %116 = call i32 @regmap_update_bits(i32 %109, i32 %110, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %106, %96
  %118 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %119 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @MAX98373_R2023_PCM_TX_SRC_2, align 4
  %122 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %123 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, 255
  %126 = call i32 @regmap_write(i32 %120, i32 %121, i32 %125)
  %127 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %128 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %117
  %132 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %133 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MAX98373_R2024_PCM_DATA_FMT_CFG, align 4
  %136 = load i32, i32* @MAX98373_PCM_TX_CH_INTERLEAVE_MASK, align 4
  %137 = load i32, i32* @MAX98373_PCM_TX_CH_INTERLEAVE_MASK, align 4
  %138 = call i32 @regmap_update_bits(i32 %134, i32 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %131, %117
  %140 = load %struct.max98373_priv*, %struct.max98373_priv** %3, align 8
  %141 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @MAX98373_R2043_AMP_EN, align 4
  %144 = load i32, i32* @MAX98373_SPK_EN_MASK, align 4
  %145 = call i32 @regmap_update_bits(i32 %142, i32 %143, i32 %144, i32 1)
  ret i32 0
}

declare dso_local %struct.max98373_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max98373_reset(%struct.max98373_priv*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
