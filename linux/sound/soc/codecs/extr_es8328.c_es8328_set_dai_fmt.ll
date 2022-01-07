; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.es8328_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ES8328_MASTERMODE = common dso_local global i32 0, align 4
@ES8328_MASTERMODE_MSC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1_DACFORMAT_I2S = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4_ADCFORMAT_I2S = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1_DACFORMAT_RJUST = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4_ADCFORMAT_RJUST = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1_DACFORMAT_LJUST = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4_ADCFORMAT_LJUST = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1 = common dso_local global i32 0, align 4
@ES8328_DACCONTROL1_DACFORMAT_MASK = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4 = common dso_local global i32 0, align 4
@ES8328_ADCCONTROL4_ADCFORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @es8328_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.es8328_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %6, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.es8328_priv* %14, %struct.es8328_priv** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %33 [
    i32 132, label %18
    i32 131, label %26
  ]

18:                                               ; preds = %2
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = load i32, i32* @ES8328_MASTERMODE, align 4
  %21 = load i32, i32* @ES8328_MASTERMODE_MSC, align 4
  %22 = load i32, i32* @ES8328_MASTERMODE_MSC, align 4
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.es8328_priv*, %struct.es8328_priv** %7, align 8
  %25 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %28 = load i32, i32* @ES8328_MASTERMODE, align 4
  %29 = load i32, i32* @ES8328_MASTERMODE_MSC, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.es8328_priv*, %struct.es8328_priv** %7, align 8
  %32 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %84

36:                                               ; preds = %26, %18
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %61 [
    i32 130, label %40
    i32 128, label %47
    i32 129, label %54
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @ES8328_DACCONTROL1_DACFORMAT_I2S, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* @ES8328_ADCCONTROL4_ADCFORMAT_I2S, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %64

47:                                               ; preds = %36
  %48 = load i32, i32* @ES8328_DACCONTROL1_DACFORMAT_RJUST, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* @ES8328_ADCCONTROL4_ADCFORMAT_RJUST, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %64

54:                                               ; preds = %36
  %55 = load i32, i32* @ES8328_DACCONTROL1_DACFORMAT_LJUST, align 4
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @ES8328_ADCCONTROL4_ADCFORMAT_LJUST, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %64

61:                                               ; preds = %36
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %84

64:                                               ; preds = %54, %47, %40
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %84

73:                                               ; preds = %64
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %75 = load i32, i32* @ES8328_DACCONTROL1, align 4
  %76 = load i32, i32* @ES8328_DACCONTROL1_DACFORMAT_MASK, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %80 = load i32, i32* @ES8328_ADCCONTROL4, align 4
  %81 = load i32, i32* @ES8328_ADCCONTROL4_ADCFORMAT_MASK, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %73, %70, %61, %33
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
