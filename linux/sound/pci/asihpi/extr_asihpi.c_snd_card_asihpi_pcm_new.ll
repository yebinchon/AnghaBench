; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card_asihpi = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_card_asihpi* }

@.str = private unnamed_addr constant [11 x i8] c"Asihpi PCM\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_card_asihpi_playback_mmap_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_card_asihpi_capture_mmap_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@BUFFER_BYTES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card_asihpi*, i32)* @snd_card_asihpi_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_asihpi_pcm_new(%struct.snd_card_asihpi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card_asihpi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_card_asihpi* %0, %struct.snd_card_asihpi** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %13 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hpi_adapter_get_info(i32 %18, i32* %9, i32* %8, i32* %10, i32* %11, i32* %10)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %21 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @snd_pcm_new(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %25, %struct.snd_pcm** %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %2
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %33 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %34 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %32, i32 %33, i32* @snd_card_asihpi_playback_mmap_ops)
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %36 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %37 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %35, i32 %36, i32* @snd_card_asihpi_capture_mmap_ops)
  %38 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %40 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %39, i32 0, i32 2
  store %struct.snd_card_asihpi* %38, %struct.snd_card_asihpi** %40, align 8
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %44 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @strcpy(i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %48 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %49 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %4, align 8
  %50 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snd_dma_pci_data(i32 %51)
  %53 = load i32, i32* @BUFFER_BYTES_MAX, align 4
  %54 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %47, i32 %48, i32 %52, i32 65536, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %31, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @hpi_adapter_get_info(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

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
