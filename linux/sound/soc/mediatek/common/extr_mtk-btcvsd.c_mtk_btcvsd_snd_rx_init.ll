; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_mtk_btcvsd_snd_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/common/extr_mtk-btcvsd.c_mtk_btcvsd_snd_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_btcvsd_snd = type { %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i32, i32 }

@BTCVSD_RX_PACKET_SIZE = common dso_local global i32 0, align 4
@BTCVSD_RX_BUF_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_btcvsd_snd*)* @mtk_btcvsd_snd_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_btcvsd_snd_rx_init(%struct.mtk_btcvsd_snd* %0) #0 {
  %2 = alloca %struct.mtk_btcvsd_snd*, align 8
  store %struct.mtk_btcvsd_snd* %0, %struct.mtk_btcvsd_snd** %2, align 8
  %3 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = call i32 @memset(%struct.TYPE_2__* %5, i32 0, i32 32)
  %7 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @memset(%struct.TYPE_2__* %9, i32 0, i32 8)
  %11 = load i32, i32* @BTCVSD_RX_PACKET_SIZE, align 4
  %12 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @BTCVSD_RX_BUF_SIZE, align 4
  %17 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %2, align 8
  %18 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %16, i32* %20, align 8
  %21 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %2, align 8
  %22 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %2, align 8
  %26 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %30 = load %struct.mtk_btcvsd_snd*, %struct.mtk_btcvsd_snd** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_btcvsd_snd, %struct.mtk_btcvsd_snd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
