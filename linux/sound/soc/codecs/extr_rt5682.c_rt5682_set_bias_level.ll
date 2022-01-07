; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5682_priv = type { i32 }

@RT5682_PWR_ANLG_1 = common dso_local global i32 0, align 4
@RT5682_PWR_BG = common dso_local global i32 0, align 4
@RT5682_PWR_DIG_1 = common dso_local global i32 0, align 4
@RT5682_DIG_GATE_CTRL = common dso_local global i32 0, align 4
@RT5682_PWR_LDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @rt5682_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt5682_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.rt5682_priv* %7, %struct.rt5682_priv** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %51 [
    i32 129, label %9
    i32 128, label %28
    i32 130, label %36
  ]

9:                                                ; preds = %2
  %10 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %11 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %14 = load i32, i32* @RT5682_PWR_BG, align 4
  %15 = load i32, i32* @RT5682_PWR_BG, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %18 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RT5682_PWR_DIG_1, align 4
  %21 = load i32, i32* @RT5682_DIG_GATE_CTRL, align 4
  %22 = load i32, i32* @RT5682_PWR_LDO, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RT5682_DIG_GATE_CTRL, align 4
  %25 = load i32, i32* @RT5682_PWR_LDO, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %23, i32 %26)
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RT5682_PWR_DIG_1, align 4
  %33 = load i32, i32* @RT5682_DIG_GATE_CTRL, align 4
  %34 = load i32, i32* @RT5682_DIG_GATE_CTRL, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  br label %52

36:                                               ; preds = %2
  %37 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %38 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RT5682_PWR_DIG_1, align 4
  %41 = load i32, i32* @RT5682_DIG_GATE_CTRL, align 4
  %42 = load i32, i32* @RT5682_PWR_LDO, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 %43, i32 0)
  %45 = load %struct.rt5682_priv*, %struct.rt5682_priv** %5, align 8
  %46 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RT5682_PWR_ANLG_1, align 4
  %49 = load i32, i32* @RT5682_PWR_BG, align 4
  %50 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 0)
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %36, %28, %9
  ret i32 0
}

declare dso_local %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
