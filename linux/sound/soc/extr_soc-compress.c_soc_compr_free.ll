; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-compress.c_soc_compr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i32, %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__*, %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}* }
%struct.snd_soc_dai = type { %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)* }

@SND_COMPRESS_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@SND_SOC_DAPM_STREAM_STOP = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @soc_compr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_compr_free(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca %struct.snd_compr_stream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %2, align 8
  %7 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %7, i32 0, i32 1
  %9 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  store %struct.snd_soc_pcm_runtime* %9, %struct.snd_soc_pcm_runtime** %3, align 8
  %10 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %11 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %10, i32 0, i32 6
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  store %struct.snd_soc_dai* %12, %struct.snd_soc_dai** %4, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 5
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %14, align 8
  store %struct.snd_soc_dai* %15, %struct.snd_soc_dai** %5, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mutex_lock_nested(i32* %19, i32 %24)
  %26 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %27 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SND_COMPRESS_PLAYBACK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  store i32 %32, i32* %6, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @snd_soc_runtime_deactivate(%struct.snd_soc_pcm_runtime* %36, i32 %37)
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %40 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %41 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai* %39, i32 1, i32 %42)
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %35
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %53 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %61 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %60, i32 0, i32 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %59
  %67 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %68 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %67, i32 0, i32 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i32 (%struct.snd_compr_stream*)**
  %74 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %73, align 8
  %75 = icmp ne i32 (%struct.snd_compr_stream*)* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %66
  %77 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %78 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %77, i32 0, i32 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = bitcast {}** %82 to i32 (%struct.snd_compr_stream*)**
  %84 = load i32 (%struct.snd_compr_stream*)*, i32 (%struct.snd_compr_stream*)** %83, align 8
  %85 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %86 = call i32 %84(%struct.snd_compr_stream* %85)
  br label %87

87:                                               ; preds = %76, %66, %59
  %88 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %89 = call i32 @soc_compr_components_free(%struct.snd_compr_stream* %88, i32* null)
  %90 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %91 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = icmp ne %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %87
  %97 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %98 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)** %102, align 8
  %104 = icmp ne i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %96
  %106 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %107 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)*, i32 (%struct.snd_compr_stream*, %struct.snd_soc_dai*)** %111, align 8
  %113 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %114 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %115 = call i32 %112(%struct.snd_compr_stream* %113, %struct.snd_soc_dai* %114)
  br label %116

116:                                              ; preds = %105, %96, %87
  %117 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %118 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @SND_COMPRESS_PLAYBACK, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %116
  %123 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %124 = call i64 @snd_soc_runtime_ignore_pmdown_time(%struct.snd_soc_pcm_runtime* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %128 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %129 = load i32, i32* @SND_SOC_DAPM_STREAM_STOP, align 4
  %130 = call i32 @snd_soc_dapm_stream_event(%struct.snd_soc_pcm_runtime* %127, i32 %128, i32 %129)
  br label %142

131:                                              ; preds = %122
  %132 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %133 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load i32, i32* @system_power_efficient_wq, align 4
  %135 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %136 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %135, i32 0, i32 3
  %137 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %138 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @msecs_to_jiffies(i32 %139)
  %141 = call i32 @queue_delayed_work(i32 %134, i32* %136, i32 %140)
  br label %142

142:                                              ; preds = %131, %126
  br label %148

143:                                              ; preds = %116
  %144 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %145 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %146 = load i32, i32* @SND_SOC_DAPM_STREAM_STOP, align 4
  %147 = call i32 @snd_soc_dapm_stream_event(%struct.snd_soc_pcm_runtime* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %142
  %149 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %150 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %149, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  ret i32 0
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @snd_soc_runtime_deactivate(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local i32 @snd_soc_dai_digital_mute(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @soc_compr_components_free(%struct.snd_compr_stream*, i32*) #1

declare dso_local i64 @snd_soc_runtime_ignore_pmdown_time(%struct.snd_soc_pcm_runtime*) #1

declare dso_local i32 @snd_soc_dapm_stream_event(%struct.snd_soc_pcm_runtime*, i32, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
