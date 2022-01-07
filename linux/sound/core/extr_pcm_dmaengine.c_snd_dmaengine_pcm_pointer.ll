; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_dmaengine_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_dmaengine.c_snd_dmaengine_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.dmaengine_pcm_runtime_data = type { i32, i32 }
%struct.dma_tx_state = type { i32 }

@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@DMA_PAUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_dmaengine_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.dmaengine_pcm_runtime_data*, align 8
  %4 = alloca %struct.dma_tx_state, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %9 = call %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream* %8)
  store %struct.dmaengine_pcm_runtime_data* %9, %struct.dmaengine_pcm_runtime_data** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %3, align 8
  %11 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dmaengine_pcm_runtime_data*, %struct.dmaengine_pcm_runtime_data** %3, align 8
  %14 = getelementptr inbounds %struct.dmaengine_pcm_runtime_data, %struct.dmaengine_pcm_runtime_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dmaengine_tx_status(i32 %12, i32 %15, %struct.dma_tx_state* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DMA_PAUSED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20, %1
  %25 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %26 = call i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %25)
  store i32 %26, i32* %6, align 4
  %27 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub i32 %36, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %35, %30, %24
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @bytes_to_frames(i32 %44, i32 %45)
  ret i32 %46
}

declare dso_local %struct.dmaengine_pcm_runtime_data* @substream_to_prtd(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @bytes_to_frames(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
