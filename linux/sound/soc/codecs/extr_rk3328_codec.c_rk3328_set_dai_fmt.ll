; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rk3328_codec.c_rk3328_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.rk3328_codec_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@PIN_DIRECTION_IN = common dso_local global i32 0, align 4
@DAC_I2S_MODE_SLAVE = common dso_local global i32 0, align 4
@PIN_DIRECTION_OUT = common dso_local global i32 0, align 4
@DAC_I2S_MODE_MASTER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DAC_INIT_CTRL1 = common dso_local global i32 0, align 4
@PIN_DIRECTION_MASK = common dso_local global i32 0, align 4
@DAC_I2S_MODE_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@DAC_MODE_PCM = common dso_local global i32 0, align 4
@DAC_MODE_I2S = common dso_local global i32 0, align 4
@DAC_MODE_RJM = common dso_local global i32 0, align 4
@DAC_MODE_LJM = common dso_local global i32 0, align 4
@DAC_INIT_CTRL2 = common dso_local global i32 0, align 4
@DAC_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rk3328_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3328_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk3328_codec_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.rk3328_codec_priv* @snd_soc_component_get_drvdata(i32 %10)
  store %struct.rk3328_codec_priv* %11, %struct.rk3328_codec_priv** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %23 [
    i32 133, label %15
    i32 134, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @PIN_DIRECTION_IN, align 4
  %17 = load i32, i32* @DAC_I2S_MODE_SLAVE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %7, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @PIN_DIRECTION_OUT, align 4
  %21 = load i32, i32* @DAC_I2S_MODE_MASTER, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %7, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %19, %15
  %27 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %6, align 8
  %28 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DAC_INIT_CTRL1, align 4
  %31 = load i32, i32* @PIN_DIRECTION_MASK, align 4
  %32 = load i32, i32* @DAC_I2S_MODE_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %47 [
    i32 132, label %39
    i32 131, label %39
    i32 130, label %41
    i32 128, label %43
    i32 129, label %45
  ]

39:                                               ; preds = %26, %26
  %40 = load i32, i32* @DAC_MODE_PCM, align 4
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %26
  %42 = load i32, i32* @DAC_MODE_I2S, align 4
  store i32 %42, i32* %7, align 4
  br label %50

43:                                               ; preds = %26
  %44 = load i32, i32* @DAC_MODE_RJM, align 4
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %26
  %46 = load i32, i32* @DAC_MODE_LJM, align 4
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %26
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %45, %43, %41, %39
  %51 = load %struct.rk3328_codec_priv*, %struct.rk3328_codec_priv** %6, align 8
  %52 = getelementptr inbounds %struct.rk3328_codec_priv, %struct.rk3328_codec_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DAC_INIT_CTRL2, align 4
  %55 = load i32, i32* @DAC_MODE_MASK, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %47, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.rk3328_codec_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
