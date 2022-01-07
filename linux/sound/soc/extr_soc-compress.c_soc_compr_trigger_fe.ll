; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_trigger_fe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_trigger_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.snd_soc_dai* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.snd_soc_dai = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)* }

@SND_COMPR_TRIGGER_PARTIAL_DRAIN = common dso_local global i32 0, align 4
@SND_COMPR_TRIGGER_DRAIN = common dso_local global i32 0, align 4
@SND_COMPRESS_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SND_SOC_CARD_CLASS_RUNTIME = common dso_local global i32 0, align 4
@SND_SOC_DPCM_UPDATE_FE = common dso_local global i32 0, align 4
@SND_SOC_DPCM_STATE_START = common dso_local global i32 0, align 4
@SND_SOC_DPCM_STATE_STOP = common dso_local global i32 0, align 4
@SND_SOC_DPCM_STATE_PAUSED = common dso_local global i32 0, align 4
@SND_SOC_DPCM_UPDATE_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, i32)* @soc_compr_trigger_fe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_compr_trigger_fe(%struct.snd_compr_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 2
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %14, align 8
  store %struct.snd_soc_dai* %15, %struct.snd_soc_dai** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SND_COMPR_TRIGGER_PARTIAL_DRAIN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SND_COMPR_TRIGGER_DRAIN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %2
  %24 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @soc_compr_components_trigger(%struct.snd_compr_stream* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %139

27:                                               ; preds = %19
  %28 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SND_COMPRESS_PLAYBACK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %34, i32* %9, align 4
  br label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %39 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* @SND_SOC_CARD_CLASS_RUNTIME, align 4
  %43 = call i32 @mutex_lock_nested(i32* %41, i32 %42)
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %37
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)** %56, align 8
  %58 = icmp ne i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)* %57, null
  br i1 %58, label %59, label %75

59:                                               ; preds = %50
  %60 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %61 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, i32, %struct.snd_soc_dai*)** %65, align 8
  %67 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %70 = call i32 %66(%struct.snd_compr_stream* %67, i32 %68, %struct.snd_soc_dai* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %124

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %50, %37
  %76 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @soc_compr_components_trigger(%struct.snd_compr_stream* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %124

82:                                               ; preds = %75
  %83 = load i32, i32* @SND_SOC_DPCM_UPDATE_FE, align 4
  %84 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %85 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %83, i32* %90, align 4
  %91 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @dpcm_be_dai_trigger(%struct.snd_soc_pcm_runtime* %91, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %5, align 4
  switch i32 %95, label %123 [
    i32 130, label %96
    i32 131, label %96
    i32 132, label %96
    i32 129, label %105
    i32 128, label %105
    i32 133, label %114
  ]

96:                                               ; preds = %82, %82, %82
  %97 = load i32, i32* @SND_SOC_DPCM_STATE_START, align 4
  %98 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %99 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 %97, i32* %104, align 4
  br label %123

105:                                              ; preds = %82, %82
  %106 = load i32, i32* @SND_SOC_DPCM_STATE_STOP, align 4
  %107 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %108 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32 %106, i32* %113, align 4
  br label %123

114:                                              ; preds = %82
  %115 = load i32, i32* @SND_SOC_DPCM_STATE_PAUSED, align 4
  %116 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %117 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 %115, i32* %122, align 4
  br label %123

123:                                              ; preds = %82, %114, %105, %96
  br label %124

124:                                              ; preds = %123, %81, %73
  %125 = load i32, i32* @SND_SOC_DPCM_UPDATE_NO, align 4
  %126 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %127 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i32 %125, i32* %132, align 4
  %133 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %134 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %133, i32 0, i32 0
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %124, %23
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @soc_compr_components_trigger(%struct.snd_compr_stream*, i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @dpcm_be_dai_trigger(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
