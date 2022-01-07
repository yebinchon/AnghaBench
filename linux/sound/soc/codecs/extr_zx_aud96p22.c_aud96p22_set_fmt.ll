; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_zx_aud96p22.c_aud96p22_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_zx_aud96p22.c_aud96p22_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.aud96p22_priv = type { %struct.regmap* }
%struct.regmap = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@I2S1_MS_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUD96P22_I2S1_CONFIG_0 = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@I2S1_MODE_RIGHT_J = common dso_local global i32 0, align 4
@I2S1_MODE_I2S = common dso_local global i32 0, align 4
@I2S1_MODE_LEFT_J = common dso_local global i32 0, align 4
@I2S1_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @aud96p22_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aud96p22_set_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aud96p22_priv*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.aud96p22_priv* @snd_soc_component_get_drvdata(i32 %11)
  store %struct.aud96p22_priv* %12, %struct.aud96p22_priv** %6, align 8
  %13 = load %struct.aud96p22_priv*, %struct.aud96p22_priv** %6, align 8
  %14 = getelementptr inbounds %struct.aud96p22_priv, %struct.aud96p22_priv* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %22 [
    i32 131, label %19
    i32 132, label %20
  ]

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @I2S1_MS_MODE, align 4
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %20, %19
  %26 = load %struct.regmap*, %struct.regmap** %7, align 8
  %27 = load i32, i32* @AUD96P22_I2S1_CONFIG_0, align 4
  %28 = load i32, i32* @I2S1_MS_MODE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @regmap_update_bits(%struct.regmap* %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %40 [
    i32 128, label %34
    i32 130, label %36
    i32 129, label %38
  ]

34:                                               ; preds = %25
  %35 = load i32, i32* @I2S1_MODE_RIGHT_J, align 4
  store i32 %35, i32* %8, align 4
  br label %43

36:                                               ; preds = %25
  %37 = load i32, i32* @I2S1_MODE_I2S, align 4
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load i32, i32* @I2S1_MODE_LEFT_J, align 4
  store i32 %39, i32* %8, align 4
  br label %43

40:                                               ; preds = %25
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %38, %36, %34
  %44 = load %struct.regmap*, %struct.regmap** %7, align 8
  %45 = load i32, i32* @AUD96P22_I2S1_CONFIG_0, align 4
  %46 = load i32, i32* @I2S1_MODE_MASK, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @regmap_update_bits(%struct.regmap* %44, i32 %45, i32 %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %40, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.aud96p22_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
