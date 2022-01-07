; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/amd/extr_acp-pcm-dma.c_acp_dma_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.audio_substream_data* }
%struct.audio_substream_data = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@CAP_CHANNEL0 = common dso_local global i32 0, align 4
@CAP_CHANNEL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @acp_dma_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_dma_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_runtime*, align 8
  %8 = alloca %struct.audio_substream_data*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 1
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %7, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 0
  %14 = load %struct.audio_substream_data*, %struct.audio_substream_data** %13, align 8
  store %struct.audio_substream_data* %14, %struct.audio_substream_data** %8, align 8
  %15 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %16 = icmp ne %struct.audio_substream_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %110

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %105 [
    i32 130, label %22
    i32 132, label %22
    i32 131, label %22
    i32 129, label %90
    i32 133, label %90
    i32 128, label %90
  ]

22:                                               ; preds = %20, %20, %20
  %23 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %24 = call i32 @acp_get_byte_count(%struct.audio_substream_data* %23)
  %25 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %26 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %22
  %33 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %34 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CAP_CHANNEL0, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %40 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CAP_CHANNEL1, align 4
  %43 = call i32 @acp_dma_cap_channel_disable(i32 %41, i32 %42)
  %44 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %45 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CAP_CHANNEL0, align 4
  %48 = call i32 @acp_dma_cap_channel_enable(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %32
  %50 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %51 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CAP_CHANNEL1, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %57 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CAP_CHANNEL0, align 4
  %60 = call i32 @acp_dma_cap_channel_disable(i32 %58, i32 %59)
  %61 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %62 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CAP_CHANNEL1, align 4
  %65 = call i32 @acp_dma_cap_channel_enable(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %55, %49
  %67 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %68 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %71 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @acp_dma_start(i32 %69, i32 %72, i32 1)
  br label %89

74:                                               ; preds = %22
  %75 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %76 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %79 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @acp_dma_start(i32 %77, i32 %80, i32 1)
  %82 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %83 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %86 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @acp_dma_start(i32 %84, i32 %87, i32 1)
  br label %89

89:                                               ; preds = %74, %66
  store i32 0, i32* %6, align 4
  br label %108

90:                                               ; preds = %20, %20, %20
  %91 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %92 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %95 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @acp_dma_stop(i32 %93, i32 %96)
  %98 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %99 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.audio_substream_data*, %struct.audio_substream_data** %8, align 8
  %102 = getelementptr inbounds %struct.audio_substream_data, %struct.audio_substream_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @acp_dma_stop(i32 %100, i32 %103)
  store i32 %104, i32* %6, align 4
  br label %108

105:                                              ; preds = %20
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %90, %89
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @acp_get_byte_count(%struct.audio_substream_data*) #1

declare dso_local i32 @acp_dma_cap_channel_disable(i32, i32) #1

declare dso_local i32 @acp_dma_cap_channel_enable(i32, i32) #1

declare dso_local i32 @acp_dma_start(i32, i32, i32) #1

declare dso_local i32 @acp_dma_stop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
