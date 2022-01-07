; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_playback_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_playback_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_pcm_stream = type { i32 }
%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }

@STREAM_MULTI_OUT = common dso_local global i32 0, align 4
@HDA_GEN_PCM_ACT_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*)* @playback_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_pcm_open(%struct.hda_pcm_stream* %0, %struct.hda_codec* %1, %struct.snd_pcm_substream* %2) #0 {
  %4 = alloca %struct.hda_pcm_stream*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.hda_gen_spec*, align 8
  %8 = alloca i32, align 4
  store %struct.hda_pcm_stream* %0, %struct.hda_pcm_stream** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store %struct.snd_pcm_substream* %2, %struct.snd_pcm_substream** %6, align 8
  %9 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %10 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %9, i32 0, i32 0
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %10, align 8
  store %struct.hda_gen_spec* %11, %struct.hda_gen_spec** %7, align 8
  %12 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %13 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %16 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %17 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %16, i32 0, i32 2
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %19 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %20 = call i32 @snd_hda_multi_out_analog_open(%struct.hda_codec* %15, i32* %17, %struct.snd_pcm_substream* %18, %struct.hda_pcm_stream* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @STREAM_MULTI_OUT, align 4
  %25 = shl i32 1, %24
  %26 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %27 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.hda_pcm_stream*, %struct.hda_pcm_stream** %4, align 8
  %31 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %33 = load i32, i32* @HDA_GEN_PCM_ACT_OPEN, align 4
  %34 = call i32 @call_pcm_playback_hook(%struct.hda_pcm_stream* %30, %struct.hda_codec* %31, %struct.snd_pcm_substream* %32, i32 %33)
  br label %35

35:                                               ; preds = %23, %3
  %36 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  %37 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_hda_multi_out_analog_open(%struct.hda_codec*, i32*, %struct.snd_pcm_substream*, %struct.hda_pcm_stream*) #1

declare dso_local i32 @call_pcm_playback_hook(%struct.hda_pcm_stream*, %struct.hda_codec*, %struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
