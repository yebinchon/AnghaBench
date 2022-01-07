; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_dmic_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_dmic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32 }

@RT5640_GPIO_CTRL1 = common dso_local global i32 0, align 4
@RT5640_GP2_PIN_MASK = common dso_local global i32 0, align 4
@RT5640_GP2_PIN_DMIC1_SCL = common dso_local global i32 0, align 4
@RT5640_DMIC = common dso_local global i32 0, align 4
@RT5640_DMIC_1_DP_MASK = common dso_local global i32 0, align 4
@RT5640_DMIC_1_DP_GPIO3 = common dso_local global i32 0, align 4
@RT5640_GP3_PIN_MASK = common dso_local global i32 0, align 4
@RT5640_GP3_PIN_DMIC1_SDA = common dso_local global i32 0, align 4
@RT5640_DMIC_2_DP_MASK = common dso_local global i32 0, align 4
@RT5640_DMIC_2_DP_GPIO4 = common dso_local global i32 0, align 4
@RT5640_GP4_PIN_MASK = common dso_local global i32 0, align 4
@RT5640_GP4_PIN_DMIC2_SDA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5640_dmic_enable(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt5640_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.rt5640_priv* %9, %struct.rt5640_priv** %7, align 8
  %10 = load %struct.rt5640_priv*, %struct.rt5640_priv** %7, align 8
  %11 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RT5640_GPIO_CTRL1, align 4
  %14 = load i32, i32* @RT5640_GP2_PIN_MASK, align 4
  %15 = load i32, i32* @RT5640_GP2_PIN_DMIC1_SCL, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.rt5640_priv*, %struct.rt5640_priv** %7, align 8
  %21 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RT5640_DMIC, align 4
  %24 = load i32, i32* @RT5640_DMIC_1_DP_MASK, align 4
  %25 = load i32, i32* @RT5640_DMIC_1_DP_GPIO3, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.rt5640_priv*, %struct.rt5640_priv** %7, align 8
  %28 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RT5640_GPIO_CTRL1, align 4
  %31 = load i32, i32* @RT5640_GP3_PIN_MASK, align 4
  %32 = load i32, i32* @RT5640_GP3_PIN_DMIC1_SDA, align 4
  %33 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %19, %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.rt5640_priv*, %struct.rt5640_priv** %7, align 8
  %39 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RT5640_DMIC, align 4
  %42 = load i32, i32* @RT5640_DMIC_2_DP_MASK, align 4
  %43 = load i32, i32* @RT5640_DMIC_2_DP_GPIO4, align 4
  %44 = call i32 @regmap_update_bits(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.rt5640_priv*, %struct.rt5640_priv** %7, align 8
  %46 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RT5640_GPIO_CTRL1, align 4
  %49 = load i32, i32* @RT5640_GP4_PIN_MASK, align 4
  %50 = load i32, i32* @RT5640_GP4_PIN_DMIC2_SDA, align 4
  %51 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %37, %34
  ret i32 0
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
