; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_error_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_error_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sgio2audio_chan = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_sgio2audio_error_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_error_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_sgio2audio_chan*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_sgio2audio_chan*
  store %struct.snd_sgio2audio_chan* %8, %struct.snd_sgio2audio_chan** %5, align 8
  %9 = load %struct.snd_sgio2audio_chan*, %struct.snd_sgio2audio_chan** %5, align 8
  %10 = getelementptr inbounds %struct.snd_sgio2audio_chan, %struct.snd_sgio2audio_chan* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  store %struct.snd_pcm_substream* %11, %struct.snd_pcm_substream** %6, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %13 = call i32 @snd_sgio2audio_dma_stop(%struct.snd_pcm_substream* %12)
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %15 = call i32 @snd_sgio2audio_dma_start(%struct.snd_pcm_substream* %14)
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %16
}

declare dso_local i32 @snd_sgio2audio_dma_stop(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_sgio2audio_dma_start(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
