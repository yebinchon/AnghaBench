; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.adau1701 = type { i32, i32, i32 }

@ADAU1701_DSPCTRL_SR_192 = common dso_local global i32 0, align 4
@ADAU1701_DSPCTRL_SR_96 = common dso_local global i32 0, align 4
@ADAU1701_DSPCTRL_SR_48 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU1701_DSPCTRL = common dso_local global i32 0, align 4
@ADAU1701_DSPCTRL_SR_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @adau1701_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.adau1701*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %8, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %17 = call %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %16)
  store %struct.adau1701* %17, %struct.adau1701** %9, align 8
  %18 = load %struct.adau1701*, %struct.adau1701** %9, align 8
  %19 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = sdiv i32 %20, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.adau1701*, %struct.adau1701** %9, align 8
  %26 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %33 = call i32 @params_rate(%struct.snd_pcm_hw_params* %32)
  %34 = call i32 @adau1701_reset(%struct.snd_soc_component* %30, i32 %31, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %73

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %42 = call i32 @params_rate(%struct.snd_pcm_hw_params* %41)
  switch i32 %42, label %49 [
    i32 192000, label %43
    i32 96000, label %45
    i32 48000, label %47
  ]

43:                                               ; preds = %40
  %44 = load i32, i32* @ADAU1701_DSPCTRL_SR_192, align 4
  store i32 %44, i32* %11, align 4
  br label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @ADAU1701_DSPCTRL_SR_96, align 4
  store i32 %46, i32* %11, align 4
  br label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @ADAU1701_DSPCTRL_SR_48, align 4
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %73

52:                                               ; preds = %47, %45, %43
  %53 = load %struct.adau1701*, %struct.adau1701** %9, align 8
  %54 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ADAU1701_DSPCTRL, align 4
  %57 = load i32, i32* @ADAU1701_DSPCTRL_SR_MASK, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %61 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %67 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %68 = call i32 @adau1701_set_playback_pcm_format(%struct.snd_soc_component* %66, %struct.snd_pcm_hw_params* %67)
  store i32 %68, i32* %4, align 4
  br label %73

69:                                               ; preds = %52
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %71 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %72 = call i32 @adau1701_set_capture_pcm_format(%struct.snd_soc_component* %70, %struct.snd_pcm_hw_params* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %65, %49, %37
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @adau1701_reset(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @adau1701_set_playback_pcm_format(%struct.snd_soc_component*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @adau1701_set_capture_pcm_format(%struct.snd_soc_component*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
