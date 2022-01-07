; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sirf_usp = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @sirf_usp_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirf_usp_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.sirf_usp*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %9 = call %struct.sirf_usp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.sirf_usp* %9, %struct.sirf_usp** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %37 [
    i32 130, label %11
    i32 131, label %11
    i32 132, label %11
    i32 129, label %24
    i32 128, label %24
    i32 133, label %24
  ]

11:                                               ; preds = %3, %3, %3
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.sirf_usp*, %struct.sirf_usp** %7, align 8
  %19 = call i32 @sirf_usp_tx_enable(%struct.sirf_usp* %18)
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.sirf_usp*, %struct.sirf_usp** %7, align 8
  %22 = call i32 @sirf_usp_rx_enable(%struct.sirf_usp* %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %37

24:                                               ; preds = %3, %3, %3
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.sirf_usp*, %struct.sirf_usp** %7, align 8
  %32 = call i32 @sirf_usp_tx_disable(%struct.sirf_usp* %31)
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.sirf_usp*, %struct.sirf_usp** %7, align 8
  %35 = call i32 @sirf_usp_rx_disable(%struct.sirf_usp* %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %3, %36, %23
  ret i32 0
}

declare dso_local %struct.sirf_usp* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @sirf_usp_tx_enable(%struct.sirf_usp*) #1

declare dso_local i32 @sirf_usp_rx_enable(%struct.sirf_usp*) #1

declare dso_local i32 @sirf_usp_tx_disable(%struct.sirf_usp*) #1

declare dso_local i32 @sirf_usp_rx_disable(%struct.sirf_usp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
