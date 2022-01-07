; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_atlas6_codec_enable_and_reset_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sirf-audio-codec.c_atlas6_codec_enable_and_reset_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.sirf_audio_codec = type { i32 }

@AUDIO_IC_CODEC_CTRL1 = common dso_local global i32 0, align 4
@ATLAS6_CODEC_ENABLE_BITS = common dso_local global i32 0, align 4
@ATLAS6_CODEC_RESET_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @atlas6_codec_enable_and_reset_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atlas6_codec_enable_and_reset_event(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_kcontrol*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.sirf_audio_codec*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %10 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snd_soc_component* @snd_soc_dapm_to_component(i32 %11)
  store %struct.snd_soc_component* %12, %struct.snd_soc_component** %7, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %14 = call %struct.sirf_audio_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.sirf_audio_codec* %14, %struct.sirf_audio_codec** %8, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %27 [
    i32 128, label %16
    i32 129, label %21
  ]

16:                                               ; preds = %3
  %17 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %8, align 8
  %18 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @enable_and_reset_codec(i32 %19, i32 536870912, i32 268435456)
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.sirf_audio_codec*, %struct.sirf_audio_codec** %8, align 8
  %23 = getelementptr inbounds %struct.sirf_audio_codec, %struct.sirf_audio_codec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AUDIO_IC_CODEC_CTRL1, align 4
  %26 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 536870912, i32 0)
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %21, %16
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_dapm_to_component(i32) #1

declare dso_local %struct.sirf_audio_codec* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @enable_and_reset_codec(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
