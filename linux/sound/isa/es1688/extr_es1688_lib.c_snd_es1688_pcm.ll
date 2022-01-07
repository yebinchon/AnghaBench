; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_es1688 = type { %struct.snd_pcm* }
%struct.snd_pcm = type { i32, i32, %struct.snd_es1688* }

@.str = private unnamed_addr constant [7 x i8] c"ESx688\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_es1688_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_es1688_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_INFO_HALF_DUPLEX = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_es1688_pcm(%struct.snd_card* %0, %struct.snd_es1688* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_es1688*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %5, align 8
  store %struct.snd_es1688* %1, %struct.snd_es1688** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @snd_pcm_new(%struct.snd_card* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_pcm** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %45

17:                                               ; preds = %3
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %18, i32 %19, i32* @snd_es1688_playback_ops)
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %22 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i32 %22, i32* @snd_es1688_capture_ops)
  %24 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 2
  store %struct.snd_es1688* %24, %struct.snd_es1688** %26, align 8
  %27 = load i32, i32* @SNDRV_PCM_INFO_HALF_DUPLEX, align 4
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %29 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %31 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %34 = call i32 @snd_es1688_chip_id(%struct.snd_es1688* %33)
  %35 = call i32 @strcpy(i32 %32, i32 %34)
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %37 = load %struct.snd_es1688*, %struct.snd_es1688** %6, align 8
  %38 = getelementptr inbounds %struct.snd_es1688, %struct.snd_es1688* %37, i32 0, i32 0
  store %struct.snd_pcm* %36, %struct.snd_pcm** %38, align 8
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %40 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %41 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %42 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %39, i32 %40, i32 %43, i32 65536, i32 65536)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %17, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_es1688_chip_id(%struct.snd_es1688*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
