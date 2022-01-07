; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5514_priv = type { i32 }

@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@RT5514_I2S_LR_INV = common dso_local global i32 0, align 4
@RT5514_I2S_BP_INV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT5514_I2S_DF_LEFT = common dso_local global i32 0, align 4
@RT5514_I2S_DF_PCM_A = common dso_local global i32 0, align 4
@RT5514_I2S_DF_PCM_B = common dso_local global i32 0, align 4
@RT5514_I2S_CTRL1 = common dso_local global i32 0, align 4
@RT5514_I2S_DF_MASK = common dso_local global i32 0, align 4
@RT5514_I2S_BP_MASK = common dso_local global i32 0, align 4
@RT5514_I2S_LR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt5514_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt5514_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.rt5514_priv* %13, %struct.rt5514_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %32 [
    i32 128, label %17
    i32 129, label %18
    i32 131, label %22
    i32 132, label %26
  ]

17:                                               ; preds = %2
  br label %35

18:                                               ; preds = %2
  %19 = load i32, i32* @RT5514_I2S_LR_INV, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load i32, i32* @RT5514_I2S_BP_INV, align 4
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load i32, i32* @RT5514_I2S_BP_INV, align 4
  %28 = load i32, i32* @RT5514_I2S_LR_INV, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %67

35:                                               ; preds = %26, %22, %18, %17
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %52 [
    i32 133, label %39
    i32 130, label %40
    i32 135, label %44
    i32 134, label %48
  ]

39:                                               ; preds = %35
  br label %55

40:                                               ; preds = %35
  %41 = load i32, i32* @RT5514_I2S_DF_LEFT, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %55

44:                                               ; preds = %35
  %45 = load i32, i32* @RT5514_I2S_DF_PCM_A, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @RT5514_I2S_DF_PCM_B, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %67

55:                                               ; preds = %48, %44, %40, %39
  %56 = load %struct.rt5514_priv*, %struct.rt5514_priv** %7, align 8
  %57 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @RT5514_I2S_CTRL1, align 4
  %60 = load i32, i32* @RT5514_I2S_DF_MASK, align 4
  %61 = load i32, i32* @RT5514_I2S_BP_MASK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RT5514_I2S_LR_MASK, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 %64, i32 %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %55, %52, %32
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
