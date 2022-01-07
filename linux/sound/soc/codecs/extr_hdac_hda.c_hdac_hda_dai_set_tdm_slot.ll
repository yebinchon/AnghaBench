; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dai_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.hdac_hda_priv = type { %struct.hdac_hda_pcm* }
%struct.hdac_hda_pcm = type { i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @hdac_hda_dai_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hda_dai_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct.hdac_hda_priv*, align 8
  %13 = alloca %struct.hdac_hda_pcm*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %11, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %18 = call %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %17)
  store %struct.hdac_hda_priv* %18, %struct.hdac_hda_priv** %12, align 8
  %19 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %12, align 8
  %20 = getelementptr inbounds %struct.hdac_hda_priv, %struct.hdac_hda_priv* %19, i32 0, i32 0
  %21 = load %struct.hdac_hda_pcm*, %struct.hdac_hda_pcm** %20, align 8
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.hdac_hda_pcm, %struct.hdac_hda_pcm* %21, i64 %24
  store %struct.hdac_hda_pcm* %25, %struct.hdac_hda_pcm** %13, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %5
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.hdac_hda_pcm*, %struct.hdac_hda_pcm** %13, align 8
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.hdac_hda_pcm, %struct.hdac_hda_pcm* %30, i64 %33
  %35 = getelementptr inbounds %struct.hdac_hda_pcm, %struct.hdac_hda_pcm* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 %29, i32* %38, align 4
  br label %50

39:                                               ; preds = %5
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.hdac_hda_pcm*, %struct.hdac_hda_pcm** %13, align 8
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.hdac_hda_pcm, %struct.hdac_hda_pcm* %41, i64 %44
  %46 = getelementptr inbounds %struct.hdac_hda_pcm, %struct.hdac_hda_pcm* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %40, i32* %49, align 4
  br label %50

50:                                               ; preds = %39, %28
  ret i32 0
}

declare dso_local %struct.hdac_hda_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
