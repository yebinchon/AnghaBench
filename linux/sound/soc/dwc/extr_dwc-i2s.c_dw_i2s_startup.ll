; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_i2s_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/dwc/extr_dwc-i2s.c_dw_i2s_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.dw_i2s_dev = type { i32, %union.dw_i2s_snd_dma_data, %union.dw_i2s_snd_dma_data }
%union.dw_i2s_snd_dma_data = type { i32 }

@DWC_I2S_RECORD = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DWC_I2S_PLAY = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @dw_i2s_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i2s_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.dw_i2s_dev*, align 8
  %7 = alloca %union.dw_i2s_snd_dma_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = call %struct.dw_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.dw_i2s_dev* %9, %struct.dw_i2s_dev** %6, align 8
  store %union.dw_i2s_snd_dma_data* null, %union.dw_i2s_snd_dma_data** %7, align 8
  %10 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %11 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DWC_I2S_RECORD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %16, %2
  %26 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %27 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DWC_I2S_PLAY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %66

41:                                               ; preds = %32, %25
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %49 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %48, i32 0, i32 2
  store %union.dw_i2s_snd_dma_data* %49, %union.dw_i2s_snd_dma_data** %7, align 8
  br label %60

50:                                               ; preds = %41
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.dw_i2s_dev*, %struct.dw_i2s_dev** %6, align 8
  %58 = getelementptr inbounds %struct.dw_i2s_dev, %struct.dw_i2s_dev* %57, i32 0, i32 1
  store %union.dw_i2s_snd_dma_data* %58, %union.dw_i2s_snd_dma_data** %7, align 8
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %47
  %61 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %62 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %63 = load %union.dw_i2s_snd_dma_data*, %union.dw_i2s_snd_dma_data** %7, align 8
  %64 = bitcast %union.dw_i2s_snd_dma_data* %63 to i8*
  %65 = call i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai* %61, %struct.snd_pcm_substream* %62, i8* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %38, %22
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.dw_i2s_dev* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_set_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
