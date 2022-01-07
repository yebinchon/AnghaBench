; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_get_bt_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_get_bt_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_btcvsd_snd_stream = type { i32 }
%struct.mtk_btcvsd_snd = type { %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream* }
%struct.snd_pcm_substream = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_btcvsd_snd_stream* (%struct.mtk_btcvsd_snd*, %struct.snd_pcm_substream*)* @get_bt_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_btcvsd_snd_stream* @get_bt_stream(%struct.mtk_btcvsd_snd* %0, %struct.snd_pcm_substream* %1) #0 {
  %3 = alloca %struct.mtk_btcvsd_snd_stream*, align 8
  %4 = alloca %struct.mtk_btcvsd_snd*, align 8
  %5 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.mtk_btcvsd_snd* %0, %struct.mtk_btcvsd_snd** %4, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %5, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %12, i32 0, i32 1
  %14 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %13, align 8
  store %struct.mtk_btcvsd_snd_stream* %14, %struct.mtk_btcvsd_snd_stream** %3, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %16, i32 0, i32 0
  %18 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %17, align 8
  store %struct.mtk_btcvsd_snd_stream* %18, %struct.mtk_btcvsd_snd_stream** %3, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.mtk_btcvsd_snd_stream*, %struct.mtk_btcvsd_snd_stream** %3, align 8
  ret %struct.mtk_btcvsd_snd_stream* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
