; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4000_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als4000.c_snd_als4000_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sb = type { %struct.snd_pcm*, i32, i32 }
%struct.snd_pcm = type { i32, %struct.snd_sb* }

@.str = private unnamed_addr constant [12 x i8] c"ALS4000 DSP\00", align 1
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_als4000_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_als4000_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sb*, i32)* @snd_als4000_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als4000_pcm(%struct.snd_sb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_sb* %0, %struct.snd_sb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %9 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 1
  store %struct.snd_sb* %18, %struct.snd_sb** %20, align 8
  %21 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %25 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %26 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %24, i32 %25, i32* @snd_als4000_playback_ops)
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %29 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %27, i32 %28, i32* @snd_als4000_capture_ops)
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %31 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %32 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %33 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snd_dma_pci_data(i32 %34)
  %36 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %30, i32 %31, i32 %35, i32 65536, i32 65536)
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %38 = load %struct.snd_sb*, %struct.snd_sb** %4, align 8
  %39 = getelementptr inbounds %struct.snd_sb, %struct.snd_sb* %38, i32 0, i32 0
  store %struct.snd_pcm* %37, %struct.snd_pcm** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %17, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
