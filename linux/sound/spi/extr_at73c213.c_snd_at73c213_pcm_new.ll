; ModuleID = '/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/spi/extr_at73c213.c_snd_at73c213_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_at73c213 = type { %struct.TYPE_5__*, %struct.snd_pcm*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_pcm = type { i32, i32, %struct.snd_at73c213* }
%struct.TYPE_6__ = type { i32 }

@SNDRV_PCM_INFO_BLOCK_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"at73c213\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@at73c213_playback_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_at73c213*, i32)* @snd_at73c213_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_at73c213_pcm_new(%struct.snd_at73c213* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_at73c213*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_at73c213* %0, %struct.snd_at73c213** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %8 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %11 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %10, i32 0, i32 2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @snd_pcm_new(%struct.TYPE_6__* %9, i32 %14, i32 %15, i32 1, i32 0, %struct.snd_pcm** %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 2
  store %struct.snd_at73c213* %21, %struct.snd_at73c213** %23, align 8
  %24 = load i32, i32* @SNDRV_PCM_INFO_BLOCK_TRANSFER, align 4
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcpy(i32 %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %32 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %33 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %32, i32 0, i32 1
  store %struct.snd_pcm* %31, %struct.snd_pcm** %33, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %35 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %36 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %34, i32 %35, i32* @at73c213_playback_ops)
  %37 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %38 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %37, i32 0, i32 1
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %38, align 8
  %40 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %41 = load %struct.snd_at73c213*, %struct.snd_at73c213** %3, align 8
  %42 = getelementptr inbounds %struct.snd_at73c213, %struct.snd_at73c213* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %39, i32 %40, i32* %46, i32 65536, i32 65536)
  br label %48

48:                                               ; preds = %20, %19
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_6__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
