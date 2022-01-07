; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c__cs46xx_playback_open_channel.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_cs46xx_lib.c__cs46xx_playback_open_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__, i32, %struct.snd_cs46xx_pcm* }
%struct.snd_cs46xx_pcm = type { i32, i32*, %struct.snd_pcm_substream*, i32 }
%struct.snd_cs46xx = type { i32 (%struct.snd_cs46xx*, i32)*, i64, %struct.snd_cs46xx_pcm*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@snd_cs46xx_playback = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@snd_cs46xx_pcm_free_substream = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_MMAP_VALID = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@hw_constraints_period_sizes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @_cs46xx_playback_open_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cs46xx_playback_open_channel(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca %struct.snd_cs46xx_pcm*, align 8
  %8 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %10 = call %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_cs46xx* %10, %struct.snd_cs46xx** %6, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_cs46xx_pcm* @kzalloc(i32 32, i32 %14)
  store %struct.snd_cs46xx_pcm* %15, %struct.snd_cs46xx_pcm** %7, align 8
  %16 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %17 = icmp eq %struct.snd_cs46xx_pcm* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %23 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %24 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_dma_pci_data(i32 %25)
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %29 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %28, i32 0, i32 3
  %30 = call i64 @snd_dma_alloc_pages(i32 %22, i32 %26, i32 %27, i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %34 = call i32 @kfree(%struct.snd_cs46xx_pcm* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %72

37:                                               ; preds = %21
  %38 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_2__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 4 bitcast (%struct.TYPE_2__* @snd_cs46xx_playback to i8*), i64 4, i1 false)
  %41 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 2
  store %struct.snd_cs46xx_pcm* %41, %struct.snd_cs46xx_pcm** %43, align 8
  %44 = load i32, i32* @snd_cs46xx_pcm_free_substream, align 4
  %45 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %48 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %49 = getelementptr inbounds %struct.snd_cs46xx_pcm, %struct.snd_cs46xx_pcm* %48, i32 0, i32 2
  store %struct.snd_pcm_substream* %47, %struct.snd_pcm_substream** %49, align 8
  %50 = load %struct.snd_cs46xx_pcm*, %struct.snd_cs46xx_pcm** %7, align 8
  %51 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %52 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %51, i32 0, i32 2
  store %struct.snd_cs46xx_pcm* %50, %struct.snd_cs46xx_pcm** %52, align 8
  %53 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %54 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %37
  %58 = load i32, i32* @SNDRV_PCM_INFO_MMAP_VALID, align 4
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %59, i32 0, i32 0
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %60, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %58
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %57, %37
  %67 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %68 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %67, i32 0, i32 0
  %69 = load i32 (%struct.snd_cs46xx*, i32)*, i32 (%struct.snd_cs46xx*, i32)** %68, align 8
  %70 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %71 = call i32 %69(%struct.snd_cs46xx* %70, i32 1)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %32, %18
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.snd_cs46xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.snd_cs46xx_pcm* @kzalloc(i32, i32) #1

declare dso_local i64 @snd_dma_alloc_pages(i32, i32, i32, i32*) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @kfree(%struct.snd_cs46xx_pcm*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
