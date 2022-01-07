; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_hp_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5651.c_rt5651_hp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.rt5651_priv = type { i32, i32 }

@RT5651_DEPOP_M2 = common dso_local global i64 0, align 8
@RT5651_DEPOP_MASK = common dso_local global i32 0, align 4
@RT5651_DIG_DP_MASK = common dso_local global i32 0, align 4
@RT5651_DEPOP_AUTO = common dso_local global i32 0, align 4
@RT5651_DIG_DP_EN = common dso_local global i32 0, align 4
@RT5651_CHARGE_PUMP = common dso_local global i64 0, align 8
@RT5651_PM_HP_MASK = common dso_local global i32 0, align 4
@RT5651_PM_HP_HV = common dso_local global i32 0, align 4
@RT5651_DEPOP_M3 = common dso_local global i64 0, align 8
@RT5651_CP_FQ1_MASK = common dso_local global i32 0, align 4
@RT5651_CP_FQ2_MASK = common dso_local global i32 0, align 4
@RT5651_CP_FQ3_MASK = common dso_local global i32 0, align 4
@RT5651_CP_FQ_192_KHZ = common dso_local global i32 0, align 4
@RT5651_CP_FQ1_SFT = common dso_local global i32 0, align 4
@RT5651_CP_FQ_12_KHZ = common dso_local global i32 0, align 4
@RT5651_CP_FQ2_SFT = common dso_local global i32 0, align 4
@RT5651_CP_FQ3_SFT = common dso_local global i32 0, align 4
@RT5651_PR_BASE = common dso_local global i64 0, align 8
@RT5651_MAMP_INT_REG2 = common dso_local global i64 0, align 8
@RT5651_DEPOP_M1 = common dso_local global i64 0, align 8
@RT5651_HP_CP_MASK = common dso_local global i32 0, align 4
@RT5651_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5651_HP_CP_PD = common dso_local global i32 0, align 4
@RT5651_HP_SG_EN = common dso_local global i32 0, align 4
@RT5651_CHPUMP_INT_REG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @rt5651_hp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5651_hp_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
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
  switch i32 %16, label %88 [
    i32 129, label %17
    i32 128, label %84
  ]

17:                                               ; preds = %3
  %18 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %19 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @RT5651_DEPOP_M2, align 8
  %22 = load i32, i32* @RT5651_DEPOP_MASK, align 4
  %23 = load i32, i32* @RT5651_DIG_DP_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RT5651_DEPOP_AUTO, align 4
  %26 = load i32, i32* @RT5651_DIG_DP_EN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_update_bits(i32 %20, i64 %21, i32 %24, i32 %27)
  %29 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %30 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @RT5651_CHARGE_PUMP, align 8
  %33 = load i32, i32* @RT5651_PM_HP_MASK, align 4
  %34 = load i32, i32* @RT5651_PM_HP_HV, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i64 %32, i32 %33, i32 %34)
  %36 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %37 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @RT5651_DEPOP_M3, align 8
  %40 = load i32, i32* @RT5651_CP_FQ1_MASK, align 4
  %41 = load i32, i32* @RT5651_CP_FQ2_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @RT5651_CP_FQ3_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @RT5651_CP_FQ_192_KHZ, align 4
  %46 = load i32, i32* @RT5651_CP_FQ1_SFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @RT5651_CP_FQ_12_KHZ, align 4
  %49 = load i32, i32* @RT5651_CP_FQ2_SFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i32, i32* @RT5651_CP_FQ_192_KHZ, align 4
  %53 = load i32, i32* @RT5651_CP_FQ3_SFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = call i32 @regmap_update_bits(i32 %38, i64 %39, i32 %44, i32 %55)
  %57 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %58 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* @RT5651_PR_BASE, align 8
  %61 = load i64, i64* @RT5651_MAMP_INT_REG2, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @regmap_write(i32 %59, i64 %62, i32 7168)
  %64 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %65 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* @RT5651_DEPOP_M1, align 8
  %68 = load i32, i32* @RT5651_HP_CP_MASK, align 4
  %69 = load i32, i32* @RT5651_HP_SG_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RT5651_HP_CP_PD, align 4
  %72 = load i32, i32* @RT5651_HP_SG_EN, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @regmap_update_bits(i32 %66, i64 %67, i32 %70, i32 %73)
  %75 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %76 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @RT5651_PR_BASE, align 8
  %79 = load i64, i64* @RT5651_CHPUMP_INT_REG1, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @regmap_update_bits(i32 %77, i64 %80, i32 1792, i32 1024)
  %82 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %83 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %89

84:                                               ; preds = %3
  %85 = load %struct.rt5651_priv*, %struct.rt5651_priv** %9, align 8
  %86 = getelementptr inbounds %struct.rt5651_priv, %struct.rt5651_priv* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = call i32 @usleep_range(i32 70000, i32 75000)
  br label %89

88:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

89:                                               ; preds = %84, %17
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* %4, align 4
  ret i32 %91
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
