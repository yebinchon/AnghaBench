; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_dai_clkdiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_dai_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8900_REG_CLOCKING1 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1_BCLK_MASK = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1_OPCLK_MASK = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO4 = common dso_local global i32 0, align 4
@WM8900_LRC_MASK = common dso_local global i32 0, align 4
@WM8900_REG_AUDIO3 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING2 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING2_DAC_CLKDIV = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING2_ADC_CLKDIV = common dso_local global i32 0, align 4
@WM8900_REG_DACCTRL = common dso_local global i32 0, align 4
@WM8900_REG_DACCTRL_AIF_LRCLKRATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32)* @wm8900_set_dai_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_set_dai_clkdiv(%struct.snd_soc_dai* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %9, i32 0, i32 0
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  store %struct.snd_soc_component* %11, %struct.snd_soc_component** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %55 [
    i32 132, label %13
    i32 128, label %19
    i32 130, label %25
    i32 133, label %31
    i32 131, label %37
    i32 134, label %43
    i32 129, label %49
  ]

13:                                               ; preds = %3
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %15 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %16 = load i32, i32* @WM8900_REG_CLOCKING1_BCLK_MASK, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %16, i32 %17)
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %21 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %22 = load i32, i32* @WM8900_REG_CLOCKING1_OPCLK_MASK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %20, i32 %21, i32 %22, i32 %23)
  br label %58

25:                                               ; preds = %3
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %27 = load i32, i32* @WM8900_REG_AUDIO4, align 4
  %28 = load i32, i32* @WM8900_LRC_MASK, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  br label %58

31:                                               ; preds = %3
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %33 = load i32, i32* @WM8900_REG_AUDIO3, align 4
  %34 = load i32, i32* @WM8900_LRC_MASK, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %32, i32 %33, i32 %34, i32 %35)
  br label %58

37:                                               ; preds = %3
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i32, i32* @WM8900_REG_CLOCKING2, align 4
  %40 = load i32, i32* @WM8900_REG_CLOCKING2_DAC_CLKDIV, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %38, i32 %39, i32 %40, i32 %41)
  br label %58

43:                                               ; preds = %3
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %45 = load i32, i32* @WM8900_REG_CLOCKING2, align 4
  %46 = load i32, i32* @WM8900_REG_CLOCKING2_ADC_CLKDIV, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %44, i32 %45, i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %3
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = load i32, i32* @WM8900_REG_DACCTRL, align 4
  %52 = load i32, i32* @WM8900_REG_DACCTRL_AIF_LRCLKRATE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %49, %43, %37, %31, %25, %19, %13
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
