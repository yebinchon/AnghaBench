; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via686_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via686_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32, i32, i32, i32, %struct.snd_pcm**, %struct.TYPE_2__*, i64 }
%struct.snd_pcm = type { i32, %struct.via82xx* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_via686_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_via686_capture_ops = common dso_local global i32 0, align 4
@VIA_REG_PLAYBACK_STATUS = common dso_local global i32 0, align 4
@VIA_REG_CAPTURE_STATUS = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@VIA_MAX_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*)* @snd_via686_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via686_pcm_new(%struct.via82xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via82xx*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %3, align 8
  %6 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %7 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %9 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %11 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %10, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %13 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %12, i32 0, i32 2
  store i32 119, i32* %13, align 8
  %14 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %15 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %18 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @snd_pcm_new(%struct.TYPE_2__* %16, i32 %21, i32 0, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %1
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @snd_via686_playback_ops)
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %33 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %31, i32 %32, i32* @snd_via686_capture_ops)
  %34 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 1
  store %struct.via82xx* %34, %struct.via82xx** %36, align 8
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %41 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strcpy(i32 %39, i32 %44)
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %47 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %48 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %47, i32 0, i32 4
  %49 = load %struct.snd_pcm**, %struct.snd_pcm*** %48, align 8
  %50 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %49, i64 0
  store %struct.snd_pcm* %46, %struct.snd_pcm** %50, align 8
  %51 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %52 = load i32, i32* @VIA_REG_PLAYBACK_STATUS, align 4
  %53 = call i32 @init_viadev(%struct.via82xx* %51, i32 0, i32 %52, i32 0, i32 0)
  %54 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %55 = load i32, i32* @VIA_REG_CAPTURE_STATUS, align 4
  %56 = call i32 @init_viadev(%struct.via82xx* %54, i32 1, i32 %55, i32 0, i32 1)
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %58 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %59 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %60 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @snd_dma_pci_data(i32 %61)
  %63 = load i32, i32* @VIA_MAX_BUFSIZE, align 4
  %64 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %57, i32 %58, i32 %62, i32 65536, i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %27, %25
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @init_viadev(%struct.via82xx*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
