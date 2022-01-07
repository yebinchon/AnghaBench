; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_ss_to_as.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/au1x/extr_dma.c_ss_to_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_stream = type { i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.alchemy_pcm_ctx = type { %struct.audio_stream* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audio_stream* (%struct.snd_pcm_substream*)* @ss_to_as to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audio_stream* @ss_to_as(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.alchemy_pcm_ctx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = call %struct.alchemy_pcm_ctx* @ss_to_ctx(%struct.snd_pcm_substream* %4)
  store %struct.alchemy_pcm_ctx* %5, %struct.alchemy_pcm_ctx** %3, align 8
  %6 = load %struct.alchemy_pcm_ctx*, %struct.alchemy_pcm_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.alchemy_pcm_ctx, %struct.alchemy_pcm_ctx* %6, i32 0, i32 0
  %8 = load %struct.audio_stream*, %struct.audio_stream** %7, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.audio_stream, %struct.audio_stream* %8, i64 %11
  ret %struct.audio_stream* %12
}

declare dso_local %struct.alchemy_pcm_ctx* @ss_to_ctx(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
