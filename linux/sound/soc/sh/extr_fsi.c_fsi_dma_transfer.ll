; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.fsi_stream*, i32 }

@EIO = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dmaengine_prep_dma_cyclic() fail\0A\00", align 1
@fsi_dma_complete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"tx_submit() fail\0A\00", align 1
@ERR_OVER = common dso_local global i32 0, align 4
@DIFF_ST = common dso_local global i32 0, align 4
@DIFF_CTL = common dso_local global i32 0, align 4
@FIFO_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*, %struct.fsi_stream*)* @fsi_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_dma_transfer(%struct.fsi_priv* %0, %struct.fsi_stream* %1) #0 {
  %3 = alloca %struct.fsi_priv*, align 8
  %4 = alloca %struct.fsi_stream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %4, align 8
  %11 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %12 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %11, i32 0, i32 1
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %12, align 8
  %14 = call %struct.snd_soc_dai* @fsi_get_dai(%struct.snd_pcm_substream* %13)
  store %struct.snd_soc_dai* %14, %struct.snd_soc_dai** %5, align 8
  %15 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %16 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %15, i32 0, i32 1
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %6, align 8
  %18 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %19 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %20 = call i32 @fsi_stream_is_play(%struct.fsi_priv* %18, %struct.fsi_stream* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %31 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %39 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %38)
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %41 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %44 = load i32, i32* @DMA_CTRL_ACK, align 4
  %45 = or i32 %43, %44
  %46 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(i32 %32, i32 %37, i32 %39, i32 %41, i32 %42, i32 %45)
  store %struct.dma_async_tx_descriptor* %46, %struct.dma_async_tx_descriptor** %7, align 8
  %47 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %48 = icmp ne %struct.dma_async_tx_descriptor* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %29
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %94

54:                                               ; preds = %29
  %55 = load i32, i32* @fsi_dma_complete, align 4
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %57 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %59 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %59, i32 0, i32 0
  store %struct.fsi_stream* %58, %struct.fsi_stream** %60, align 8
  %61 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %62 = call i64 @dmaengine_submit(%struct.dma_async_tx_descriptor* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %94

69:                                               ; preds = %54
  %70 = load %struct.fsi_stream*, %struct.fsi_stream** %4, align 8
  %71 = getelementptr inbounds %struct.fsi_stream, %struct.fsi_stream* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dma_async_issue_pending(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @ERR_OVER, align 4
  %78 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %79 = load i32, i32* @DIFF_ST, align 4
  %80 = call i32 @fsi_reg_read(%struct.fsi_priv* %78, i32 %79)
  %81 = and i32 %77, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %85 = load i32, i32* @DIFF_CTL, align 4
  %86 = load i32, i32* @FIFO_CLR, align 4
  %87 = load i32, i32* @FIFO_CLR, align 4
  %88 = call i32 @fsi_reg_mask_set(%struct.fsi_priv* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %90 = load i32, i32* @DIFF_ST, align 4
  %91 = call i32 @fsi_reg_write(%struct.fsi_priv* %89, i32 %90, i32 0)
  br label %92

92:                                               ; preds = %83, %76
  br label %93

93:                                               ; preds = %92, %69
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %64, %49
  %95 = load i32, i32* %10, align 4
  ret i32 %95
}

declare dso_local %struct.snd_soc_dai* @fsi_get_dai(%struct.snd_pcm_substream*) #1

declare dso_local i32 @fsi_stream_is_play(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @fsi_reg_read(%struct.fsi_priv*, i32) #1

declare dso_local i32 @fsi_reg_mask_set(%struct.fsi_priv*, i32, i32, i32) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
