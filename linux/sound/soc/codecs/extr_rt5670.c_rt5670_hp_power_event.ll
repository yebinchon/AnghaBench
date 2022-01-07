; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_hp_power_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5670.c_rt5670_hp_power_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5670_priv = type { i32 }

@RT5670_CHARGE_PUMP = common dso_local global i32 0, align 4
@RT5670_PM_HP_MASK = common dso_local global i32 0, align 4
@RT5670_PM_HP_HV = common dso_local global i32 0, align 4
@RT5670_GEN_CTRL2 = common dso_local global i32 0, align 4
@RT5670_PWR_ANLG1 = common dso_local global i32 0, align 4
@RT5670_PWR_HA = common dso_local global i32 0, align 4
@RT5670_PWR_FV1 = common dso_local global i32 0, align 4
@RT5670_PWR_FV2 = common dso_local global i32 0, align 4
@RT5670_DEPOP_M2 = common dso_local global i64 0, align 8
@RT5670_DEPOP_M1 = common dso_local global i64 0, align 8
@RT5670_PR_BASE = common dso_local global i64 0, align 8
@RT5670_HP_DCC_INT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5670_hp_power_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5670_hp_power_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5670_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5670_priv* %15, %struct.rt5670_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %75 [
    i32 129, label %17
    i32 128, label %68
  ]

17:                                               ; preds = %3
  %18 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %19 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RT5670_CHARGE_PUMP, align 4
  %22 = load i32, i32* @RT5670_PM_HP_MASK, align 4
  %23 = load i32, i32* @RT5670_PM_HP_HV, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %26 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RT5670_GEN_CTRL2, align 4
  %29 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 1024, i32 1024)
  %30 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RT5670_PWR_ANLG1, align 4
  %34 = load i32, i32* @RT5670_PWR_HA, align 4
  %35 = load i32, i32* @RT5670_PWR_FV1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @RT5670_PWR_FV2, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RT5670_PWR_HA, align 4
  %40 = load i32, i32* @RT5670_PWR_FV1, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RT5670_PWR_FV2, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %38, i32 %43)
  %45 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %46 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @RT5670_DEPOP_M2, align 8
  %49 = call i32 @regmap_write(i32 %47, i64 %48, i32 12544)
  %50 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %51 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @RT5670_DEPOP_M1, align 8
  %54 = call i32 @regmap_write(i32 %52, i64 %53, i32 32777)
  %55 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %56 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @RT5670_PR_BASE, align 8
  %59 = load i64, i64* @RT5670_HP_DCC_INT1, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @regmap_write(i32 %57, i64 %60, i32 40704)
  %62 = call i32 @mdelay(i32 20)
  %63 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %64 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @RT5670_DEPOP_M1, align 8
  %67 = call i32 @regmap_write(i32 %65, i64 %66, i32 32793)
  br label %76

68:                                               ; preds = %3
  %69 = load %struct.rt5670_priv*, %struct.rt5670_priv** %9, align 8
  %70 = getelementptr inbounds %struct.rt5670_priv, %struct.rt5670_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* @RT5670_DEPOP_M1, align 8
  %73 = call i32 @regmap_write(i32 %71, i64 %72, i32 4)
  %74 = call i32 @msleep(i32 30)
  br label %76

75:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

76:                                               ; preds = %68, %17
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5670_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
