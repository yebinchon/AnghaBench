; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_amd7930.c_snd_amd7930_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_amd7930 = type { %struct.snd_pcm*, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i64, %struct.snd_amd7930* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"sun_amd7930\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_amd7930_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_amd7930_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_amd7930*)* @snd_amd7930_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_amd7930_pcm(%struct.snd_amd7930* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_amd7930*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_amd7930* %0, %struct.snd_amd7930** %3, align 8
  %6 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %7 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @snd_pcm_new(%struct.TYPE_2__* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %9, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %15 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %16 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %14, i32 %15, i32* @snd_amd7930_playback_ops)
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %18 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %19 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %17, i32 %18, i32* @snd_amd7930_capture_ops)
  %20 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %21, i32 0, i32 2
  store %struct.snd_amd7930* %20, %struct.snd_amd7930** %22, align 8
  %23 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %24 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %29 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strcpy(i32 %27, i32 %32)
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %35 = load %struct.snd_amd7930*, %struct.snd_amd7930** %3, align 8
  %36 = getelementptr inbounds %struct.snd_amd7930, %struct.snd_amd7930* %35, i32 0, i32 0
  store %struct.snd_pcm* %34, %struct.snd_pcm** %36, align 8
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %38 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @snd_dma_continuous_data(i32 %39)
  %41 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %37, i32 %38, i32 %40, i32 65536, i32 65536)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %13, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
