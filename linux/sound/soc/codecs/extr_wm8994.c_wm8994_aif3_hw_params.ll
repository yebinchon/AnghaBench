; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_aif3_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8994.c_wm8994_aif3_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8994_priv = type { %struct.wm8994* }
%struct.wm8994 = type { i32 }

@WM8958_AIF3_CONTROL_1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WM8994_AIF1_WL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8994_aif3_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8994_aif3_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.wm8994_priv*, align 8
  %10 = alloca %struct.wm8994*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 1
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.wm8994_priv* %17, %struct.wm8994_priv** %9, align 8
  %18 = load %struct.wm8994_priv*, %struct.wm8994_priv** %9, align 8
  %19 = getelementptr inbounds %struct.wm8994_priv, %struct.wm8994_priv* %18, i32 0, i32 0
  %20 = load %struct.wm8994*, %struct.wm8994** %19, align 8
  store %struct.wm8994* %20, %struct.wm8994** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %32 [
    i32 3, label %24
  ]

24:                                               ; preds = %3
  %25 = load %struct.wm8994*, %struct.wm8994** %10, align 8
  %26 = getelementptr inbounds %struct.wm8994, %struct.wm8994* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %30 [
    i32 129, label %28
    i32 128, label %28
  ]

28:                                               ; preds = %24, %24
  %29 = load i32, i32* @WM8958_AIF3_CONTROL_1, align 4
  store i32 %29, i32* %11, align 4
  br label %31

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %55

31:                                               ; preds = %28
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

33:                                               ; preds = %31
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %35 = call i32 @params_width(%struct.snd_pcm_hw_params* %34)
  switch i32 %35, label %46 [
    i32 16, label %36
    i32 20, label %37
    i32 24, label %40
    i32 32, label %43
  ]

36:                                               ; preds = %33
  br label %49

37:                                               ; preds = %33
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %38, 32
  store i32 %39, i32* %12, align 4
  br label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, 64
  store i32 %42, i32* %12, align 4
  br label %49

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = or i32 %44, 96
  store i32 %45, i32* %12, align 4
  br label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %55

49:                                               ; preds = %43, %40, %37, %36
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @WM8994_AIF1_WL_MASK, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %46, %32, %30
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.wm8994_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
