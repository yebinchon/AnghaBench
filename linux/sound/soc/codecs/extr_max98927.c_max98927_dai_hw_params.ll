; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_dai_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_max98927.c_max98927_dai_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.max98927_priv = type { i32, i32, i64 }

@MAX98927_PCM_MODE_CFG_CHANSZ_16 = common dso_local global i32 0, align 4
@MAX98927_PCM_MODE_CFG_CHANSZ_24 = common dso_local global i32 0, align 4
@MAX98927_PCM_MODE_CFG_CHANSZ_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"format unsupported %d\0A\00", align 1
@MAX98927_R0020_PCM_MODE_CFG = common dso_local global i32 0, align 4
@MAX98927_PCM_MODE_CFG_CHANSZ_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"format supported %d\00", align 1
@MAX98927_PCM_SR_SET1_SR_8000 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_11025 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_12000 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_16000 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_22050 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_24000 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_32000 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_44100 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_48000 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"rate %d not supported\0A\00", align 1
@MAX98927_R0023_PCM_SR_SETUP1 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET1_SR_MASK = common dso_local global i32 0, align 4
@MAX98927_R0024_PCM_SR_SETUP2 = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET2_SR_MASK = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET2_SR_SHIFT = common dso_local global i32 0, align 4
@MAX98927_PCM_SR_SET2_IVADC_SR_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @max98927_dai_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max98927_dai_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.max98927_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.max98927_priv* %16, %struct.max98927_priv** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_format(%struct.snd_pcm_hw_params* %17)
  %19 = call i32 @snd_pcm_format_width(i32 %18)
  switch i32 %19, label %26 [
    i32 16, label %20
    i32 24, label %22
    i32 32, label %24
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_16, align 4
  store i32 %21, i32* %11, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_24, align 4
  store i32 %23, i32* %11, align 4
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_32, align 4
  store i32 %25, i32* %11, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %31 = call i32 @params_format(%struct.snd_pcm_hw_params* %30)
  %32 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %125

33:                                               ; preds = %24, %22, %20
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_format(%struct.snd_pcm_hw_params* %34)
  %36 = call i32 @snd_pcm_format_width(i32 %35)
  %37 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %38 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %40 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX98927_R0020_PCM_MODE_CFG, align 4
  %43 = load i32, i32* @MAX98927_PCM_MODE_CFG_CHANSZ_MASK, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %50 = call i32 @params_format(%struct.snd_pcm_hw_params* %49)
  %51 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %53 = call i32 @params_rate(%struct.snd_pcm_hw_params* %52)
  switch i32 %53, label %72 [
    i32 8000, label %54
    i32 11025, label %56
    i32 12000, label %58
    i32 16000, label %60
    i32 22050, label %62
    i32 24000, label %64
    i32 32000, label %66
    i32 44100, label %68
    i32 48000, label %70
  ]

54:                                               ; preds = %33
  %55 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_8000, align 4
  store i32 %55, i32* %10, align 4
  br label %79

56:                                               ; preds = %33
  %57 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_11025, align 4
  store i32 %57, i32* %10, align 4
  br label %79

58:                                               ; preds = %33
  %59 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_12000, align 4
  store i32 %59, i32* %10, align 4
  br label %79

60:                                               ; preds = %33
  %61 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_16000, align 4
  store i32 %61, i32* %10, align 4
  br label %79

62:                                               ; preds = %33
  %63 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_22050, align 4
  store i32 %63, i32* %10, align 4
  br label %79

64:                                               ; preds = %33
  %65 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_24000, align 4
  store i32 %65, i32* %10, align 4
  br label %79

66:                                               ; preds = %33
  %67 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_32000, align 4
  store i32 %67, i32* %10, align 4
  br label %79

68:                                               ; preds = %33
  %69 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_44100, align 4
  store i32 %69, i32* %10, align 4
  br label %79

70:                                               ; preds = %33
  %71 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_48000, align 4
  store i32 %71, i32* %10, align 4
  br label %79

72:                                               ; preds = %33
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %74 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %77 = call i32 @params_rate(%struct.snd_pcm_hw_params* %76)
  %78 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %125

79:                                               ; preds = %70, %68, %66, %64, %62, %60, %58, %56, %54
  %80 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %81 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MAX98927_R0023_PCM_SR_SETUP1, align 4
  %84 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_MASK, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @regmap_update_bits(i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %88 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MAX98927_R0024_PCM_SR_SETUP2, align 4
  %91 = load i32, i32* @MAX98927_PCM_SR_SET2_SR_MASK, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @MAX98927_PCM_SR_SET2_SR_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = call i32 @regmap_update_bits(i32 %89, i32 %90, i32 %91, i32 %94)
  %96 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %97 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %79
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MAX98927_PCM_SR_SET1_SR_16000, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %106 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @MAX98927_R0024_PCM_SR_SETUP2, align 4
  %109 = load i32, i32* @MAX98927_PCM_SR_SET2_IVADC_SR_MASK, align 4
  %110 = load i32, i32* %10, align 4
  %111 = sub i32 %110, 3
  %112 = call i32 @regmap_update_bits(i32 %107, i32 %108, i32 %109, i32 %111)
  br label %121

113:                                              ; preds = %100, %79
  %114 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %115 = getelementptr inbounds %struct.max98927_priv, %struct.max98927_priv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MAX98927_R0024_PCM_SR_SETUP2, align 4
  %118 = load i32, i32* @MAX98927_PCM_SR_SET2_IVADC_SR_MASK, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @regmap_update_bits(i32 %116, i32 %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %113, %104
  %122 = load %struct.max98927_priv*, %struct.max98927_priv** %9, align 8
  %123 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %124 = call i32 @max98927_set_clock(%struct.max98927_priv* %122, %struct.snd_pcm_hw_params* %123)
  store i32 %124, i32* %4, align 4
  br label %128

125:                                              ; preds = %72, %26
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.max98927_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @max98927_set_clock(%struct.max98927_priv*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
