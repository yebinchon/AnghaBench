; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/zte/extr_zx-tdm.c_zx_tdm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_soc_dai = type { i32 }
%struct.zx_tdm_info = type { i32 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@REG_RX_FIFO_CTRL = common dso_local global i32 0, align 4
@FIFOCTRL_RX_FIFO_RST = common dso_local global i32 0, align 4
@REG_TX_FIFO_CTRL = common dso_local global i32 0, align 4
@FIFOCTRL_TX_FIFO_RST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @zx_tdm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_tdm_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zx_tdm_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.zx_tdm_info* @dev_get_drvdata(i32 %19)
  store %struct.zx_tdm_info* %20, %struct.zx_tdm_info** %8, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %82 [
    i32 130, label %22
    i32 131, label %52
    i32 132, label %52
    i32 129, label %62
    i32 128, label %72
    i32 133, label %72
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %27 = load i32, i32* @REG_RX_FIFO_CTRL, align 4
  %28 = call i32 @zx_tdm_readl(%struct.zx_tdm_info* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @FIFOCTRL_RX_FIFO_RST, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %33 = load i32, i32* @REG_RX_FIFO_CTRL, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %32, i32 %33, i32 %34)
  %36 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %37 = call i32 @zx_tdm_rx_dma_en(%struct.zx_tdm_info* %36, i32 1)
  br label %51

38:                                               ; preds = %22
  %39 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %40 = load i32, i32* @REG_TX_FIFO_CTRL, align 4
  %41 = call i32 @zx_tdm_readl(%struct.zx_tdm_info* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @FIFOCTRL_TX_FIFO_RST, align 4
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %46 = load i32, i32* @REG_TX_FIFO_CTRL, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @zx_tdm_writel(%struct.zx_tdm_info* %45, i32 %46, i32 %47)
  %49 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %50 = call i32 @zx_tdm_tx_dma_en(%struct.zx_tdm_info* %49, i32 1)
  br label %51

51:                                               ; preds = %38, %25
  br label %85

52:                                               ; preds = %3, %3
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %57 = call i32 @zx_tdm_rx_en(%struct.zx_tdm_info* %56, i32 1)
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %60 = call i32 @zx_tdm_tx_en(%struct.zx_tdm_info* %59, i32 1)
  br label %61

61:                                               ; preds = %58, %55
  br label %85

62:                                               ; preds = %3
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %67 = call i32 @zx_tdm_rx_dma_en(%struct.zx_tdm_info* %66, i32 0)
  br label %71

68:                                               ; preds = %62
  %69 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %70 = call i32 @zx_tdm_tx_dma_en(%struct.zx_tdm_info* %69, i32 0)
  br label %71

71:                                               ; preds = %68, %65
  br label %85

72:                                               ; preds = %3, %3
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %77 = call i32 @zx_tdm_rx_en(%struct.zx_tdm_info* %76, i32 0)
  br label %81

78:                                               ; preds = %72
  %79 = load %struct.zx_tdm_info*, %struct.zx_tdm_info** %8, align 8
  %80 = call i32 @zx_tdm_tx_en(%struct.zx_tdm_info* %79, i32 0)
  br label %81

81:                                               ; preds = %78, %75
  br label %85

82:                                               ; preds = %3
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %81, %71, %61, %51
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local %struct.zx_tdm_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @zx_tdm_readl(%struct.zx_tdm_info*, i32) #1

declare dso_local i32 @zx_tdm_writel(%struct.zx_tdm_info*, i32, i32) #1

declare dso_local i32 @zx_tdm_rx_dma_en(%struct.zx_tdm_info*, i32) #1

declare dso_local i32 @zx_tdm_tx_dma_en(%struct.zx_tdm_info*, i32) #1

declare dso_local i32 @zx_tdm_rx_en(%struct.zx_tdm_info*, i32) #1

declare dso_local i32 @zx_tdm_tx_en(%struct.zx_tdm_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
