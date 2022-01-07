; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_ymfpci* }

@.str = private unnamed_addr constant [7 x i8] c"YMFPCI\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_ymfpci_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_ymfpci_capture_rec_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@snd_pcm_std_chmaps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ymfpci_pcm(%struct.snd_ymfpci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ymfpci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 32, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %46

16:                                               ; preds = %2
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %18, i32 0, i32 2
  store %struct.snd_ymfpci* %17, %struct.snd_ymfpci** %19, align 8
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %21 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %22 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %20, i32 %21, i32* @snd_ymfpci_playback_ops)
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %24 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %25 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %23, i32 %24, i32* @snd_ymfpci_capture_rec_ops)
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %33 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %34 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %33, i32 0, i32 1
  store %struct.snd_pcm* %32, %struct.snd_pcm** %34, align 8
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %36 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %37 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %4, align 8
  %38 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @snd_dma_pci_data(i32 %39)
  %41 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %35, i32 %36, i32 %40, i32 65536, i32 262144)
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %43 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %44 = load i32, i32* @snd_pcm_std_chmaps, align 4
  %45 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %42, i32 %43, i32 %44, i32 2, i32 0, i32* null)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %16, %14
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
