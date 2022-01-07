; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-hdmi.c_hdmi_dai_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.hdmi_audio_data = type { i32, %struct.snd_pcm_substream*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @hdmi_dai_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_dai_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.hdmi_audio_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream* %6)
  store %struct.hdmi_audio_data* %7, %struct.hdmi_audio_data** %5, align 8
  %8 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %5, align 8
  %9 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %8, i32 0, i32 1
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = icmp ne %struct.snd_pcm_substream* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %5, align 8
  %16 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %5, align 8
  %21 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %19(i32 %22)
  %24 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %5, align 8
  %25 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %27, i32 0, i32 1
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %28, align 8
  %29 = load %struct.hdmi_audio_data*, %struct.hdmi_audio_data** %5, align 8
  %30 = getelementptr inbounds %struct.hdmi_audio_data, %struct.hdmi_audio_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local %struct.hdmi_audio_data* @card_drvdata_substream(%struct.snd_pcm_substream*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
