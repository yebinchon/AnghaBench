; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ad193x.c_ad193x_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.ad193x_priv = type { i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@AD193X_ADC_SERFMT_TDM = common dso_local global i32 0, align 4
@AD193X_DAC_SERFMT_STEREO = common dso_local global i32 0, align 4
@AD193X_ADC_SERFMT_AUX = common dso_local global i32 0, align 4
@AD193X_DAC_SERFMT_TDM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@AD193X_ADC_LEFT_HIGH = common dso_local global i32 0, align 4
@AD193X_DAC_LEFT_HIGH = common dso_local global i32 0, align 4
@AD193X_ADC_BCLK_INV = common dso_local global i32 0, align 4
@AD193X_DAC_BCLK_INV = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@AD193X_ADC_LCR_MASTER = common dso_local global i32 0, align 4
@AD193X_ADC_BCLK_MASTER = common dso_local global i32 0, align 4
@AD193X_DAC_LCR_MASTER = common dso_local global i32 0, align 4
@AD193X_DAC_BCLK_MASTER = common dso_local global i32 0, align 4
@AD193X_ADC_CTRL1 = common dso_local global i32 0, align 4
@AD193X_ADC_SERFMT_MASK = common dso_local global i32 0, align 4
@AD193X_ADC_CTRL2 = common dso_local global i32 0, align 4
@AD193X_ADC_FMT_MASK = common dso_local global i32 0, align 4
@AD193X_DAC_CTRL0 = common dso_local global i32 0, align 4
@AD193X_DAC_SERFMT_MASK = common dso_local global i32 0, align 4
@AD193X_DAC_CTRL1 = common dso_local global i32 0, align 4
@AD193X_DAC_FMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @ad193x_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad193x_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ad193x_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ad193x_priv* @snd_soc_component_get_drvdata(i32 %13)
  store %struct.ad193x_priv* %14, %struct.ad193x_priv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %32 [
    i32 132, label %18
    i32 133, label %25
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @AD193X_ADC_SERFMT_TDM, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @AD193X_DAC_SERFMT_STEREO, align 4
  %23 = load i32, i32* %8, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @AD193X_ADC_SERFMT_AUX, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @AD193X_DAC_SERFMT_TDM, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.ad193x_priv*, %struct.ad193x_priv** %6, align 8
  %34 = call i64 @ad193x_has_adc(%struct.ad193x_priv* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %152

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %25, %18
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %43 = and i32 %41, %42
  switch i32 %43, label %72 [
    i32 128, label %44
    i32 129, label %45
    i32 130, label %52
    i32 131, label %59
  ]

44:                                               ; preds = %40
  br label %75

45:                                               ; preds = %40
  %46 = load i32, i32* @AD193X_ADC_LEFT_HIGH, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* @AD193X_DAC_LEFT_HIGH, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %75

52:                                               ; preds = %40
  %53 = load i32, i32* @AD193X_ADC_BCLK_INV, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @AD193X_DAC_BCLK_INV, align 4
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %75

59:                                               ; preds = %40
  %60 = load i32, i32* @AD193X_ADC_LEFT_HIGH, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @AD193X_ADC_BCLK_INV, align 4
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @AD193X_DAC_LEFT_HIGH, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @AD193X_DAC_BCLK_INV, align 4
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %40
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %152

75:                                               ; preds = %59, %52, %45, %44
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 133
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* @AD193X_DAC_LEFT_HIGH, align 4
  %81 = load i32, i32* %10, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %86 = and i32 %84, %85
  switch i32 %86, label %115 [
    i32 137, label %87
    i32 135, label %100
    i32 136, label %107
    i32 134, label %114
  ]

87:                                               ; preds = %83
  %88 = load i32, i32* @AD193X_ADC_LCR_MASTER, align 4
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @AD193X_ADC_BCLK_MASTER, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* @AD193X_DAC_LCR_MASTER, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* @AD193X_DAC_BCLK_MASTER, align 4
  %98 = load i32, i32* %10, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %10, align 4
  br label %118

100:                                              ; preds = %83
  %101 = load i32, i32* @AD193X_ADC_LCR_MASTER, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @AD193X_DAC_LCR_MASTER, align 4
  %105 = load i32, i32* %10, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %10, align 4
  br label %118

107:                                              ; preds = %83
  %108 = load i32, i32* @AD193X_ADC_BCLK_MASTER, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* @AD193X_DAC_BCLK_MASTER, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %10, align 4
  br label %118

114:                                              ; preds = %83
  br label %118

115:                                              ; preds = %83
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %152

118:                                              ; preds = %114, %107, %100, %87
  %119 = load %struct.ad193x_priv*, %struct.ad193x_priv** %6, align 8
  %120 = call i64 @ad193x_has_adc(%struct.ad193x_priv* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %118
  %123 = load %struct.ad193x_priv*, %struct.ad193x_priv** %6, align 8
  %124 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AD193X_ADC_CTRL1, align 4
  %127 = load i32, i32* @AD193X_ADC_SERFMT_MASK, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @regmap_update_bits(i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.ad193x_priv*, %struct.ad193x_priv** %6, align 8
  %131 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AD193X_ADC_CTRL2, align 4
  %134 = load i32, i32* @AD193X_ADC_FMT_MASK, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @regmap_update_bits(i32 %132, i32 %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %122, %118
  %138 = load %struct.ad193x_priv*, %struct.ad193x_priv** %6, align 8
  %139 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @AD193X_DAC_CTRL0, align 4
  %142 = load i32, i32* @AD193X_DAC_SERFMT_MASK, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @regmap_update_bits(i32 %140, i32 %141, i32 %142, i32 %143)
  %145 = load %struct.ad193x_priv*, %struct.ad193x_priv** %6, align 8
  %146 = getelementptr inbounds %struct.ad193x_priv, %struct.ad193x_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AD193X_DAC_CTRL1, align 4
  %149 = load i32, i32* @AD193X_DAC_FMT_MASK, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @regmap_update_bits(i32 %147, i32 %148, i32 %149, i32 %150)
  store i32 0, i32* %3, align 4
  br label %152

152:                                              ; preds = %137, %115, %72, %36
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local %struct.ad193x_priv* @snd_soc_component_get_drvdata(i32) #1

declare dso_local i64 @ad193x_has_adc(%struct.ad193x_priv*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
