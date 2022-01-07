; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_riptide = type { i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_riptide* }

@.str = private unnamed_addr constant [8 x i8] c"RIPTIDE\00", align 1
@PLAYBACK_SUBSTREAMS = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_riptide_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_riptide_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_riptide*, i32)* @snd_riptide_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_pcm(%struct.snd_riptide* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_riptide*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_riptide* %0, %struct.snd_riptide** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %9 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PLAYBACK_SUBSTREAMS, align 4
  %13 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 1, %struct.snd_pcm** %6)
  store i32 %13, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %18, i32 %19, i32* @snd_riptide_playback_ops)
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i32 %22, i32* @snd_riptide_capture_ops)
  %24 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 2
  store %struct.snd_riptide* %24, %struct.snd_riptide** %26, align 8
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %35 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %34, i32 0, i32 1
  store %struct.snd_pcm* %33, %struct.snd_pcm** %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %38 = load %struct.snd_riptide*, %struct.snd_riptide** %4, align 8
  %39 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @snd_dma_pci_data(i32 %40)
  %42 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %36, i32 %37, i32 %41, i32 65536, i32 131072)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %17, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
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
