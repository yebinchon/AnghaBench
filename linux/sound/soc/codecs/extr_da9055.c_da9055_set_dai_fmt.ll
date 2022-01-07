; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da9055.c_da9055_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.da9055_priv = type { i64 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@DA9055_AIF_CLK_EN_MASTER_MODE = common dso_local global i64 0, align 8
@DA9055_AIF_CLK_EN_SLAVE_MODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA9055_PLL_CTRL = common dso_local global i32 0, align 4
@DA9055_PLL_EN = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@DA9055_AIF_FORMAT_I2S_MODE = common dso_local global i64 0, align 8
@DA9055_AIF_FORMAT_LEFT_J = common dso_local global i64 0, align 8
@DA9055_AIF_FORMAT_RIGHT_J = common dso_local global i64 0, align 8
@DA9055_AIF_FORMAT_DSP = common dso_local global i64 0, align 8
@DA9055_AIF_BCLKS_PER_WCLK_32 = common dso_local global i64 0, align 8
@DA9055_AIF_CLK_MODE = common dso_local global i32 0, align 4
@DA9055_AIF_CLK_MODE_MASK = common dso_local global i32 0, align 4
@DA9055_AIF_BCLK_MASK = common dso_local global i32 0, align 4
@DA9055_AIF_CTRL = common dso_local global i32 0, align 4
@DA9055_AIF_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @da9055_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.da9055_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %15 = call %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.da9055_priv* %15, %struct.da9055_priv** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %23 [
    i32 133, label %19
    i32 132, label %21
  ]

19:                                               ; preds = %2
  store i64 1, i64* %10, align 8
  %20 = load i64, i64* @DA9055_AIF_CLK_EN_MASTER_MODE, align 8
  store i64 %20, i64* %8, align 8
  br label %26

21:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  %22 = load i64, i64* @DA9055_AIF_CLK_EN_SLAVE_MODE, align 8
  store i64 %22, i64* %8, align 8
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %76

26:                                               ; preds = %21, %19
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %28 = load i32, i32* @DA9055_PLL_CTRL, align 4
  %29 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %27, i32 %28)
  %30 = load i32, i32* @DA9055_PLL_EN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load %struct.da9055_priv*, %struct.da9055_priv** %7, align 8
  %35 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %76

42:                                               ; preds = %33, %26
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.da9055_priv*, %struct.da9055_priv** %7, align 8
  %45 = getelementptr inbounds %struct.da9055_priv, %struct.da9055_priv* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %57 [
    i32 130, label %49
    i32 129, label %51
    i32 128, label %53
    i32 131, label %55
  ]

49:                                               ; preds = %42
  %50 = load i64, i64* @DA9055_AIF_FORMAT_I2S_MODE, align 8
  store i64 %50, i64* %9, align 8
  br label %60

51:                                               ; preds = %42
  %52 = load i64, i64* @DA9055_AIF_FORMAT_LEFT_J, align 8
  store i64 %52, i64* %9, align 8
  br label %60

53:                                               ; preds = %42
  %54 = load i64, i64* @DA9055_AIF_FORMAT_RIGHT_J, align 8
  store i64 %54, i64* %9, align 8
  br label %60

55:                                               ; preds = %42
  %56 = load i64, i64* @DA9055_AIF_FORMAT_DSP, align 8
  store i64 %56, i64* %9, align 8
  br label %60

57:                                               ; preds = %42
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %76

60:                                               ; preds = %55, %53, %51, %49
  %61 = load i64, i64* @DA9055_AIF_BCLKS_PER_WCLK_32, align 8
  %62 = load i64, i64* %8, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %8, align 8
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %65 = load i32, i32* @DA9055_AIF_CLK_MODE, align 4
  %66 = load i32, i32* @DA9055_AIF_CLK_MODE_MASK, align 4
  %67 = load i32, i32* @DA9055_AIF_BCLK_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %68, i64 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %72 = load i32, i32* @DA9055_AIF_CTRL, align 4
  %73 = load i32, i32* @DA9055_AIF_FORMAT_MASK, align 4
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %73, i64 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %60, %57, %39, %23
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.da9055_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
