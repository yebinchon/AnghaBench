; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5668.c_rt5668_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5668_priv = type { i32 }

@RT5668_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5668_PWR_MB = common dso_local global i32 0, align 4
@RT5668_PWR_BG = common dso_local global i32 0, align 4
@RT5668_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5668_DIG_GATE_CTRL = common dso_local global i32 0, align 4
@RT5668_PWR_LDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5668_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5668_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5668_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5668_priv* %7, %struct.rt5668_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %64 [
    i32 129, label %9
    i32 128, label %32
    i32 130, label %47
  ]

9:                                                ; preds = %2
  %10 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %11 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RT5668_PWR_ANLG_1, align 4
  %14 = load i32, i32* @RT5668_PWR_MB, align 4
  %15 = load i32, i32* @RT5668_PWR_BG, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RT5668_PWR_MB, align 4
  %18 = load i32, i32* @RT5668_PWR_BG, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %16, i32 %19)
  %21 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %22 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RT5668_PWR_DIG_1, align 4
  %25 = load i32, i32* @RT5668_DIG_GATE_CTRL, align 4
  %26 = load i32, i32* @RT5668_PWR_LDO, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RT5668_DIG_GATE_CTRL, align 4
  %29 = load i32, i32* @RT5668_PWR_LDO, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %27, i32 %30)
  br label %65

32:                                               ; preds = %2
  %33 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %34 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RT5668_PWR_ANLG_1, align 4
  %37 = load i32, i32* @RT5668_PWR_MB, align 4
  %38 = load i32, i32* @RT5668_PWR_MB, align 4
  %39 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %41 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RT5668_PWR_DIG_1, align 4
  %44 = load i32, i32* @RT5668_DIG_GATE_CTRL, align 4
  %45 = load i32, i32* @RT5668_DIG_GATE_CTRL, align 4
  %46 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %45)
  br label %65

47:                                               ; preds = %2
  %48 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %49 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RT5668_PWR_DIG_1, align 4
  %52 = load i32, i32* @RT5668_DIG_GATE_CTRL, align 4
  %53 = load i32, i32* @RT5668_PWR_LDO, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %54, i32 0)
  %56 = load %struct.rt5668_priv*, %struct.rt5668_priv** %5, align 8
  %57 = getelementptr inbounds %struct.rt5668_priv, %struct.rt5668_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RT5668_PWR_ANLG_1, align 4
  %60 = load i32, i32* @RT5668_PWR_MB, align 4
  %61 = load i32, i32* @RT5668_PWR_BG, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %62, i32 0)
  br label %65

64:                                               ; preds = %2
  br label %65

65:                                               ; preds = %64, %47, %32, %9
  ret i32 0
}

declare dso_local %struct.rt5668_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
