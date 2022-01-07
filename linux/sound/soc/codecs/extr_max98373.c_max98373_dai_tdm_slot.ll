; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_dai_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98373.c_max98373_dai_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98373_priv = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"BCLK %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX98373_R2026_PCM_CLOCK_RATIO = common dso_local global i32 0, align 4
@MAX98373_PCM_CLK_SETUP_BSEL_MASK = common dso_local global i32 0, align 4
@MAX98373_PCM_MODE_CFG_CHANSZ_16 = common dso_local global i32 0, align 4
@MAX98373_PCM_MODE_CFG_CHANSZ_24 = common dso_local global i32 0, align 4
@MAX98373_PCM_MODE_CFG_CHANSZ_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"format unsupported %d\0A\00", align 1
@MAX98373_R2024_PCM_DATA_FMT_CFG = common dso_local global i32 0, align 4
@MAX98373_PCM_MODE_CFG_CHANSZ_MASK = common dso_local global i32 0, align 4
@MAX98373_R2029_PCM_TO_SPK_MONO_MIX_1 = common dso_local global i32 0, align 4
@MAX98373_PCM_TO_SPK_CH0_SRC_MASK = common dso_local global i32 0, align 4
@MAX98373_R202A_PCM_TO_SPK_MONO_MIX_2 = common dso_local global i32 0, align 4
@MAX98373_R2020_PCM_TX_HIZ_EN_1 = common dso_local global i32 0, align 4
@MAX98373_R2021_PCM_TX_HIZ_EN_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @max98373_dai_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98373_dai_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.max98373_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %12, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %23 = call %struct.max98373_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.max98373_priv* %23, %struct.max98373_priv** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %37 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %41

38:                                               ; preds = %32, %29, %26, %5
  %39 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %40 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %42, %43
  %45 = call i32 @max98373_get_bclk_sel(i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %146

58:                                               ; preds = %41
  %59 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %60 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAX98373_R2026_PCM_CLOCK_RATIO, align 4
  %63 = load i32, i32* @MAX98373_PCM_CLK_SETUP_BSEL_MASK, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %11, align 4
  switch i32 %66, label %73 [
    i32 16, label %67
    i32 24, label %69
    i32 32, label %71
  ]

67:                                               ; preds = %58
  %68 = load i32, i32* @MAX98373_PCM_MODE_CFG_CHANSZ_16, align 4
  store i32 %68, i32* %15, align 4
  br label %81

69:                                               ; preds = %58
  %70 = load i32, i32* @MAX98373_PCM_MODE_CFG_CHANSZ_24, align 4
  store i32 %70, i32* %15, align 4
  br label %81

71:                                               ; preds = %58
  %72 = load i32, i32* @MAX98373_PCM_MODE_CFG_CHANSZ_32, align 4
  store i32 %72, i32* %15, align 4
  br label %81

73:                                               ; preds = %58
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %146

81:                                               ; preds = %71, %69, %67
  %82 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %83 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MAX98373_R2024_PCM_DATA_FMT_CFG, align 4
  %86 = load i32, i32* @MAX98373_PCM_MODE_CFG_CHANSZ_MASK, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 0, i32* %18, align 4
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %123, %81
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 16
  br i1 %92, label %93, label %128

93:                                               ; preds = %90
  %94 = load i32, i32* %16, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %93
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %102 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @MAX98373_R2029_PCM_TO_SPK_MONO_MIX_1, align 4
  %105 = load i32, i32* @MAX98373_PCM_TO_SPK_CH0_SRC_MASK, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @regmap_update_bits(i32 %103, i32 %104, i32 %105, i32 %106)
  br label %115

108:                                              ; preds = %97
  %109 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %110 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MAX98373_R202A_PCM_TO_SPK_MONO_MIX_2, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 @regmap_write(i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %100
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %128

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %93
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = lshr i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %90

128:                                              ; preds = %120, %90
  %129 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %130 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MAX98373_R2020_PCM_TX_HIZ_EN_1, align 4
  %133 = load i32, i32* %8, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %134, 255
  %136 = call i32 @regmap_write(i32 %131, i32 %132, i32 %135)
  %137 = load %struct.max98373_priv*, %struct.max98373_priv** %13, align 8
  %138 = getelementptr inbounds %struct.max98373_priv, %struct.max98373_priv* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MAX98373_R2021_PCM_TX_HIZ_EN_2, align 4
  %141 = load i32, i32* %8, align 4
  %142 = xor i32 %141, -1
  %143 = and i32 %142, 65280
  %144 = lshr i32 %143, 8
  %145 = call i32 @regmap_write(i32 %139, i32 %140, i32 %144)
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %128, %73, %48
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local %struct.max98373_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @max98373_get_bclk_sel(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
