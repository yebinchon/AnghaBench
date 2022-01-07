; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@ALC5623_DAI_SDP_MASTER_MODE = common dso_local global i32 0, align 4
@ALC5623_DAI_SDP_SLAVE_MODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@ALC5623_DAI_I2S_DF_I2S = common dso_local global i32 0, align 4
@ALC5623_DAI_I2S_DF_RIGHT = common dso_local global i32 0, align 4
@ALC5623_DAI_I2S_DF_LEFT = common dso_local global i32 0, align 4
@ALC5623_DAI_I2S_DF_PCM = common dso_local global i32 0, align 4
@ALC5623_DAI_I2S_PCM_MODE = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ALC5623_DAI_MAIN_I2S_BCLK_POL_CTRL = common dso_local global i32 0, align 4
@ALC5623_DAI_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @alc5623_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5623_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %18 [
    i32 138, label %14
    i32 137, label %16
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @ALC5623_DAI_SDP_MASTER_MODE, align 4
  store i32 %15, i32* %7, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @ALC5623_DAI_SDP_SLAVE_MODE, align 4
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %16, %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %47 [
    i32 134, label %25
    i32 128, label %29
    i32 131, label %33
    i32 136, label %37
    i32 135, label %41
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @ALC5623_DAI_I2S_DF_I2S, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %50

29:                                               ; preds = %21
  %30 = load i32, i32* @ALC5623_DAI_I2S_DF_RIGHT, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %50

33:                                               ; preds = %21
  %34 = load i32, i32* @ALC5623_DAI_I2S_DF_LEFT, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %50

37:                                               ; preds = %21
  %38 = load i32, i32* @ALC5623_DAI_I2S_DF_PCM, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %21
  %42 = load i32, i32* @ALC5623_DAI_I2S_DF_PCM, align 4
  %43 = load i32, i32* @ALC5623_DAI_I2S_PCM_MODE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %50

47:                                               ; preds = %21
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %72

50:                                               ; preds = %41, %37, %33, %29, %25
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %64 [
    i32 129, label %54
    i32 133, label %55
    i32 132, label %59
    i32 130, label %63
  ]

54:                                               ; preds = %50
  br label %67

55:                                               ; preds = %50
  %56 = load i32, i32* @ALC5623_DAI_MAIN_I2S_BCLK_POL_CTRL, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %67

59:                                               ; preds = %50
  %60 = load i32, i32* @ALC5623_DAI_MAIN_I2S_BCLK_POL_CTRL, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %67

63:                                               ; preds = %50
  br label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %63, %59, %55, %54
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %69 = load i32, i32* @ALC5623_DAI_CONTROL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %68, i32 %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %64, %47, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
