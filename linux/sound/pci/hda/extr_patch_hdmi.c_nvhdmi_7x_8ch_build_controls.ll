; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_7x_8ch_build_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_7x_8ch_build_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__*, %struct.hdmi_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_spec = type { i32 }
%struct.hda_pcm = type { i32 }
%struct.snd_pcm_chmap = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_pcm_alt_chmaps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @nvhdmi_7x_8ch_build_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvhdmi_7x_8ch_build_controls(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.hdmi_spec*, align 8
  %5 = alloca %struct.hda_pcm*, align 8
  %6 = alloca %struct.snd_pcm_chmap*, align 8
  %7 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %8 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %8, i32 0, i32 1
  %10 = load %struct.hdmi_spec*, %struct.hdmi_spec** %9, align 8
  store %struct.hdmi_spec* %10, %struct.hdmi_spec** %4, align 8
  %11 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %12 = call i32 @simple_playback_build_controls(%struct.hda_codec* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.hdmi_spec*, %struct.hdmi_spec** %4, align 8
  %19 = call %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec* %18, i32 0)
  store %struct.hda_pcm* %19, %struct.hda_pcm** %5, align 8
  %20 = load %struct.hda_pcm*, %struct.hda_pcm** %5, align 8
  %21 = getelementptr inbounds %struct.hda_pcm, %struct.hda_pcm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %24 = load i32, i32* @snd_pcm_alt_chmaps, align 4
  %25 = call i32 @snd_pcm_add_chmap_ctls(i32 %22, i32 %23, i32 %24, i32 8, i32 0, %struct.snd_pcm_chmap** %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %43

30:                                               ; preds = %17
  %31 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %32 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %42 [
    i32 282984450, label %36
    i32 282984451, label %36
    i32 282984453, label %36
    i32 282984454, label %36
    i32 282984455, label %39
  ]

36:                                               ; preds = %30, %30, %30, %30
  %37 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %37, i32 0, i32 0
  store i32 260, i32* %38, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %6, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_chmap, %struct.snd_pcm_chmap* %40, i32 0, i32 0
  store i32 324, i32* %41, align 4
  br label %42

42:                                               ; preds = %39, %30, %36
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %28, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @simple_playback_build_controls(%struct.hda_codec*) #1

declare dso_local %struct.hda_pcm* @get_pcm_rec(%struct.hdmi_spec*, i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(i32, i32, i32, i32, i32, %struct.snd_pcm_chmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
