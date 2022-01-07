; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.ad193x_priv = type { i32, i32 }

@AD193X_SYSCLK_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD193X_PLL_CLK_CTRL1 = common dso_local global i32 0, align 4
@AD193X_PLL_SRC_MASK = common dso_local global i32 0, align 4
@AD193X_PLL_DAC_SRC_MCLK = common dso_local global i32 0, align 4
@AD193X_PLL_CLK_SRC_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @ad193x_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad193x_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.snd_soc_dapm_context*, align 8
  %12 = alloca %struct.ad193x_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %10, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %17 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %16)
  store %struct.snd_soc_dapm_context* %17, %struct.snd_soc_dapm_context** %11, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %19 = call %struct.ad193x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %18)
  store %struct.ad193x_priv* %19, %struct.ad193x_priv** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @AD193X_SYSCLK_MCLK, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 24576000
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %54

33:                                               ; preds = %27
  %34 = load %struct.ad193x_priv*, %struct.ad193x_priv** %12, align 8
  %35 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AD193X_PLL_CLK_CTRL1, align 4
  %38 = load i32, i32* @AD193X_PLL_SRC_MASK, align 4
  %39 = load i32, i32* @AD193X_PLL_DAC_SRC_MCLK, align 4
  %40 = load i32, i32* @AD193X_PLL_CLK_SRC_MCLK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %11, align 8
  %44 = call i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context* %43)
  store i32 0, i32* %5, align 4
  br label %54

45:                                               ; preds = %4
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %51 [
    i32 12288000, label %47
    i32 18432000, label %47
    i32 24576000, label %47
    i32 36864000, label %47
  ]

47:                                               ; preds = %45, %45, %45, %45
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ad193x_priv*, %struct.ad193x_priv** %12, align 8
  %50 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %47, %33, %30
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.ad193x_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dapm_sync(%struct.snd_soc_dapm_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
