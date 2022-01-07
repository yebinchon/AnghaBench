; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ad193x_priv = type { i32 }

@AD193X_2_CHANNELS = common dso_local global i32 0, align 4
@AD193X_4_CHANNELS = common dso_local global i32 0, align 4
@AD193X_8_CHANNELS = common dso_local global i32 0, align 4
@AD193X_16_CHANNELS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD193X_DAC_CTRL1 = common dso_local global i32 0, align 4
@AD193X_DAC_CHAN_MASK = common dso_local global i32 0, align 4
@AD193X_DAC_CHAN_SHFT = common dso_local global i32 0, align 4
@AD193X_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD193X_ADC_CHAN_MASK = common dso_local global i32 0, align 4
@AD193X_ADC_CHAN_SHFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @ad193x_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad193x_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ad193x_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ad193x_priv* @snd_soc_component_get_drvdata(i32 %16)
  store %struct.ad193x_priv* %17, %struct.ad193x_priv** %12, align 8
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %27 [
    i32 2, label %19
    i32 4, label %21
    i32 8, label %23
    i32 16, label %25
  ]

19:                                               ; preds = %5
  %20 = load i32, i32* @AD193X_2_CHANNELS, align 4
  store i32 %20, i32* %13, align 4
  br label %30

21:                                               ; preds = %5
  %22 = load i32, i32* @AD193X_4_CHANNELS, align 4
  store i32 %22, i32* %13, align 4
  br label %30

23:                                               ; preds = %5
  %24 = load i32, i32* @AD193X_8_CHANNELS, align 4
  store i32 %24, i32* %13, align 4
  br label %30

25:                                               ; preds = %5
  %26 = load i32, i32* @AD193X_16_CHANNELS, align 4
  store i32 %26, i32* %13, align 4
  br label %30

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %54

30:                                               ; preds = %25, %23, %21, %19
  %31 = load %struct.ad193x_priv*, %struct.ad193x_priv** %12, align 8
  %32 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AD193X_DAC_CTRL1, align 4
  %35 = load i32, i32* @AD193X_DAC_CHAN_MASK, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @AD193X_DAC_CHAN_SHFT, align 4
  %38 = shl i32 %36, %37
  %39 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.ad193x_priv*, %struct.ad193x_priv** %12, align 8
  %41 = call i64 @ad193x_has_adc(%struct.ad193x_priv* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.ad193x_priv*, %struct.ad193x_priv** %12, align 8
  %45 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AD193X_ADC_CTRL2, align 4
  %48 = load i32, i32* @AD193X_ADC_CHAN_MASK, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @AD193X_ADC_CHAN_SHFT, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %43, %30
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.ad193x_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @ad193x_has_adc(%struct.ad193x_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
