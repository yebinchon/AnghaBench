; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_in_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_dma_in_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.snd_sgio2audio_chan = type { i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_sgio2audio = type { i32 }

@CHANNEL_RING_SIZE = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_8__* null, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_sgio2audio_dma_in_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_dma_in_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sgio2audio_chan*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_sgio2audio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.snd_sgio2audio_chan*
  store %struct.snd_sgio2audio_chan* %11, %struct.snd_sgio2audio_chan** %5, align 8
  %12 = load %struct.snd_sgio2audio_chan*, %struct.snd_sgio2audio_chan** %5, align 8
  %13 = getelementptr inbounds %struct.snd_sgio2audio_chan, %struct.snd_sgio2audio_chan* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_pcm_substream* %14, %struct.snd_pcm_substream** %6, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %16 = call %struct.snd_sgio2audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %15)
  store %struct.snd_sgio2audio* %16, %struct.snd_sgio2audio** %7, align 8
  %17 = load %struct.snd_sgio2audio_chan*, %struct.snd_sgio2audio_chan** %5, align 8
  %18 = getelementptr inbounds %struct.snd_sgio2audio_chan, %struct.snd_sgio2audio_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @CHANNEL_RING_SIZE, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mace, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @readq(i32* %29)
  %31 = sub nsw i32 %20, %30
  %32 = sub nsw i32 %31, 32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @snd_sgio2audio_dma_pull_frag(%struct.snd_sgio2audio* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %40 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %39)
  br label %41

41:                                               ; preds = %38, %2
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local %struct.snd_sgio2audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @readq(i32*) #1

declare dso_local i64 @snd_sgio2audio_dma_pull_frag(%struct.snd_sgio2audio*, i32, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
