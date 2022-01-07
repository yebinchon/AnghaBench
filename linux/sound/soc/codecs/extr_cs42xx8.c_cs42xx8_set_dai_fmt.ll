; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42xx8.c_cs42xx8_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs42xx8_priv = type { i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@CS42XX8_INTF_DAC_DIF_LEFTJ = common dso_local global i32 0, align 4
@CS42XX8_INTF_ADC_DIF_LEFTJ = common dso_local global i32 0, align 4
@CS42XX8_INTF_DAC_DIF_I2S = common dso_local global i32 0, align 4
@CS42XX8_INTF_ADC_DIF_I2S = common dso_local global i32 0, align 4
@CS42XX8_INTF_DAC_DIF_RIGHTJ = common dso_local global i32 0, align 4
@CS42XX8_INTF_ADC_DIF_RIGHTJ = common dso_local global i32 0, align 4
@CS42XX8_INTF_DAC_DIF_TDM = common dso_local global i32 0, align 4
@CS42XX8_INTF_ADC_DIF_TDM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unsupported dai format\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS42XX8_INTF = common dso_local global i32 0, align 4
@CS42XX8_INTF_DAC_DIF_MASK = common dso_local global i32 0, align 4
@CS42XX8_INTF_ADC_DIF_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"unsupported master/slave mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42xx8_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42xx8_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.cs42xx8_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %6, align 8
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.cs42xx8_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.cs42xx8_priv* %13, %struct.cs42xx8_priv** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %16 = and i32 %14, %15
  switch i32 %16, label %33 [
    i32 129, label %17
    i32 130, label %21
    i32 128, label %25
    i32 131, label %29
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @CS42XX8_INTF_DAC_DIF_LEFTJ, align 4
  %19 = load i32, i32* @CS42XX8_INTF_ADC_DIF_LEFTJ, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %8, align 4
  br label %40

21:                                               ; preds = %2
  %22 = load i32, i32* @CS42XX8_INTF_DAC_DIF_I2S, align 4
  %23 = load i32, i32* @CS42XX8_INTF_ADC_DIF_I2S, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %8, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @CS42XX8_INTF_DAC_DIF_RIGHTJ, align 4
  %27 = load i32, i32* @CS42XX8_INTF_ADC_DIF_RIGHTJ, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %2
  %30 = load i32, i32* @CS42XX8_INTF_DAC_DIF_TDM, align 4
  %31 = load i32, i32* @CS42XX8_INTF_ADC_DIF_TDM, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %8, align 4
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %67

40:                                               ; preds = %29, %25, %21, %17
  %41 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %42 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CS42XX8_INTF, align 4
  %45 = load i32, i32* @CS42XX8_INTF_DAC_DIF_MASK, align 4
  %46 = load i32, i32* @CS42XX8_INTF_ADC_DIF_MASK, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @regmap_update_bits(i32 %43, i32 %44, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %59 [
    i32 132, label %53
    i32 133, label %56
  ]

53:                                               ; preds = %40
  %54 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %55 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  br label %66

56:                                               ; preds = %40
  %57 = load %struct.cs42xx8_priv*, %struct.cs42xx8_priv** %7, align 8
  %58 = getelementptr inbounds %struct.cs42xx8_priv, %struct.cs42xx8_priv* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %66

59:                                               ; preds = %40
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %61 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %56, %53
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %59, %33
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.cs42xx8_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
