; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_preallocate_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-dma.c_kirkwood_dma_preallocate_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.snd_pcm = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i64, i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@kirkwood_dma_snd_hw = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm*, i32)* @kirkwood_dma_preallocate_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_dma_preallocate_dma_buffer(%struct.snd_pcm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_dma_buffer*, align 8
  %8 = alloca i64, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %10 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %15, align 8
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %6, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %6, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  store %struct.snd_dma_buffer* %18, %struct.snd_dma_buffer** %7, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @kirkwood_dma_snd_hw, i32 0, i32 0), align 8
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %21 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %33 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %39 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %38, i32 0, i32 3
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @dma_alloc_coherent(i32 %36, i64 %37, i32* %39, i32 %40)
  %42 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %2
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %54 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %7, align 8
  %56 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @dma_alloc_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
