; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i32 }

@CODEC_VER_1 = common dso_local global i32 0, align 4
@RT5663_HP_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5663_SEL_PM_HP_SHIFT = common dso_local global i32 0, align 4
@RT5663_SEL_PM_HP_HIGH = common dso_local global i32 0, align 4
@RT5663_HP_LOGIC_2 = common dso_local global i32 0, align 4
@RT5663_HP_SIG_SRC1_MASK = common dso_local global i32 0, align 4
@RT5663_HP_SIG_SRC1_SILENCE = common dso_local global i32 0, align 4
@RT5663_DACREF_LDO = common dso_local global i32 0, align 4
@RT5663_DEPOP_2 = common dso_local global i32 0, align 4
@RT5663_OVCD_HP_MASK = common dso_local global i32 0, align 4
@RT5663_OVCD_HP_DIS = common dso_local global i32 0, align 4
@RT5663_HP_CHARGE_PUMP_2 = common dso_local global i32 0, align 4
@RT5663_HP_BIAS = common dso_local global i32 0, align 4
@RT5663_CHARGE_PUMP_1 = common dso_local global i32 0, align 4
@RT5663_ANA_BIAS_CUR_1 = common dso_local global i32 0, align 4
@RT5663_CHARGE_PUMP_2 = common dso_local global i32 0, align 4
@RT5663_STO_DRE_1 = common dso_local global i32 0, align 4
@RT5663_DEPOP_1 = common dso_local global i32 0, align 4
@RT5663_DIG_VOL_ZCD = common dso_local global i32 0, align 4
@RT5663_HP_SIG_SRC1_REG = common dso_local global i32 0, align 4
@RT5663_OVCD_HP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5663_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5663_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5663_priv* %15, %struct.rt5663_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %102 [
    i32 129, label %17
    i32 128, label %74
  ]

17:                                               ; preds = %3
  %18 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %19 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CODEC_VER_1, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %25 = load i32, i32* @RT5663_HP_CHARGE_PUMP_1, align 4
  %26 = load i32, i32* @RT5663_SEL_PM_HP_SHIFT, align 4
  %27 = load i32, i32* @RT5663_SEL_PM_HP_HIGH, align 4
  %28 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %30 = load i32, i32* @RT5663_HP_LOGIC_2, align 4
  %31 = load i32, i32* @RT5663_HP_SIG_SRC1_MASK, align 4
  %32 = load i32, i32* @RT5663_HP_SIG_SRC1_SILENCE, align 4
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %29, i32 %30, i32 %31, i32 %32)
  br label %73

34:                                               ; preds = %17
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %36 = load i32, i32* @RT5663_DACREF_LDO, align 4
  %37 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %35, i32 %36, i32 15886, i32 14858)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i32, i32* @RT5663_DEPOP_2, align 4
  %40 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 12291)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %42 = load i32, i32* @RT5663_HP_CHARGE_PUMP_1, align 4
  %43 = load i32, i32* @RT5663_OVCD_HP_MASK, align 4
  %44 = load i32, i32* @RT5663_OVCD_HP_DIS, align 4
  %45 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %47 = load i32, i32* @RT5663_HP_CHARGE_PUMP_2, align 4
  %48 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %46, i32 %47, i32 4977)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %50 = load i32, i32* @RT5663_HP_BIAS, align 4
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 43962)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %53 = load i32, i32* @RT5663_CHARGE_PUMP_1, align 4
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %52, i32 %53, i32 8740)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %56 = load i32, i32* @RT5663_ANA_BIAS_CUR_1, align 4
  %57 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 30566)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %59 = load i32, i32* @RT5663_HP_BIAS, align 4
  %60 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %58, i32 %59, i32 44970)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = load i32, i32* @RT5663_CHARGE_PUMP_2, align 4
  %63 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %61, i32 %62, i32 30583)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %65 = load i32, i32* @RT5663_STO_DRE_1, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 32768, i32 32768)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %68 = load i32, i32* @RT5663_DEPOP_1, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 12288, i32 12288)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = load i32, i32* @RT5663_DIG_VOL_ZCD, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 192, i32 128)
  br label %73

73:                                               ; preds = %34, %23
  br label %103

74:                                               ; preds = %3
  %75 = load %struct.rt5663_priv*, %struct.rt5663_priv** %9, align 8
  %76 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CODEC_VER_1, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %82 = load i32, i32* @RT5663_HP_LOGIC_2, align 4
  %83 = load i32, i32* @RT5663_HP_SIG_SRC1_MASK, align 4
  %84 = load i32, i32* @RT5663_HP_SIG_SRC1_REG, align 4
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %81, i32 %82, i32 %83, i32 %84)
  br label %101

86:                                               ; preds = %74
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %88 = load i32, i32* @RT5663_DEPOP_1, align 4
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 12288, i32 0)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %91 = load i32, i32* @RT5663_HP_CHARGE_PUMP_1, align 4
  %92 = load i32, i32* @RT5663_OVCD_HP_MASK, align 4
  %93 = load i32, i32* @RT5663_OVCD_HP_EN, align 4
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %96 = load i32, i32* @RT5663_DACREF_LDO, align 4
  %97 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %95, i32 %96, i32 15886, i32 0)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %99 = load i32, i32* @RT5663_DIG_VOL_ZCD, align 4
  %100 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %98, i32 %99, i32 192, i32 0)
  br label %101

101:                                              ; preds = %86, %80
  br label %103

102:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %104

103:                                              ; preds = %101, %73
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %102
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
