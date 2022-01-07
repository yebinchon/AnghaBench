; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_mmp-sspa.c_mmp_sspa_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sspa_priv = type { i32, %struct.ssp_device* }
%struct.ssp_device = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @mmp_sspa_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_sspa_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.sspa_priv*, align 8
  %8 = alloca %struct.ssp_device*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %11 = call %struct.sspa_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.sspa_priv* %11, %struct.sspa_priv** %7, align 8
  %12 = load %struct.sspa_priv*, %struct.sspa_priv** %7, align 8
  %13 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %12, i32 0, i32 1
  %14 = load %struct.ssp_device*, %struct.ssp_device** %13, align 8
  store %struct.ssp_device* %14, %struct.ssp_device** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %60 [
    i32 130, label %16
    i32 131, label %16
    i32 132, label %16
    i32 129, label %38
    i32 128, label %38
    i32 133, label %38
  ]

16:                                               ; preds = %3, %3, %3
  %17 = load %struct.sspa_priv*, %struct.sspa_priv** %7, align 8
  %18 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %23 = call i32 @mmp_sspa_rx_enable(%struct.ssp_device* %22)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %32 = call i32 @mmp_sspa_tx_enable(%struct.ssp_device* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.sspa_priv*, %struct.sspa_priv** %7, align 8
  %35 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %63

38:                                               ; preds = %3, %3, %3
  %39 = load %struct.sspa_priv*, %struct.sspa_priv** %7, align 8
  %40 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %50 = call i32 @mmp_sspa_tx_disable(%struct.ssp_device* %49)
  br label %51

51:                                               ; preds = %48, %38
  %52 = load %struct.sspa_priv*, %struct.sspa_priv** %7, align 8
  %53 = getelementptr inbounds %struct.sspa_priv, %struct.sspa_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.ssp_device*, %struct.ssp_device** %8, align 8
  %58 = call i32 @mmp_sspa_rx_disable(%struct.ssp_device* %57)
  br label %59

59:                                               ; preds = %56, %51
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %59, %33
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.sspa_priv* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @mmp_sspa_rx_enable(%struct.ssp_device*) #1

declare dso_local i32 @mmp_sspa_tx_enable(%struct.ssp_device*) #1

declare dso_local i32 @mmp_sspa_tx_disable(%struct.ssp_device*) #1

declare dso_local i32 @mmp_sspa_rx_disable(%struct.ssp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
