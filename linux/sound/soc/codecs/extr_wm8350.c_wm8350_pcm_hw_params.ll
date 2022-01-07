; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8350.c_wm8350_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8350_data = type { %struct.wm8350* }
%struct.wm8350 = type { i32 }

@WM8350_AI_FORMATING = common dso_local global i32 0, align 4
@WM8350_AIF_WL_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@WM8350_DAC_MUTE_VOLUME = common dso_local global i32 0, align 4
@WM8350_DAC_SB_FILT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @wm8350_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.wm8350_data*, align 8
  %9 = alloca %struct.wm8350*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %7, align 8
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.wm8350_data* %15, %struct.wm8350_data** %8, align 8
  %16 = load %struct.wm8350_data*, %struct.wm8350_data** %8, align 8
  %17 = getelementptr inbounds %struct.wm8350_data, %struct.wm8350_data* %16, i32 0, i32 0
  %18 = load %struct.wm8350*, %struct.wm8350** %17, align 8
  store %struct.wm8350* %18, %struct.wm8350** %9, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %20 = load i32, i32* @WM8350_AI_FORMATING, align 4
  %21 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %19, i32 %20)
  %22 = load i32, i32* @WM8350_AIF_WL_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %26 = call i32 @params_width(%struct.snd_pcm_hw_params* %25)
  switch i32 %26, label %37 [
    i32 16, label %27
    i32 20, label %28
    i32 24, label %31
    i32 32, label %34
  ]

27:                                               ; preds = %3
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, 1024
  store i32 %30, i32* %10, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = or i32 %32, 2048
  store i32 %33, i32* %10, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, 3072
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %3, %34, %31, %28, %27
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %39 = load i32, i32* @WM8350_AI_FORMATING, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %38, i32 %39, i32 %40)
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %37
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %49 = call i32 @params_rate(%struct.snd_pcm_hw_params* %48)
  %50 = icmp slt i32 %49, 24000
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load %struct.wm8350*, %struct.wm8350** %9, align 8
  %53 = load i32, i32* @WM8350_DAC_MUTE_VOLUME, align 4
  %54 = load i32, i32* @WM8350_DAC_SB_FILT, align 4
  %55 = call i32 @wm8350_set_bits(%struct.wm8350* %52, i32 %53, i32 %54)
  br label %61

56:                                               ; preds = %47
  %57 = load %struct.wm8350*, %struct.wm8350** %9, align 8
  %58 = load i32, i32* @WM8350_DAC_MUTE_VOLUME, align 4
  %59 = load i32, i32* @WM8350_DAC_SB_FILT, align 4
  %60 = call i32 @wm8350_clear_bits(%struct.wm8350* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %37
  ret i32 0
}

declare dso_local %struct.wm8350_data* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @wm8350_set_bits(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_clear_bits(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
