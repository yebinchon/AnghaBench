; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.TYPE_10__*, i32, i64, %struct.TYPE_9__*, %struct.snd_soc_dai* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.snd_compr_stream*)* }
%struct.snd_soc_dai = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)* }
%struct.snd_compr_params = type { i32 }

@SND_COMPRESS_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SND_SOC_DAPM_STREAM_START = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*)* @soc_compr_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_compr_set_params(%struct.snd_compr_stream* %0, %struct.snd_compr_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_params* %1, %struct.snd_compr_params** %5, align 8
  %9 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %10 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %9, i32 0, i32 1
  %11 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %10, align 8
  store %struct.snd_soc_pcm_runtime* %11, %struct.snd_soc_pcm_runtime** %6, align 8
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %12, i32 0, i32 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %13, align 8
  store %struct.snd_soc_dai* %14, %struct.snd_soc_dai** %7, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mutex_lock_nested(i32* %18, i32 %23)
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %2
  %32 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)** %37, align 8
  %39 = icmp ne i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)* %38, null
  br i1 %39, label %40, label %56

40:                                               ; preds = %31
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_compr_params*, %struct.snd_soc_dai*)** %46, align 8
  %48 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %49 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %51 = call i32 %47(%struct.snd_compr_stream* %48, %struct.snd_compr_params* %49, %struct.snd_soc_dai* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %120

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %31, %2
  %57 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %58 = load %struct.snd_compr_params*, %struct.snd_compr_params** %5, align 8
  %59 = call i32 @soc_compr_components_set_params(%struct.snd_compr_stream* %57, %struct.snd_compr_params* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %120

63:                                               ; preds = %56
  %64 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %65 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %64, i32 0, i32 3
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = icmp ne %struct.TYPE_8__* %68, null
  br i1 %69, label %70, label %93

70:                                               ; preds = %63
  %71 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %72 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %76, align 8
  %78 = icmp ne i32 (%struct.snd_compr_stream*)* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %70
  %80 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %81 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %80, i32 0, i32 3
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %85, align 8
  %87 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %88 = call i32 %86(%struct.snd_compr_stream* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %120

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %70, %63
  %94 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %95 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SND_COMPRESS_PLAYBACK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %101 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %102 = load i32, i32* @SND_SOC_DAPM_STREAM_START, align 4
  %103 = call i32 @snd_soc_dapm_stream_event(%struct.snd_soc_pcm_runtime* %100, i32 %101, i32 %102)
  br label %109

104:                                              ; preds = %93
  %105 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %106 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %107 = load i32, i32* @SND_SOC_DAPM_STREAM_START, align 4
  %108 = call i32 @snd_soc_dapm_stream_event(%struct.snd_soc_pcm_runtime* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %111 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %113 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %118 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %117, i32 0, i32 1
  %119 = call i32 @cancel_delayed_work_sync(i32* %118)
  store i32 0, i32* %3, align 4
  br label %127

120:                                              ; preds = %91, %62, %54
  %121 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %122 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %120, %109
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @soc_compr_components_set_params(%struct.snd_compr_stream*, %struct.snd_compr_params*) #1

declare dso_local i32 @snd_soc_dapm_stream_event(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
