; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_hp_amp_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_hp_amp_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32 }

@RT5640_PR_BASE = common dso_local global i64 0, align 8
@RT5640_CHPUMP_INT_REG1 = common dso_local global i64 0, align 8
@RT5640_DEPOP_M2 = common dso_local global i64 0, align 8
@RT5640_DEPOP_MASK = common dso_local global i32 0, align 4
@RT5640_DEPOP_MAN = common dso_local global i32 0, align 4
@RT5640_DEPOP_M1 = common dso_local global i64 0, align 8
@RT5640_HP_CP_MASK = common dso_local global i32 0, align 4
@RT5640_HP_SG_MASK = common dso_local global i32 0, align 4
@RT5640_HP_CB_MASK = common dso_local global i32 0, align 4
@RT5640_HP_CP_PU = common dso_local global i32 0, align 4
@RT5640_HP_SG_DIS = common dso_local global i32 0, align 4
@RT5640_HP_CB_PU = common dso_local global i32 0, align 4
@RT5640_HP_DCC_INT1 = common dso_local global i64 0, align 8
@RT5640_PWR_ANLG1 = common dso_local global i64 0, align 8
@RT5640_PWR_FV1 = common dso_local global i32 0, align 4
@RT5640_PWR_FV2 = common dso_local global i32 0, align 4
@RT5640_PWR_HA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @hp_amp_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp_amp_power_on(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.rt5640_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %4 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %5 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %4)
  store %struct.rt5640_priv* %5, %struct.rt5640_priv** %3, align 8
  %6 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %7 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i64, i64* @RT5640_PR_BASE, align 8
  %10 = load i64, i64* @RT5640_CHPUMP_INT_REG1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @regmap_update_bits(i32 %8, i64 %11, i32 1792, i32 512)
  %13 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* @RT5640_DEPOP_M2, align 8
  %17 = load i32, i32* @RT5640_DEPOP_MASK, align 4
  %18 = load i32, i32* @RT5640_DEPOP_MAN, align 4
  %19 = call i32 @regmap_update_bits(i32 %15, i64 %16, i32 %17, i32 %18)
  %20 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %21 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @RT5640_DEPOP_M1, align 8
  %24 = load i32, i32* @RT5640_HP_CP_MASK, align 4
  %25 = load i32, i32* @RT5640_HP_SG_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RT5640_HP_CB_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RT5640_HP_CP_PU, align 4
  %30 = load i32, i32* @RT5640_HP_SG_DIS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @RT5640_HP_CB_PU, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regmap_update_bits(i32 %22, i64 %23, i32 %28, i32 %33)
  %35 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @RT5640_PR_BASE, align 8
  %39 = load i64, i64* @RT5640_HP_DCC_INT1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @regmap_write(i32 %37, i64 %40, i32 40704)
  %42 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @RT5640_PWR_ANLG1, align 8
  %46 = load i32, i32* @RT5640_PWR_FV1, align 4
  %47 = load i32, i32* @RT5640_PWR_FV2, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_update_bits(i32 %44, i64 %45, i32 %48, i32 0)
  %50 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* @RT5640_PWR_ANLG1, align 8
  %54 = load i32, i32* @RT5640_PWR_HA, align 4
  %55 = load i32, i32* @RT5640_PWR_HA, align 4
  %56 = call i32 @regmap_update_bits(i32 %52, i64 %53, i32 %54, i32 %55)
  %57 = call i32 @usleep_range(i32 10000, i32 15000)
  %58 = load %struct.rt5640_priv*, %struct.rt5640_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* @RT5640_PWR_ANLG1, align 8
  %62 = load i32, i32* @RT5640_PWR_FV1, align 4
  %63 = load i32, i32* @RT5640_PWR_FV2, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @RT5640_PWR_FV1, align 4
  %66 = load i32, i32* @RT5640_PWR_FV2, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @regmap_update_bits(i32 %60, i64 %61, i32 %64, i32 %67)
  ret void
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
