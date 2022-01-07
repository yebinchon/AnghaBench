; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_simple_playback_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_simple_playback_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_constraint_list = type { i32 }
%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.TYPE_2__*, %struct.hdmi_spec* }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@hw_constraints_2_8_channels = common dso_local global %struct.snd_pcm_hw_constraint_list zeroinitializer, align 4
@hw_constraints_2_6_8_channels = common dso_local global %struct.snd_pcm_hw_constraint_list zeroinitializer, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @simple_playback_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_playback_pcm_open(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca %struct.snd_pcm_hw_constraint_list*, align 8
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 1
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec* %11, %struct.hdmi_spec** %7, align 8
  store %struct.snd_pcm_hw_constraint_list* null, %struct.snd_pcm_hw_constraint_list** %8, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %19 [
    i32 282984450, label %17
    i32 282984451, label %17
    i32 282984453, label %17
    i32 282984454, label %17
    i32 282984455, label %18
  ]

17:                                               ; preds = %3, %3, %3, %3
  store %struct.snd_pcm_hw_constraint_list* @hw_constraints_2_8_channels, %struct.snd_pcm_hw_constraint_list** %8, align 8
  br label %20

18:                                               ; preds = %3
  store %struct.snd_pcm_hw_constraint_list* @hw_constraints_2_6_8_channels, %struct.snd_pcm_hw_constraint_list** %8, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %18, %17
  %21 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %8, align 8
  %22 = icmp ne %struct.snd_pcm_hw_constraint_list* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %28 = load %struct.snd_pcm_hw_constraint_list*, %struct.snd_pcm_hw_constraint_list** %8, align 8
  %29 = call i32 @snd_pcm_hw_constraint_list(i32 %26, i32 0, i32 %27, %struct.snd_pcm_hw_constraint_list* %28)
  br label %36

30:                                               ; preds = %20
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %35 = call i32 @snd_pcm_hw_constraint_step(i32 %33, i32 0, i32 %34, i32 2)
  br label %36

36:                                               ; preds = %30, %23
  %37 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %38 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %39 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %38, i32 0, i32 0
  %40 = call i32 @snd_hda_multi_out_dig_open(%struct.hda_codec* %37, i32* %39)
  ret i32 %40
}

declare dso_local i32 @snd_pcm_hw_constraint_list(i32, i32, i32, %struct.snd_pcm_hw_constraint_list*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(i32, i32, i32, i32) #1

declare dso_local i32 @snd_hda_multi_out_dig_open(%struct.hda_codec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
