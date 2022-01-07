; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_new_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { %struct.snd_pcm*, i32, i32 }
%struct.snd_pcm = type { i32, i64, %struct.es1938* }

@.str = private unnamed_addr constant [13 x i8] c"es-1938-1946\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_es1938_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_es1938_capture_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ESS Solo-1\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1938*, i32)* @snd_es1938_new_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_new_pcm(%struct.es1938* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.es1938*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.es1938* %0, %struct.es1938** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.es1938*, %struct.es1938** %4, align 8
  %9 = getelementptr inbounds %struct.es1938, %struct.es1938* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11, i32 2, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %42

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %18 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %19 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %17, i32 %18, i32* @snd_es1938_playback_ops)
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %21 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %22 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %20, i32 %21, i32* @snd_es1938_capture_ops)
  %23 = load %struct.es1938*, %struct.es1938** %4, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 2
  store %struct.es1938* %23, %struct.es1938** %25, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %33 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %34 = load %struct.es1938*, %struct.es1938** %4, align 8
  %35 = getelementptr inbounds %struct.es1938, %struct.es1938* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @snd_dma_pci_data(i32 %36)
  %38 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %32, i32 %33, i32 %37, i32 65536, i32 65536)
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %40 = load %struct.es1938*, %struct.es1938** %4, align 8
  %41 = getelementptr inbounds %struct.es1938, %struct.es1938* %40, i32 0, i32 0
  store %struct.snd_pcm* %39, %struct.snd_pcm** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %16, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
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
