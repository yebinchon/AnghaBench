; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_spdif_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64, i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_trident* }

@.str = private unnamed_addr constant [21 x i8] c"trident_dx_nx IEC958\00", align 1
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_trident_spdif_ops = common dso_local global i32 0, align 4
@snd_trident_spdif_7018_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Trident 4DWave IEC958\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_trident_spdif_pcm(%struct.snd_trident* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %9 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 0, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %18, i32 0, i32 2
  store %struct.snd_trident* %17, %struct.snd_trident** %19, align 8
  %20 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %21 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %27 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %28 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %26, i32 %27, i32* @snd_trident_spdif_ops)
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %31 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %32 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %30, i32 %31, i32* @snd_trident_spdif_7018_ops)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @strcpy(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %41 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %42 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %41, i32 0, i32 2
  store %struct.snd_pcm* %40, %struct.snd_pcm** %42, align 8
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %44 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %45 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %46 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snd_dma_pci_data(i32 %47)
  %49 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %43, i32 %44, i32 %48, i32 65536, i32 131072)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %33, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

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
