; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt274.c_rt274_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt274_priv = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@RT274_I2S_CTRL1 = common dso_local global i32 0, align 4
@RT274_I2S_MODE_MASK = common dso_local global i32 0, align 4
@RT274_I2S_MODE_M = common dso_local global i32 0, align 4
@RT274_I2S_MODE_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@RT274_I2S_FMT_MASK = common dso_local global i32 0, align 4
@RT274_I2S_FMT_I2S = common dso_local global i32 0, align 4
@RT274_I2S_FMT_LJ = common dso_local global i32 0, align 4
@RT274_I2S_FMT_PCMA = common dso_local global i32 0, align 4
@RT274_I2S_FMT_PCMB = common dso_local global i32 0, align 4
@RT274_DAC_FORMAT = common dso_local global i32 0, align 4
@RT274_ADC_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @rt274_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt274_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca %struct.rt274_priv*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %12 = call %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.rt274_priv* %12, %struct.rt274_priv** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %32 [
    i32 133, label %16
    i32 132, label %24
  ]

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %18 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %19 = load i32, i32* @RT274_I2S_MODE_MASK, align 4
  %20 = load i32, i32* @RT274_I2S_MODE_M, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.rt274_priv*, %struct.rt274_priv** %7, align 8
  %23 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %26 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %27 = load i32, i32* @RT274_I2S_MODE_MASK, align 4
  %28 = load i32, i32* @RT274_I2S_MODE_S, align 4
  %29 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.rt274_priv*, %struct.rt274_priv** %7, align 8
  %31 = getelementptr inbounds %struct.rt274_priv, %struct.rt274_priv* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %24, %16
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %38 = and i32 %36, %37
  switch i32 %38, label %63 [
    i32 129, label %39
    i32 128, label %45
    i32 131, label %51
    i32 130, label %57
  ]

39:                                               ; preds = %35
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %41 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %42 = load i32, i32* @RT274_I2S_FMT_MASK, align 4
  %43 = load i32, i32* @RT274_I2S_FMT_I2S, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %42, i32 %43)
  br label %66

45:                                               ; preds = %35
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %47 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %48 = load i32, i32* @RT274_I2S_FMT_MASK, align 4
  %49 = load i32, i32* @RT274_I2S_FMT_LJ, align 4
  %50 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %48, i32 %49)
  br label %66

51:                                               ; preds = %35
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %53 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %54 = load i32, i32* @RT274_I2S_FMT_MASK, align 4
  %55 = load i32, i32* @RT274_I2S_FMT_PCMA, align 4
  %56 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %52, i32 %53, i32 %54, i32 %55)
  br label %66

57:                                               ; preds = %35
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %59 = load i32, i32* @RT274_I2S_CTRL1, align 4
  %60 = load i32, i32* @RT274_I2S_FMT_MASK, align 4
  %61 = load i32, i32* @RT274_I2S_FMT_PCMB, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  br label %66

63:                                               ; preds = %35
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %57, %51, %45, %39
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %68 = load i32, i32* @RT274_DAC_FORMAT, align 4
  %69 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %67, i32 %68, i32 32768, i32 0)
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %71 = load i32, i32* @RT274_ADC_FORMAT, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 32768, i32 0)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %63, %32
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.rt274_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
