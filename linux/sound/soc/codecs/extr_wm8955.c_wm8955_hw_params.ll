; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8955.c_wm8955_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8955_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WM8955_AUDIO_INTERFACE = common dso_local global i32 0, align 4
@WM8955_WL_MASK = common dso_local global i32 0, align 4
@WM8955_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8955_DIGENB = common dso_local global i32 0, align 4
@WM8955_CLOCKING_PLL = common dso_local global i32 0, align 4
@WM8955_PLL_RB = common dso_local global i32 0, align 4
@WM8955_PLLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8955_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8955_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8955_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.wm8955_priv* %16, %struct.wm8955_priv** %9, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %18 = call i32 @params_width(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %23 [
    i32 16, label %19
    i32 20, label %20
    i32 24, label %21
    i32 32, label %22
  ]

19:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %26

20:                                               ; preds = %3
  store i32 4, i32* %11, align 4
  br label %26

21:                                               ; preds = %3
  store i32 8, i32* %11, align 4
  br label %26

22:                                               ; preds = %3
  store i32 12, i32* %11, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %64

26:                                               ; preds = %22, %21, %20, %19
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %28 = load i32, i32* @WM8955_AUDIO_INTERFACE, align 4
  %29 = load i32, i32* @WM8955_WL_MASK, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_rate(%struct.snd_pcm_hw_params* %32)
  %34 = load %struct.wm8955_priv*, %struct.wm8955_priv** %9, align 8
  %35 = getelementptr inbounds %struct.wm8955_priv, %struct.wm8955_priv* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %37 = call i32 @wm8955_set_deemph(%struct.snd_soc_component* %36)
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %39 = load i32, i32* @WM8955_POWER_MANAGEMENT_1, align 4
  %40 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %26
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @WM8955_DIGENB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %52 = load i32, i32* @WM8955_POWER_MANAGEMENT_1, align 4
  %53 = load i32, i32* @WM8955_DIGENB, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %56 = load i32, i32* @WM8955_CLOCKING_PLL, align 4
  %57 = load i32, i32* @WM8955_PLL_RB, align 4
  %58 = load i32, i32* @WM8955_PLLEN, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %59, i32 0)
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = call i32 @wm8955_configure_clocking(%struct.snd_soc_component* %61)
  br label %63

63:                                               ; preds = %50, %45
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %43, %23
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.wm8955_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8955_set_deemph(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @wm8955_configure_clocking(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
