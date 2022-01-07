; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_mtk_pcm_btcvsd_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_mtk_pcm_btcvsd_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.TYPE_2__*, %struct.snd_soc_pcm_runtime* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_pcm_runtime = type { i32 }
%struct.snd_soc_component = type { i32 }
%struct.mtk_btcvsd_snd = type { %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream*, i32, i32 }
%struct.mtk_btcvsd_snd_stream = type { i32, i32, i32, i32, i32 }

@BTCVSD_SND_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @mtk_pcm_btcvsd_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pcm_btcvsd_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.mtk_btcvsd_snd*, align 8
  %6 = alloca %struct.mtk_btcvsd_snd_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 2
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %3, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %3, align 8
  %17 = load i32, i32* @BTCVSD_SND_NAME, align 4
  %18 = call %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime* %16, i32 %17)
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %4, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %20 = call %struct.mtk_btcvsd_snd* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.mtk_btcvsd_snd* %20, %struct.mtk_btcvsd_snd** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %27, i32 0, i32 3
  store i32* %28, i32** %11, align 8
  %29 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %5, align 8
  %30 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %29, i32 0, i32 1
  %31 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %30, align 8
  store %struct.mtk_btcvsd_snd_stream* %31, %struct.mtk_btcvsd_snd_stream** %6, align 8
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %5, align 8
  %34 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %33, i32 0, i32 2
  store i32* %34, i32** %11, align 8
  %35 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %5, align 8
  %36 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %35, i32 0, i32 0
  %37 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %36, align 8
  store %struct.mtk_btcvsd_snd_stream* %37, %struct.mtk_btcvsd_snd_stream** %6, align 8
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %5, align 8
  %49 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %48, i32 0, i32 1
  %50 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %49, align 8
  %51 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  br label %59

53:                                               ; preds = %38
  %54 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %5, align 8
  %55 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %54, i32 0, i32 0
  %56 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %55, align 8
  %57 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi i32 [ %52, %47 ], [ %58, %53 ]
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %6, align 8
  %69 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %10, align 4
  br label %83

72:                                               ; preds = %59
  %73 = load i32, i32* @INT_MAX, align 4
  %74 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %6, align 8
  %75 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @INT_MIN, align 4
  %80 = sub nsw i32 %78, %79
  %81 = add nsw i32 %77, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %72, %66
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %6, align 8
  %86 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %6, align 8
  %89 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  store i32 %91, i32* %8, align 4
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @btcvsd_bytes_to_frame(%struct.snd_pcm_substream* %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %6, align 8
  %96 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %101 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %100, i32 0, i32 1
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = srem i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %6, align 8
  %109 = getelementptr inbounds %struct.mtk_btcvsd_snd_stream, %struct.mtk_btcvsd_snd_stream* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.snd_soc_component* @snd_soc_rtdcom_lookup(%struct.snd_soc_pcm_runtime*, i32) #1

declare dso_local %struct.mtk_btcvsd_snd* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @btcvsd_bytes_to_frame(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
