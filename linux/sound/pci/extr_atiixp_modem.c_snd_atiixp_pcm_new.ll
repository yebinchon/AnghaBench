; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i32, %struct.snd_pcm**, i32, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, %struct.atiixp_modem*, i32 }
%struct.TYPE_2__ = type { i32* }

@snd_atiixp_playback_dma_ops = common dso_local global i32 0, align 4
@ATI_DMA_PLAYBACK = common dso_local global i64 0, align 8
@snd_atiixp_capture_dma_ops = common dso_local global i32 0, align 4
@ATI_DMA_CAPTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"ATI IXP MC97\00", align 1
@ATI_PCMDEV_ANALOG = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_atiixp_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_atiixp_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_CLASS_MODEM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp_modem*)* @snd_atiixp_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_pcm_new(%struct.atiixp_modem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp_modem*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.atiixp_modem* %0, %struct.atiixp_modem** %3, align 8
  %6 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %7 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i64, i64* @ATI_DMA_PLAYBACK, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* @snd_atiixp_playback_dma_ops, i32** %11, align 8
  %12 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %13 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* @ATI_DMA_CAPTURE, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* @snd_atiixp_capture_dma_ops, i32** %17, align 8
  %18 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %19 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* @ATI_PCMDEV_ANALOG, align 8
  %22 = call i32 @snd_pcm_new(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %21, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %1
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @snd_atiixp_playback_ops)
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %33 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %31, i32 %32, i32* @snd_atiixp_capture_ops)
  %34 = load i32, i32* @SNDRV_PCM_CLASS_MODEM, align 4
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 1
  store %struct.atiixp_modem* %37, %struct.atiixp_modem** %39, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @strcpy(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %45 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %46 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %45, i32 0, i32 1
  %47 = load %struct.snd_pcm**, %struct.snd_pcm*** %46, align 8
  %48 = load i64, i64* @ATI_PCMDEV_ANALOG, align 8
  %49 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %47, i64 %48
  store %struct.snd_pcm* %44, %struct.snd_pcm** %49, align 8
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %51 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %52 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %53 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_dma_pci_data(i32 %54)
  %56 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %50, i32 %51, i32 %55, i32 65536, i32 131072)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %27, %25
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i64, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
