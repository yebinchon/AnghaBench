; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/ad1816a/extr_ad1816a_lib.c_snd_ad1816a_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ad1816a = type { i32 }

@AD1816A_PLAYBACK_ENABLE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ad1816a_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1816a_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ad1816a*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_ad1816a* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_ad1816a* %7, %struct.snd_ad1816a** %5, align 8
  %8 = load %struct.snd_ad1816a*, %struct.snd_ad1816a** %5, align 8
  %9 = load i32, i32* @AD1816A_PLAYBACK_ENABLE, align 4
  %10 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @snd_ad1816a_trigger(%struct.snd_ad1816a* %8, i32 %9, i32 %10, i32 %11, i32 0)
  ret i32 %12
}

declare dso_local %struct.snd_ad1816a* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ad1816a_trigger(%struct.snd_ad1816a*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
