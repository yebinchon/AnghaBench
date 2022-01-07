; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_get_ringbuf.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_get_ringbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ringbuf_regs = type { i32 }
%struct.snd_pcm_substream = type { i64 }
%struct.cygnus_aio_port = type { %struct.ringbuf_regs, %struct.ringbuf_regs }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ringbuf_regs* (%struct.snd_pcm_substream*)* @get_ringbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ringbuf_regs* @get_ringbuf(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cygnus_aio_port*, align 8
  %4 = alloca %struct.ringbuf_regs*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  store %struct.ringbuf_regs* null, %struct.ringbuf_regs** %4, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream* %5)
  store %struct.cygnus_aio_port* %6, %struct.cygnus_aio_port** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %14 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %13, i32 0, i32 1
  store %struct.ringbuf_regs* %14, %struct.ringbuf_regs** %4, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %17 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %16, i32 0, i32 0
  store %struct.ringbuf_regs* %17, %struct.ringbuf_regs** %4, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.ringbuf_regs*, %struct.ringbuf_regs** %4, align 8
  ret %struct.ringbuf_regs* %19
}

declare dso_local %struct.cygnus_aio_port* @cygnus_dai_get_dma_data(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
