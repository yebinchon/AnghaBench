; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via686_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx_modem.c_snd_via686_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx_modem = type { i32, i32, i32, i32, %struct.snd_pcm**, %struct.TYPE_2__*, i64 }
%struct.snd_pcm = type { i32, %struct.via82xx_modem*, i32 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_via686_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_via686_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_CLASS_MODEM = common dso_local global i32 0, align 4
@VIA_REG_MO_STATUS = common dso_local global i32 0, align 4
@VIA_REG_MI_STATUS = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx_modem*)* @snd_via686_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via686_pcm_new(%struct.via82xx_modem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via82xx_modem*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.via82xx_modem* %0, %struct.via82xx_modem** %3, align 8
  %6 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %7 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %6, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %9 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %11 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %10, i32 0, i32 1
  store i32 2, i32* %11, align 4
  %12 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %13 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %12, i32 0, i32 2
  store i32 3342336, i32* %13, align 8
  %14 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %15 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %14, i32 0, i32 5
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %18 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %17, i32 0, i32 5
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
  br label %67

27:                                               ; preds = %1
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @snd_via686_playback_ops)
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %33 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %31, i32 %32, i32* @snd_via686_capture_ops)
  %34 = load i32, i32* @SNDRV_PCM_CLASS_MODEM, align 4
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 1
  store %struct.via82xx_modem* %37, %struct.via82xx_modem** %39, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %44 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %43, i32 0, i32 5
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcpy(i32 %42, i32 %47)
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %50 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %51 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %50, i32 0, i32 4
  %52 = load %struct.snd_pcm**, %struct.snd_pcm*** %51, align 8
  %53 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %52, i64 0
  store %struct.snd_pcm* %49, %struct.snd_pcm** %53, align 8
  %54 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %55 = load i32, i32* @VIA_REG_MO_STATUS, align 4
  %56 = call i32 @init_viadev(%struct.via82xx_modem* %54, i32 0, i32 %55, i32 0)
  %57 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %58 = load i32, i32* @VIA_REG_MI_STATUS, align 4
  %59 = call i32 @init_viadev(%struct.via82xx_modem* %57, i32 1, i32 %58, i32 1)
  %60 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %61 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %62 = load %struct.via82xx_modem*, %struct.via82xx_modem** %3, align 8
  %63 = getelementptr inbounds %struct.via82xx_modem, %struct.via82xx_modem* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snd_dma_pci_data(i32 %64)
  %66 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %60, i32 %61, i32 %65, i32 65536, i32 131072)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %27, %25
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @init_viadev(%struct.via82xx_modem*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
