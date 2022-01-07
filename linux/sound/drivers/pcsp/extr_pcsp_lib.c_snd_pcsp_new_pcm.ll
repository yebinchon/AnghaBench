; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/pcsp/extr_pcsp_lib.c_snd_pcsp_new_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/pcsp/extr_pcsp_lib.c_snd_pcsp_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcsp = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.snd_pcsp* }

@.str = private unnamed_addr constant [10 x i8] c"pcspeaker\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_pcsp_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pcsp\00", align 1
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PCSP_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcsp_new_pcm(%struct.snd_pcsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcsp*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcsp* %0, %struct.snd_pcsp** %3, align 8
  %5 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %6 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %8, i32 0, i32 0
  %10 = call i32 @snd_pcm_new(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 0, %struct.TYPE_4__** %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = call i32 @snd_pcm_set_ops(%struct.TYPE_4__* %18, i32 %19, i32* @snd_pcsp_playback_ops)
  %21 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %22 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %23 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store %struct.snd_pcsp* %21, %struct.snd_pcsp** %25, align 8
  %26 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %27 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %28 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %32 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.snd_pcsp*, %struct.snd_pcsp** %3, align 8
  %38 = getelementptr inbounds %struct.snd_pcsp, %struct.snd_pcsp* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @snd_dma_continuous_data(i32 %41)
  %43 = load i32, i32* @PCSP_BUFFER_SIZE, align 4
  %44 = load i32, i32* @PCSP_BUFFER_SIZE, align 4
  %45 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.TYPE_4__* %39, i32 %40, i32 %42, i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %15, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.TYPE_4__*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
