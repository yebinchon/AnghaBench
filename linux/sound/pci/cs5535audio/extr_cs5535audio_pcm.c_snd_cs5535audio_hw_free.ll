; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs5535audio/extr_cs5535audio_pcm.c_snd_cs5535audio_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cs5535audio_dma* }
%struct.cs5535audio_dma = type { i64 }
%struct.cs5535audio = type { i32, %struct.snd_pcm_substream* }

@AC97_PCM_FRONT_DAC_RATE = common dso_local global i32 0, align 4
@AC97_PCM_LR_ADC_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cs5535audio_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs5535audio_hw_free(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.cs5535audio*, align 8
  %4 = alloca %struct.cs5535audio_dma*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.cs5535audio* %6, %struct.cs5535audio** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %10, align 8
  store %struct.cs5535audio_dma* %11, %struct.cs5535audio_dma** %4, align 8
  %12 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %4, align 8
  %13 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %18 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %19 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %18, i32 0, i32 1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %19, align 8
  %21 = icmp eq %struct.snd_pcm_substream* %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %24 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AC97_PCM_FRONT_DAC_RATE, align 4
  %27 = call i32 @snd_ac97_update_power(i32 %25, i32 %26, i32 0)
  br label %34

28:                                               ; preds = %16
  %29 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %30 = getelementptr inbounds %struct.cs5535audio, %struct.cs5535audio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @AC97_PCM_LR_ADC_RATE, align 4
  %33 = call i32 @snd_ac97_update_power(i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %4, align 8
  %36 = getelementptr inbounds %struct.cs5535audio_dma, %struct.cs5535audio_dma* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.cs5535audio*, %struct.cs5535audio** %3, align 8
  %39 = load %struct.cs5535audio_dma*, %struct.cs5535audio_dma** %4, align 8
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %41 = call i32 @cs5535audio_clear_dma_packets(%struct.cs5535audio* %38, %struct.cs5535audio_dma* %39, %struct.snd_pcm_substream* %40)
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %42)
  ret i32 %43
}

declare dso_local %struct.cs5535audio* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ac97_update_power(i32, i32, i32) #1

declare dso_local i32 @cs5535audio_clear_dma_packets(%struct.cs5535audio*, %struct.cs5535audio_dma*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
