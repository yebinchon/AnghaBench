; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.da9055_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@DA9055_AUX_L_CTRL = common dso_local global i32 0, align 4
@DA9055_GAIN_RAMPING_EN = common dso_local global i32 0, align 4
@DA9055_AUX_R_CTRL = common dso_local global i32 0, align 4
@DA9055_MIXIN_L_CTRL = common dso_local global i32 0, align 4
@DA9055_MIXIN_R_CTRL = common dso_local global i32 0, align 4
@DA9055_ADC_L_CTRL = common dso_local global i32 0, align 4
@DA9055_ADC_R_CTRL = common dso_local global i32 0, align 4
@DA9055_DAC_L_CTRL = common dso_local global i32 0, align 4
@DA9055_DAC_R_CTRL = common dso_local global i32 0, align 4
@DA9055_HP_L_CTRL = common dso_local global i32 0, align 4
@DA9055_HP_R_CTRL = common dso_local global i32 0, align 4
@DA9055_LINE_CTRL = common dso_local global i32 0, align 4
@DA9055_MIXIN_L_MIX_EN = common dso_local global i32 0, align 4
@DA9055_MIXIN_R_MIX_EN = common dso_local global i32 0, align 4
@DA9055_MIXOUT_L_CTRL = common dso_local global i32 0, align 4
@DA9055_MIXOUT_L_MIX_EN = common dso_local global i32 0, align 4
@DA9055_MIXOUT_R_CTRL = common dso_local global i32 0, align 4
@DA9055_MIXOUT_R_MIX_EN = common dso_local global i32 0, align 4
@DA9055_PLL_CTRL = common dso_local global i32 0, align 4
@DA9055_PLL_INDIV_10_20_MHZ = common dso_local global i32 0, align 4
@DA9055_MIXIN_R_SELECT = common dso_local global i32 0, align 4
@DA9055_MICBIAS2_EN = common dso_local global i32 0, align 4
@DA9055_MIC_CONFIG = common dso_local global i32 0, align 4
@DA9055_MICBIAS_LEVEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @da9055_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_probe(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.da9055_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.da9055_priv* %5, %struct.da9055_priv** %3, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = load i32, i32* @DA9055_AUX_L_CTRL, align 4
  %8 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %9 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %10 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %6, i32 %7, i32 %8, i32 %9)
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %12 = load i32, i32* @DA9055_AUX_R_CTRL, align 4
  %13 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %14 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %15 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %17 = load i32, i32* @DA9055_MIXIN_L_CTRL, align 4
  %18 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %19 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %20 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %22 = load i32, i32* @DA9055_MIXIN_R_CTRL, align 4
  %23 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %24 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %25 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %27 = load i32, i32* @DA9055_ADC_L_CTRL, align 4
  %28 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %29 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %32 = load i32, i32* @DA9055_ADC_R_CTRL, align 4
  %33 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %34 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %37 = load i32, i32* @DA9055_DAC_L_CTRL, align 4
  %38 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %39 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %42 = load i32, i32* @DA9055_DAC_R_CTRL, align 4
  %43 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %44 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %47 = load i32, i32* @DA9055_HP_L_CTRL, align 4
  %48 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %49 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %52 = load i32, i32* @DA9055_HP_R_CTRL, align 4
  %53 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %54 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %55 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %57 = load i32, i32* @DA9055_LINE_CTRL, align 4
  %58 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %59 = load i32, i32* @DA9055_GAIN_RAMPING_EN, align 4
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %62 = load i32, i32* @DA9055_MIXIN_L_CTRL, align 4
  %63 = load i32, i32* @DA9055_MIXIN_L_MIX_EN, align 4
  %64 = load i32, i32* @DA9055_MIXIN_L_MIX_EN, align 4
  %65 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %67 = load i32, i32* @DA9055_MIXIN_R_CTRL, align 4
  %68 = load i32, i32* @DA9055_MIXIN_R_MIX_EN, align 4
  %69 = load i32, i32* @DA9055_MIXIN_R_MIX_EN, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %72 = load i32, i32* @DA9055_MIXOUT_L_CTRL, align 4
  %73 = load i32, i32* @DA9055_MIXOUT_L_MIX_EN, align 4
  %74 = load i32, i32* @DA9055_MIXOUT_L_MIX_EN, align 4
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %77 = load i32, i32* @DA9055_MIXOUT_R_CTRL, align 4
  %78 = load i32, i32* @DA9055_MIXOUT_R_MIX_EN, align 4
  %79 = load i32, i32* @DA9055_MIXOUT_R_MIX_EN, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %82 = load i32, i32* @DA9055_PLL_CTRL, align 4
  %83 = load i32, i32* @DA9055_PLL_INDIV_10_20_MHZ, align 4
  %84 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i32 %82, i32 %83)
  %85 = load %struct.da9055_priv*, %struct.da9055_priv** %3, align 8
  %86 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %125

89:                                               ; preds = %1
  %90 = load %struct.da9055_priv*, %struct.da9055_priv** %3, align 8
  %91 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %98 = load i32, i32* @DA9055_MIXIN_R_SELECT, align 4
  %99 = load i32, i32* @DA9055_MICBIAS2_EN, align 4
  %100 = load i32, i32* @DA9055_MICBIAS2_EN, align 4
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %97, i32 %98, i32 %99, i32 %100)
  br label %107

102:                                              ; preds = %89
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %104 = load i32, i32* @DA9055_MIXIN_R_SELECT, align 4
  %105 = load i32, i32* @DA9055_MICBIAS2_EN, align 4
  %106 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 %105, i32 0)
  br label %107

107:                                              ; preds = %102, %96
  %108 = load %struct.da9055_priv*, %struct.da9055_priv** %3, align 8
  %109 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %124 [
    i32 128, label %113
    i32 129, label %113
    i32 130, label %113
    i32 131, label %113
  ]

113:                                              ; preds = %107, %107, %107, %107
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %115 = load i32, i32* @DA9055_MIC_CONFIG, align 4
  %116 = load i32, i32* @DA9055_MICBIAS_LEVEL_MASK, align 4
  %117 = load %struct.da9055_priv*, %struct.da9055_priv** %3, align 8
  %118 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 4
  %123 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %114, i32 %115, i32 %116, i32 %122)
  br label %124

124:                                              ; preds = %107, %113
  br label %125

125:                                              ; preds = %124, %1
  ret i32 0
}

declare dso_local %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
