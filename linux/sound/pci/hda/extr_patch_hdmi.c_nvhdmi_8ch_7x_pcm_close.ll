; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_8ch_7x_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_nvhdmi_8ch_7x_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hdmi_spec* }
%struct.hdmi_spec = type { i32 }
%struct.snd_pcm_substream = type { i32 }

@nvhdmi_master_con_nid_7x = common dso_local global i32 0, align 4
@AC_VERB_SET_CHANNEL_STREAMID = common dso_local global i32 0, align 4
@nvhdmi_con_nids_7x = common dso_local global i32* null, align 8
@AC_VERB_SET_STREAM_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @nvhdmi_8ch_7x_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvhdmi_8ch_7x_pcm_close(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.hdmi_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hdmi_spec*, %struct.hdmi_spec** %10, align 8
  store %struct.hdmi_spec* %11, %struct.hdmi_spec** %7, align 8
  %12 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %13 = load i32, i32* @nvhdmi_master_con_nid_7x, align 4
  %14 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %15 = call i32 @snd_hda_codec_write(%struct.hda_codec* %12, i32 %13, i32 0, i32 %14, i32 0)
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %21 = load i32*, i32** @nvhdmi_con_nids_7x, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AC_VERB_SET_CHANNEL_STREAMID, align 4
  %27 = call i32 @snd_hda_codec_write(%struct.hda_codec* %20, i32 %25, i32 0, i32 %26, i32 0)
  %28 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %29 = load i32*, i32** @nvhdmi_con_nids_7x, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AC_VERB_SET_STREAM_FORMAT, align 4
  %35 = call i32 @snd_hda_codec_write(%struct.hda_codec* %28, i32 %33, i32 0, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %41 = call i32 @nvhdmi_8ch_7x_set_info_frame_parameters(%struct.hda_codec* %40, i32 8)
  %42 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %43 = load %struct.hdmi_spec*, %struct.hdmi_spec** %7, align 8
  %44 = getelementptr inbounds %struct.hdmi_spec, %struct.hdmi_spec* %43, i32 0, i32 0
  %45 = call i32 @snd_hda_multi_out_dig_close(%struct.hda_codec* %42, i32* %44)
  ret i32 %45
}

declare dso_local i32 @snd_hda_codec_write(%struct.hda_codec*, i32, i32, i32, i32) #1

declare dso_local i32 @nvhdmi_8ch_7x_set_info_frame_parameters(%struct.hda_codec*, i32) #1

declare dso_local i32 @snd_hda_multi_out_dig_close(%struct.hda_codec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
