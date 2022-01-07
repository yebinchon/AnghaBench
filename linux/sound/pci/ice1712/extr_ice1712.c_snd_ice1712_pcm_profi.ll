; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pcm_profi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_pcm_profi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i64, %struct.snd_pcm*, i32, i32 }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i64, %struct.snd_ice1712* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ICE1712 multi\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_ice1712_playback_pro_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_ice1712_capture_pro_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @snd_ice1712_pcm_profi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_pcm_profi(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %20 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %18, i32 %19, i32* @snd_ice1712_playback_pro_ops)
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i32 %22, i32* @snd_ice1712_capture_pro_ops)
  %24 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 3
  store %struct.snd_ice1712* %24, %struct.snd_ice1712** %26, align 8
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @snd_dma_pci_data(i32 %37)
  %39 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %33, i32 %34, i32 %38, i32 262144, i32 262144)
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %41, i32 0, i32 1
  store %struct.snd_pcm* %40, %struct.snd_pcm** %42, align 8
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %17
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_cs8427_iec958_build(i64 %50, i32 %56, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %72

68:                                               ; preds = %47
  br label %69

69:                                               ; preds = %68, %17
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %71 = call i32 @snd_ice1712_build_pro_mixer(%struct.snd_ice1712* %70)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %66, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_cs8427_iec958_build(i64, i32, i32) #1

declare dso_local i32 @snd_ice1712_build_pro_mixer(%struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
