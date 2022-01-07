; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_amp_power_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_amp_power_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5651_priv = type { i32 }

@RT5651_PR_BASE = common dso_local global i64 0, align 8
@RT5651_CHPUMP_INT_REG1 = common dso_local global i64 0, align 8
@RT5651_DEPOP_M2 = common dso_local global i64 0, align 8
@RT5651_DEPOP_MASK = common dso_local global i32 0, align 4
@RT5651_DEPOP_MAN = common dso_local global i32 0, align 4
@RT5651_DEPOP_M1 = common dso_local global i64 0, align 8
@RT5651_HP_CP_MASK = common dso_local global i32 0, align 4
@RT5651_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5651_HP_CB_MASK = common dso_local global i32 0, align 4
@RT5651_HP_CP_PU = common dso_local global i32 0, align 4
@RT5651_HP_SG_DIS = common dso_local global i32 0, align 4
@RT5651_HP_CB_PU = common dso_local global i32 0, align 4
@RT5651_HP_DCC_INT1 = common dso_local global i64 0, align 8
@RT5651_PWR_ANLG1 = common dso_local global i64 0, align 8
@RT5651_PWR_FV1 = common dso_local global i32 0, align 4
@RT5651_PWR_FV2 = common dso_local global i32 0, align 4
@RT5651_PWR_HA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5651_amp_power_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_amp_power_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.rt5651_priv*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %12)
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %8, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = call %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.rt5651_priv* %15, %struct.rt5651_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %81 [
    i32 128, label %17
  ]

17:                                               ; preds = %3
  %18 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %19 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @RT5651_PR_BASE, align 8
  %22 = load i64, i64* @RT5651_CHPUMP_INT_REG1, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @regmap_update_bits(i32 %20, i64 %23, i32 1792, i32 512)
  %25 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %26 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* @RT5651_DEPOP_M2, align 8
  %29 = load i32, i32* @RT5651_DEPOP_MASK, align 4
  %30 = load i32, i32* @RT5651_DEPOP_MAN, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i64 %28, i32 %29, i32 %30)
  %32 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %33 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* @RT5651_DEPOP_M1, align 8
  %36 = load i32, i32* @RT5651_HP_CP_MASK, align 4
  %37 = load i32, i32* @RT5651_HP_SG_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @RT5651_HP_CB_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RT5651_HP_CP_PU, align 4
  %42 = load i32, i32* @RT5651_HP_SG_DIS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @RT5651_HP_CB_PU, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @regmap_update_bits(i32 %34, i64 %35, i32 %40, i32 %45)
  %47 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %48 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @RT5651_PR_BASE, align 8
  %51 = load i64, i64* @RT5651_HP_DCC_INT1, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @regmap_write(i32 %49, i64 %52, i32 40704)
  %54 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %55 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @RT5651_PWR_ANLG1, align 8
  %58 = load i32, i32* @RT5651_PWR_FV1, align 4
  %59 = load i32, i32* @RT5651_PWR_FV2, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @regmap_update_bits(i32 %56, i64 %57, i32 %60, i32 0)
  %62 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %63 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @RT5651_PWR_ANLG1, align 8
  %66 = load i32, i32* @RT5651_PWR_HA, align 4
  %67 = load i32, i32* @RT5651_PWR_HA, align 4
  %68 = call i32 @regmap_update_bits(i32 %64, i64 %65, i32 %66, i32 %67)
  %69 = call i32 @usleep_range(i32 10000, i32 15000)
  %70 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %71 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @RT5651_PWR_ANLG1, align 8
  %74 = load i32, i32* @RT5651_PWR_FV1, align 4
  %75 = load i32, i32* @RT5651_PWR_FV2, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RT5651_PWR_FV1, align 4
  %78 = load i32, i32* @RT5651_PWR_FV2, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @regmap_update_bits(i32 %72, i64 %73, i32 %76, i32 %79)
  br label %82

81:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

82:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.rt5651_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
