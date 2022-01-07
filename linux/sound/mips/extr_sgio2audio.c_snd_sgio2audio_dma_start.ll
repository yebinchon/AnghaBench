; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_pcm_substream = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.snd_sgio2audio_chan* }
%struct.snd_sgio2audio_chan = type { i32 }
%struct.snd_sgio2audio = type { i32 }

@CHANNEL_CONTROL_RESET = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_10__* null, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@CHANNEL_RING_SIZE = common dso_local global i64 0, align 8
@CHANNEL_DMA_ENABLE = common dso_local global i32 0, align 4
@CHANNEL_INT_THRESHOLD_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_sgio2audio_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_dma_start(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_sgio2audio*, align 8
  %4 = alloca %struct.snd_sgio2audio_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = call %struct.snd_sgio2audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_sgio2audio* %7, %struct.snd_sgio2audio** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.snd_sgio2audio_chan*, %struct.snd_sgio2audio_chan** %11, align 8
  store %struct.snd_sgio2audio_chan* %12, %struct.snd_sgio2audio_chan** %4, align 8
  %13 = load %struct.snd_sgio2audio_chan*, %struct.snd_sgio2audio_chan** %4, align 8
  %14 = getelementptr inbounds %struct.snd_sgio2audio_chan, %struct.snd_sgio2audio_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @CHANNEL_CONTROL_RESET, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = call i32 @writeq(i32 %16, i32* %25)
  %27 = call i32 @udelay(i32 10)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = call i32 @writeq(i32 0, i32* %36)
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %1
  %44 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* @CHANNEL_RING_SIZE, align 8
  %47 = sub nsw i64 %46, 32
  %48 = call i32 @snd_sgio2audio_dma_push_frag(%struct.snd_sgio2audio* %44, i32 %45, i64 %47)
  br label %49

49:                                               ; preds = %43, %1
  %50 = load i32, i32* @CHANNEL_DMA_ENABLE, align 4
  %51 = load i32, i32* @CHANNEL_INT_THRESHOLD_50, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @writeq(i32 %52, i32* %61)
  ret i32 0
}

declare dso_local %struct.snd_sgio2audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @snd_sgio2audio_dma_push_frag(%struct.snd_sgio2audio*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
