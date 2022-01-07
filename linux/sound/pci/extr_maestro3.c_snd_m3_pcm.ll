; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, %struct.snd_pcm*, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i64, %struct.snd_m3* }
%struct.TYPE_2__ = type { i32 }

@MAX_PLAYBACKS = common dso_local global i32 0, align 4
@MAX_CAPTURES = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_m3_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_m3_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*, i32)* @snd_m3_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_pcm(%struct.snd_m3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_m3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %9 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %12 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAX_PLAYBACKS, align 4
  %18 = load i32, i32* @MAX_CAPTURES, align 4
  %19 = call i32 @snd_pcm_new(%struct.TYPE_2__* %10, i32 %15, i32 %16, i32 %17, i32 %18, %struct.snd_pcm** %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @snd_m3_playback_ops)
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @snd_m3_capture_ops)
  %31 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %32, i32 0, i32 2
  store %struct.snd_m3* %31, %struct.snd_m3** %33, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %40 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i32 %38, i32 %43)
  %45 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %46 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %47 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %46, i32 0, i32 1
  store %struct.snd_pcm* %45, %struct.snd_pcm** %47, align 8
  %48 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %49 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %50 = load %struct.snd_m3*, %struct.snd_m3** %4, align 8
  %51 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_dma_pci_data(i32 %52)
  %54 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %48, i32 %49, i32 %53, i32 65536, i32 65536)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %24, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
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
