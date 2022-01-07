; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ml403_ac97cr = type { %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_ml403_ac97cr* }

@.str = private unnamed_addr constant [14 x i8] c"ML403AC97CR/1\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_ml403_ac97cr_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_ml403_ac97cr_capture_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ML403AC97CR DAC/ADC\00", align 1
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ml403_ac97cr*, i32)* @snd_ml403_ac97cr_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ml403_ac97cr_pcm(%struct.snd_ml403_ac97cr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ml403_ac97cr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_ml403_ac97cr* %0, %struct.snd_ml403_ac97cr** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %18, i32 %19, i32* @snd_ml403_ac97cr_playback_ops)
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i32 %22, i32* @snd_ml403_ac97cr_capture_ops)
  %24 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %4, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 2
  store %struct.snd_ml403_ac97cr* %24, %struct.snd_ml403_ac97cr** %26, align 8
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %34, i32 0, i32 0
  store %struct.snd_pcm* %33, %struct.snd_pcm** %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32 @snd_dma_continuous_data(i32 %38)
  %40 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %36, i32 %37, i32 %39, i32 65536, i32 131072)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %17, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
