; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32, i32, i32 }

@RT5677_PWR_ANLG1 = common dso_local global i64 0, align 8
@RT5677_LDO1_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_LDO2_SEL_MASK = common dso_local global i32 0, align 4
@RT5677_LDO1_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_LDO2_SEL_SFT = common dso_local global i32 0, align 4
@RT5677_PR_BASE = common dso_local global i64 0, align 8
@RT5677_BIAS_CUR4 = common dso_local global i64 0, align 8
@RT5677_PWR_FV1 = common dso_local global i32 0, align 4
@RT5677_PWR_FV2 = common dso_local global i32 0, align 4
@RT5677_PWR_VREF1 = common dso_local global i32 0, align 4
@RT5677_PWR_MB = common dso_local global i32 0, align 4
@RT5677_PWR_BG = common dso_local global i32 0, align 4
@RT5677_PWR_VREF2 = common dso_local global i32 0, align 4
@RT5677_PWR_ANLG2 = common dso_local global i64 0, align 8
@RT5677_PWR_CORE = common dso_local global i32 0, align 4
@RT5677_DIG_MISC = common dso_local global i64 0, align 8
@RT5677_PWR_DIG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5677_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5677_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5677_priv* %7, %struct.rt5677_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %118 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %75
    i32 131, label %76
  ]

9:                                                ; preds = %2
  br label %119

10:                                               ; preds = %2
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %11)
  %13 = icmp eq i32 %12, 128
  br i1 %13, label %14, label %74

14:                                               ; preds = %10
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %16 = call i32 @rt5677_set_dsp_vad(%struct.snd_soc_component* %15, i32 0)
  %17 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @RT5677_PWR_ANLG1, align 8
  %21 = load i32, i32* @RT5677_LDO1_SEL_MASK, align 4
  %22 = load i32, i32* @RT5677_LDO2_SEL_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RT5677_LDO1_SEL_SFT, align 4
  %25 = shl i32 5, %24
  %26 = load i32, i32* @RT5677_LDO2_SEL_SFT, align 4
  %27 = shl i32 5, %26
  %28 = or i32 %25, %27
  %29 = call i32 @regmap_update_bits(i32 %19, i64 %20, i32 %23, i32 %28)
  %30 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %31 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* @RT5677_PR_BASE, align 8
  %34 = load i64, i64* @RT5677_BIAS_CUR4, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @regmap_update_bits(i32 %32, i64 %35, i32 3840, i32 3840)
  %37 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %38 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @RT5677_PWR_ANLG1, align 8
  %41 = load i32, i32* @RT5677_PWR_FV1, align 4
  %42 = load i32, i32* @RT5677_PWR_FV2, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RT5677_PWR_VREF1, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @RT5677_PWR_MB, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RT5677_PWR_BG, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RT5677_PWR_VREF2, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RT5677_PWR_VREF1, align 4
  %53 = load i32, i32* @RT5677_PWR_MB, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RT5677_PWR_BG, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RT5677_PWR_VREF2, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @regmap_update_bits(i32 %39, i64 %40, i32 %51, i32 %58)
  %60 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %61 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %63 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @RT5677_PWR_ANLG2, align 8
  %66 = load i32, i32* @RT5677_PWR_CORE, align 4
  %67 = load i32, i32* @RT5677_PWR_CORE, align 4
  %68 = call i32 @regmap_update_bits(i32 %64, i64 %65, i32 %66, i32 %67)
  %69 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %70 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* @RT5677_DIG_MISC, align 8
  %73 = call i32 @regmap_update_bits(i32 %71, i64 %72, i32 1, i32 1)
  br label %74

74:                                               ; preds = %14, %10
  br label %119

75:                                               ; preds = %2
  br label %119

76:                                               ; preds = %2
  %77 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %78 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @RT5677_DIG_MISC, align 8
  %81 = call i32 @regmap_update_bits(i32 %79, i64 %80, i32 1, i32 0)
  %82 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %83 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* @RT5677_PWR_DIG1, align 8
  %86 = call i32 @regmap_write(i32 %84, i64 %85, i32 0)
  %87 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %88 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i64, i64* @RT5677_PWR_ANLG1, align 8
  %91 = load i32, i32* @RT5677_LDO1_SEL_SFT, align 4
  %92 = shl i32 2, %91
  %93 = load i32, i32* @RT5677_LDO2_SEL_SFT, align 4
  %94 = shl i32 2, %93
  %95 = or i32 %92, %94
  %96 = call i32 @regmap_write(i32 %89, i64 %90, i32 %95)
  %97 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %98 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* @RT5677_PWR_ANLG2, align 8
  %101 = load i32, i32* @RT5677_PWR_CORE, align 4
  %102 = call i32 @regmap_update_bits(i32 %99, i64 %100, i32 %101, i32 0)
  %103 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %104 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* @RT5677_PR_BASE, align 8
  %107 = load i64, i64* @RT5677_BIAS_CUR4, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @regmap_update_bits(i32 %105, i64 %108, i32 3840, i32 0)
  %110 = load %struct.rt5677_priv*, %struct.rt5677_priv** %5, align 8
  %111 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %76
  %115 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %116 = call i32 @rt5677_set_dsp_vad(%struct.snd_soc_component* %115, i32 1)
  br label %117

117:                                              ; preds = %114, %76
  br label %119

118:                                              ; preds = %2
  br label %119

119:                                              ; preds = %118, %117, %75, %74, %9
  ret i32 0
}

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @rt5677_set_dsp_vad(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
