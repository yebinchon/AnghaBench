; ModuleID = '/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_init_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/arm/extr_aaci.c_aaci_init_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aaci = type { %struct.TYPE_2__*, %struct.snd_pcm* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm = type { i32, i64, %struct.aaci* }

@.str = private unnamed_addr constant [11 x i8] c"AACI AC'97\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@aaci_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@aaci_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aaci*)* @aaci_init_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aaci_init_pcm(%struct.aaci* %0) #0 {
  %2 = alloca %struct.aaci*, align 8
  %3 = alloca %struct.snd_pcm*, align 8
  %4 = alloca i32, align 4
  store %struct.aaci* %0, %struct.aaci** %2, align 8
  %5 = load %struct.aaci*, %struct.aaci** %2, align 8
  %6 = getelementptr inbounds %struct.aaci, %struct.aaci* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = call i32 @snd_pcm_new(%struct.TYPE_2__* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_pcm** %3)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %13 = load %struct.aaci*, %struct.aaci** %2, align 8
  %14 = getelementptr inbounds %struct.aaci, %struct.aaci* %13, i32 0, i32 1
  store %struct.snd_pcm* %12, %struct.snd_pcm** %14, align 8
  %15 = load %struct.aaci*, %struct.aaci** %2, align 8
  %16 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %17 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %16, i32 0, i32 2
  store %struct.aaci* %15, %struct.aaci** %17, align 8
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %21 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DRIVER_NAME, align 4
  %24 = call i32 @strlcpy(i32 %22, i32 %23, i32 4)
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @aaci_playback_ops)
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @aaci_capture_ops)
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %3, align 8
  %32 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %33 = load %struct.aaci*, %struct.aaci** %2, align 8
  %34 = getelementptr inbounds %struct.aaci, %struct.aaci* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %31, i32 %32, i32 %37, i32 0, i32 65536)
  br label %39

39:                                               ; preds = %11, %1
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
