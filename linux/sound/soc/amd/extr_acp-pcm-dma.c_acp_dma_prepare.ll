; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.audio_substream_data* }
%struct.audio_substream_data = type { i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@NUM_DSCRS_PER_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @acp_dma_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_dma_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.audio_substream_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.audio_substream_data*, %struct.audio_substream_data** %12, align 8
  store %struct.audio_substream_data* %13, %struct.audio_substream_data** %5, align 8
  %14 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %15 = icmp ne %struct.audio_substream_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %21 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %27 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %30 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %34 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  %36 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %37 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %41 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %45 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NUM_DSCRS_PER_CHANNEL, align 4
  %48 = call i32 @config_acp_dma_channel(i32 %42, i32 %43, i32 %46, i32 %47, i32 0)
  %49 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %50 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.audio_substream_data*, %struct.audio_substream_data** %5, align 8
  %54 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NUM_DSCRS_PER_CHANNEL, align 4
  %57 = call i32 @config_acp_dma_channel(i32 %51, i32 %52, i32 %55, i32 %56, i32 0)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %39, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @config_acp_dma_channel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
