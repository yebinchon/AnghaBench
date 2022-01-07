; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_dmaengine_pcm_prepare_and_submit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_dmaengine_pcm_prepare_and_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dmaengine_pcm_runtime_data = type { i32, i64, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.snd_pcm_substream*, i32 }

@DMA_CTRL_ACK = common dso_local global i64 0, align 8
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@dmaengine_pcm_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @dmaengine_pcm_prepare_and_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmaengine_pcm_prepare_and_submit(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.dmaengine_pcm_runtime_data*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream* %9)
  store %struct.dmaengine_pcm_runtime_data* %10, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %11 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %12 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %11, i32 0, i32 2
  %13 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  store %struct.dma_chan* %13, %struct.dma_chan** %5, align 8
  %14 = load i64, i64* @DMA_CTRL_ACK, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = call i32 @snd_pcm_substream_to_dma_direction(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %25 = load i64, i64* %8, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %29 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %37 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %36)
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %8, align 8
  %42 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(%struct.dma_chan* %30, i32 %35, i32 %37, i32 %39, i32 %40, i64 %41)
  store %struct.dma_async_tx_descriptor* %42, %struct.dma_async_tx_descriptor** %6, align 8
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %44 = icmp ne %struct.dma_async_tx_descriptor* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %59

48:                                               ; preds = %27
  %49 = load i32, i32* @dmaengine_pcm_dma_complete, align 4
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %51 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %53 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %54 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %53, i32 0, i32 0
  store %struct.snd_pcm_substream* %52, %struct.snd_pcm_substream** %54, align 8
  %55 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %56 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %55)
  %57 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %4, align 8
  %58 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %48, %45
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_substream_to_dma_direction(%struct.snd_pcm_substream*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_dma_cyclic(%struct.dma_chan*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
