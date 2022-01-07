; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_pmu_depop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_pmu_depop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32 }

@RT5640_DEPOP_M2 = common dso_local global i64 0, align 8
@RT5640_DEPOP_MASK = common dso_local global i32 0, align 4
@RT5640_DIG_DP_MASK = common dso_local global i32 0, align 4
@RT5640_DEPOP_AUTO = common dso_local global i32 0, align 4
@RT5640_DIG_DP_EN = common dso_local global i32 0, align 4
@RT5640_CHARGE_PUMP = common dso_local global i64 0, align 8
@RT5640_PM_HP_MASK = common dso_local global i32 0, align 4
@RT5640_PM_HP_HV = common dso_local global i32 0, align 4
@RT5640_DEPOP_M3 = common dso_local global i64 0, align 8
@RT5640_CP_FQ1_MASK = common dso_local global i32 0, align 4
@RT5640_CP_FQ2_MASK = common dso_local global i32 0, align 4
@RT5640_CP_FQ3_MASK = common dso_local global i32 0, align 4
@RT5640_CP_FQ_192_KHZ = common dso_local global i32 0, align 4
@RT5640_CP_FQ1_SFT = common dso_local global i32 0, align 4
@RT5640_CP_FQ_12_KHZ = common dso_local global i32 0, align 4
@RT5640_CP_FQ2_SFT = common dso_local global i32 0, align 4
@RT5640_CP_FQ3_SFT = common dso_local global i32 0, align 4
@RT5640_PR_BASE = common dso_local global i64 0, align 8
@RT5640_MAMP_INT_REG2 = common dso_local global i64 0, align 8
@RT5640_DEPOP_M1 = common dso_local global i64 0, align 8
@RT5640_HP_CP_MASK = common dso_local global i32 0, align 4
@RT5640_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5640_HP_CP_PD = common dso_local global i32 0, align 4
@RT5640_HP_SG_EN = common dso_local global i32 0, align 4
@RT5640_CHPUMP_INT_REG1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @rt5640_pmu_depop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt5640_pmu_depop(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5640_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.rt5640_priv* %5, %struct.rt5640_priv** %3, align 8
  %6 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* @RT5640_DEPOP_M2, align 8
  %10 = load i32, i32* @RT5640_DEPOP_MASK, align 4
  %11 = load i32, i32* @RT5640_DIG_DP_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RT5640_DEPOP_AUTO, align 4
  %14 = load i32, i32* @RT5640_DIG_DP_EN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @regmap_update_bits(i32 %8, i64 %9, i32 %12, i32 %15)
  %17 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %18 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @RT5640_CHARGE_PUMP, align 8
  %21 = load i32, i32* @RT5640_PM_HP_MASK, align 4
  %22 = load i32, i32* @RT5640_PM_HP_HV, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i64 %20, i32 %21, i32 %22)
  %24 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* @RT5640_DEPOP_M3, align 8
  %28 = load i32, i32* @RT5640_CP_FQ1_MASK, align 4
  %29 = load i32, i32* @RT5640_CP_FQ2_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RT5640_CP_FQ3_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @RT5640_CP_FQ_192_KHZ, align 4
  %34 = load i32, i32* @RT5640_CP_FQ1_SFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* @RT5640_CP_FQ_12_KHZ, align 4
  %37 = load i32, i32* @RT5640_CP_FQ2_SFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* @RT5640_CP_FQ_192_KHZ, align 4
  %41 = load i32, i32* @RT5640_CP_FQ3_SFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = call i32 @regmap_update_bits(i32 %26, i64 %27, i32 %32, i32 %43)
  %45 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @RT5640_PR_BASE, align 8
  %49 = load i64, i64* @RT5640_MAMP_INT_REG2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @regmap_write(i32 %47, i64 %50, i32 7168)
  %52 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %53 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @RT5640_DEPOP_M1, align 8
  %56 = load i32, i32* @RT5640_HP_CP_MASK, align 4
  %57 = load i32, i32* @RT5640_HP_SG_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RT5640_HP_CP_PD, align 4
  %60 = load i32, i32* @RT5640_HP_SG_EN, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @regmap_update_bits(i32 %54, i64 %55, i32 %58, i32 %61)
  %63 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %64 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @RT5640_PR_BASE, align 8
  %67 = load i64, i64* @RT5640_CHPUMP_INT_REG1, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @regmap_update_bits(i32 %65, i64 %68, i32 1792, i32 1024)
  ret void
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
