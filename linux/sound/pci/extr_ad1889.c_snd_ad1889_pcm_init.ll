; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_pcm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_ad1889.c_snd_ad1889_pcm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ad1889 = type { i32, i32*, i32*, %struct.snd_pcm*, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i64, %struct.snd_ad1889* }
%struct.TYPE_2__ = type { i32, i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_ad1889_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_ad1889_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ad1889*, i32)* @snd_ad1889_pcm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ad1889_pcm_init(%struct.snd_ad1889* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ad1889*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm*, align 8
  store %struct.snd_ad1889* %0, %struct.snd_ad1889** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %8, i32 0, i32 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_pcm_new(%struct.TYPE_2__* %10, i32 %15, i32 %16, i32 1, i32 1, %struct.snd_pcm** %7)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %24 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %25 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %23, i32 %24, i32* @snd_ad1889_playback_ops)
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %27 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %28 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %26, i32 %27, i32* @snd_ad1889_capture_ops)
  %29 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %31 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %30, i32 0, i32 2
  store %struct.snd_ad1889* %29, %struct.snd_ad1889** %31, align 8
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %33 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i32 %36, i32 %41)
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %44 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %45 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %44, i32 0, i32 3
  store %struct.snd_pcm* %43, %struct.snd_pcm** %45, align 8
  %46 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %47 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %51 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %52 = load %struct.snd_ad1889*, %struct.snd_ad1889** %4, align 8
  %53 = getelementptr inbounds %struct.snd_ad1889, %struct.snd_ad1889* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_dma_pci_data(i32 %54)
  %56 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %57 = sdiv i32 %56, 2
  %58 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %59 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %50, i32 %51, i32 %55, i32 %57, i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %22, %20
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
