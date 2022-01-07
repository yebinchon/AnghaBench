; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/intel/extr_hda-pcm.c_hda_dsp_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hdac_stream* }
%struct.hdac_stream = type { i32 }
%struct.hdac_ext_stream = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hda_dsp_pcm_trigger(%struct.snd_sof_dev* %0, %struct.snd_pcm_substream* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_stream*, align 8
  %8 = alloca %struct.hdac_ext_stream*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hdac_stream*, %struct.hdac_stream** %12, align 8
  store %struct.hdac_stream* %13, %struct.hdac_stream** %7, align 8
  %14 = load %struct.hdac_stream*, %struct.hdac_stream** %7, align 8
  %15 = call %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream* %14)
  store %struct.hdac_ext_stream* %15, %struct.hdac_ext_stream** %8, align 8
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %17 = load %struct.hdac_ext_stream*, %struct.hdac_ext_stream** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @hda_dsp_stream_trigger(%struct.snd_sof_dev* %16, %struct.hdac_ext_stream* %17, i32 %18)
  ret i32 %19
}

declare dso_local %struct.hdac_ext_stream* @stream_to_hdac_ext_stream(%struct.hdac_stream*) #1

declare dso_local i32 @hda_dsp_stream_trigger(%struct.snd_sof_dev*, %struct.hdac_ext_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
