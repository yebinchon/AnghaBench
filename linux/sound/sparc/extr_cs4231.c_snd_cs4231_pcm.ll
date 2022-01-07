; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_cs4231.c_snd_cs4231_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.snd_cs4231* }
%struct.snd_cs4231 = type { %struct.snd_pcm*, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i32, %struct.snd_cs4231* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"CS4231\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_cs4231_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_cs4231_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_JOINT_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*)* @snd_cs4231_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs4231_pcm(%struct.snd_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_cs4231*, align 8
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %7, i32 0, i32 0
  %9 = load %struct.snd_cs4231*, %struct.snd_cs4231** %8, align 8
  store %struct.snd_cs4231* %9, %struct.snd_cs4231** %4, align 8
  %10 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %11 = call i32 @snd_pcm_new(%struct.snd_card* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_pcm** %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %18 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %19 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %17, i32 %18, i32* @snd_cs4231_playback_ops)
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %21 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %22 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %20, i32 %21, i32* @snd_cs4231_capture_ops)
  %23 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 2
  store %struct.snd_cs4231* %23, %struct.snd_cs4231** %25, align 8
  %26 = load i32, i32* @SNDRV_PCM_INFO_JOINT_DUPLEX, align 4
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %34 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %35 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %36 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %33, i32 %34, i32* %38, i32 65536, i32 131072)
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %41 = load %struct.snd_cs4231*, %struct.snd_cs4231** %4, align 8
  %42 = getelementptr inbounds %struct.snd_cs4231, %struct.snd_cs4231* %41, i32 0, i32 0
  store %struct.snd_pcm* %40, %struct.snd_pcm** %42, align 8
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %16, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
