; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_playback_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_playback_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_ad1889 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AD_DS_WSMC = common dso_local global i32 0, align 4
@AD_DMA_WAV = common dso_local global i32 0, align 4
@AD_DMA_LOOP = common dso_local global i32 0, align 4
@AD_DMA_IM_CNT = common dso_local global i32 0, align 4
@AD_DS_WSMC_WAEN = common dso_local global i32 0, align 4
@AD_DMA_CHSS = common dso_local global i32 0, align 4
@AD_DMA_CHSS_WAVS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AD_CHAN_WAV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_ad1889_playback_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_playback_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_ad1889*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = call %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_ad1889* %9, %struct.snd_ad1889** %7, align 8
  %10 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %11 = load i32, i32* @AD_DS_WSMC, align 4
  %12 = call i32 @ad1889_readw(%struct.snd_ad1889* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %37 [
    i32 129, label %14
    i32 128, label %30
  ]

14:                                               ; preds = %2
  %15 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %16 = load i32, i32* @AD_DMA_WAV, align 4
  %17 = load i32, i32* @AD_DMA_LOOP, align 4
  %18 = load i32, i32* @AD_DMA_IM_CNT, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ad1889_writew(%struct.snd_ad1889* %15, i32 %16, i32 %19)
  %21 = load i32, i32* @AD_DS_WSMC_WAEN, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %25 = load i32, i32* @AD_DMA_CHSS, align 4
  %26 = load i32, i32* @AD_DMA_CHSS_WAVS, align 4
  %27 = call i32 @ad1889_writel(%struct.snd_ad1889* %24, i32 %25, i32 %26)
  %28 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %29 = call i32 @ad1889_unmute(%struct.snd_ad1889* %28)
  br label %41

30:                                               ; preds = %2
  %31 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %32 = call i32 @ad1889_mute(%struct.snd_ad1889* %31)
  %33 = load i32, i32* @AD_DS_WSMC_WAEN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %41

37:                                               ; preds = %2
  %38 = call i32 (...) @snd_BUG()
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %60

41:                                               ; preds = %30, %14
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %44 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %47 = load i32, i32* @AD_DS_WSMC, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ad1889_writew(%struct.snd_ad1889* %46, i32 %47, i32 %48)
  %50 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %51 = load i32, i32* @AD_DS_WSMC, align 4
  %52 = call i32 @ad1889_readw(%struct.snd_ad1889* %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.snd_ad1889*, %struct.snd_ad1889** %7, align 8
  %57 = load i32, i32* @AD_CHAN_WAV, align 4
  %58 = call i32 @ad1889_channel_reset(%struct.snd_ad1889* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %41
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %37
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.snd_ad1889* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @ad1889_readw(%struct.snd_ad1889*, i32) #1

declare dso_local i32 @ad1889_writew(%struct.snd_ad1889*, i32, i32) #1

declare dso_local i32 @ad1889_writel(%struct.snd_ad1889*, i32, i32) #1

declare dso_local i32 @ad1889_unmute(%struct.snd_ad1889*) #1

declare dso_local i32 @ad1889_mute(%struct.snd_ad1889*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @ad1889_channel_reset(%struct.snd_ad1889*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
