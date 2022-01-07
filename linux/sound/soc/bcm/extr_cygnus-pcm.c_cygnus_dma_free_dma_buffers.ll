; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_dma_free_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-pcm.c_cygnus_dma_free_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_dma_buffer }
%struct.snd_dma_buffer = type { i32*, i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm*)* @cygnus_dma_free_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cygnus_dma_free_dma_buffers(%struct.snd_pcm* %0) #0 {
  %2 = alloca %struct.snd_pcm*, align 8
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_dma_buffer*, align 8
  store %struct.snd_pcm* %0, %struct.snd_pcm** %2, align 8
  %5 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %6 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %10, align 8
  store %struct.snd_pcm_substream* %11, %struct.snd_pcm_substream** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = icmp ne %struct.snd_pcm_substream* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %15, i32 0, i32 0
  store %struct.snd_dma_buffer* %16, %struct.snd_dma_buffer** %4, align 8
  %17 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %14
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %28 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dma_free_coherent(i32 %26, i32 %29, i32* %32, i32 %35)
  %37 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %21, %14
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %46, align 8
  store %struct.snd_pcm_substream* %47, %struct.snd_pcm_substream** %3, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %49 = icmp ne %struct.snd_pcm_substream* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %40
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %51, i32 0, i32 0
  store %struct.snd_dma_buffer* %52, %struct.snd_dma_buffer** %4, align 8
  %53 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %50
  %58 = load %struct.snd_pcm*, %struct.snd_pcm** %2, align 8
  %59 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %64 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %67 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %70 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(i32 %62, i32 %65, i32* %68, i32 %71)
  %73 = load %struct.snd_dma_buffer*, %struct.snd_dma_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.snd_dma_buffer, %struct.snd_dma_buffer* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %57, %50
  br label %76

76:                                               ; preds = %75, %40
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
