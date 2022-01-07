; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_set_params_fe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_set_params_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.snd_soc_dai*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.snd_compr_stream*)* }
%struct.snd_soc_dai = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i64 }
%struct.snd_compr_params = type { i32 }

@SND_COMPRESS_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SND_SOC_CARD_CLASS_RUNTIME = common dso_local global i32 0, align 4
@SND_SOC_DPCM_UPDATE_FE = common dso_local global i32 0, align 4
@SND_SOC_DAPM_STREAM_START = common dso_local global i32 0, align 4
@SND_SOC_DPCM_STATE_PREPARE = common dso_local global i32 0, align 4
@SND_SOC_DPCM_UPDATE_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*)* @soc_compr_set_params_fe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_compr_set_params_fe(%struct.snd_compr_stream* %0, %struct.snd_compr_params* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_params*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_params* %1, %struct.snd_compr_params** %4, align 8
  %10 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %10, i32 0, i32 1
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %5, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %22, align 8
  store %struct.snd_pcm_substream* %23, %struct.snd_pcm_substream** %6, align 8
  %24 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %24, i32 0, i32 3
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %25, align 8
  store %struct.snd_soc_dai* %26, %struct.snd_soc_dai** %7, align 8
  %27 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SND_COMPRESS_PLAYBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %33, i32* %9, align 4
  br label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %38 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* @SND_SOC_CARD_CLASS_RUNTIME, align 4
  %42 = call i32 @mutex_lock_nested(i32* %40, i32 %41)
  %43 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %44 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %43, i32 0, i32 1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = call i32 @memset(i32* %50, i32 0, i32 4)
  %52 = load i32, i32* @SND_SOC_DPCM_UPDATE_FE, align 4
  %53 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %53, i32 0, i32 1
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 4
  %60 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @dpcm_be_dai_hw_params(%struct.snd_soc_pcm_runtime* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %36
  br label %155

66:                                               ; preds = %36
  %67 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dpcm_be_dai_prepare(%struct.snd_soc_pcm_runtime* %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %155

73:                                               ; preds = %66
  %74 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %75 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = icmp ne %struct.TYPE_11__* %78, null
  br i1 %79, label %80, label %105

80:                                               ; preds = %73
  %81 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %82 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)** %86, align 8
  %88 = icmp ne i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %80
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)** %95, align 8
  %97 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %98 = load %struct.snd_compr_params*, %struct.snd_compr_params** %4, align 8
  %99 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %100 = call i32 %96(%struct.snd_compr_stream* %97, %struct.snd_compr_params* %98, %struct.snd_soc_dai* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %155

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104, %80, %73
  %106 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %107 = load %struct.snd_compr_params*, %struct.snd_compr_params** %4, align 8
  %108 = call i32 @soc_compr_components_set_params(%struct.snd_compr_stream* %106, %struct.snd_compr_params* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %155

112:                                              ; preds = %105
  %113 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %114 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %113, i32 0, i32 2
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = icmp ne %struct.TYPE_13__* %117, null
  br i1 %118, label %119, label %142

119:                                              ; preds = %112
  %120 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %121 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %120, i32 0, i32 2
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %125, align 8
  %127 = icmp ne i32 (%struct.snd_compr_stream*)* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %119
  %129 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %130 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %129, i32 0, i32 2
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %134, align 8
  %136 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %137 = call i32 %135(%struct.snd_compr_stream* %136)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %155

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %119, %112
  %143 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @SND_SOC_DAPM_STREAM_START, align 4
  %146 = call i32 @dpcm_dapm_stream_event(%struct.snd_soc_pcm_runtime* %143, i32 %144, i32 %145)
  %147 = load i32, i32* @SND_SOC_DPCM_STATE_PREPARE, align 4
  %148 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %149 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  store i32 %147, i32* %154, align 4
  br label %155

155:                                              ; preds = %142, %140, %111, %103, %72, %65
  %156 = load i32, i32* @SND_SOC_DPCM_UPDATE_NO, align 4
  %157 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %158 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %157, i32 0, i32 1
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i32 %156, i32* %163, align 4
  %164 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %165 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %164, i32 0, i32 0
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %8, align 4
  ret i32 %169
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dpcm_be_dai_hw_params(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @dpcm_be_dai_prepare(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @soc_compr_components_set_params(%struct.snd_compr_stream*, %struct.snd_compr_params*) #1

declare dso_local i32 @dpcm_dapm_stream_event(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
