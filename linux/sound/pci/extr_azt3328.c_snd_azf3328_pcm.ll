; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_azt3328.c_snd_azf3328_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_azf3328 = type { i32, %struct.snd_pcm**, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i64, %struct.snd_azf3328* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"AZF3328 DSP\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_azf3328_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_azf3328_capture_ops = common dso_local global i32 0, align 4
@AZF_CODEC_PLAYBACK = common dso_local global i64 0, align 8
@AZF_CODEC_CAPTURE = common dso_local global i64 0, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"AZF3328 I2S OUT\00", align 1
@snd_azf3328_i2s_out_ops = common dso_local global i32 0, align 4
@AZF_CODEC_I2S_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_azf3328*)* @snd_azf3328_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_azf3328_pcm(%struct.snd_azf3328* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_azf3328*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_azf3328* %0, %struct.snd_azf3328** %3, align 8
  %6 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %7 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @snd_pcm_new(%struct.TYPE_2__* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %16 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %17 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %15, i32 %16, i32* @snd_azf3328_playback_ops)
  %18 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %19 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %20 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %18, i32 %19, i32* @snd_azf3328_capture_ops)
  %21 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 2
  store %struct.snd_azf3328* %21, %struct.snd_azf3328** %23, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %30 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %28, i32 %33)
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %36 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %37 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %36, i32 0, i32 1
  %38 = load %struct.snd_pcm**, %struct.snd_pcm*** %37, align 8
  %39 = load i64, i64* @AZF_CODEC_PLAYBACK, align 8
  %40 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %38, i64 %39
  store %struct.snd_pcm* %35, %struct.snd_pcm** %40, align 8
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %42 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %43 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %42, i32 0, i32 1
  %44 = load %struct.snd_pcm**, %struct.snd_pcm*** %43, align 8
  %45 = load i64, i64* @AZF_CODEC_CAPTURE, align 8
  %46 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %44, i64 %45
  store %struct.snd_pcm* %41, %struct.snd_pcm** %46, align 8
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %48 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %49 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %50 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snd_dma_pci_data(i32 %51)
  %53 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %47, i32 %48, i32 %52, i32 65536, i32 65536)
  %54 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %55 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @snd_pcm_new(%struct.TYPE_2__* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 1, i32 0, %struct.snd_pcm** %4)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %14
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %93

62:                                               ; preds = %14
  %63 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %64 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %65 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %63, i32 %64, i32* @snd_azf3328_i2s_out_ops)
  %66 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %67 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %68 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %67, i32 0, i32 2
  store %struct.snd_azf3328* %66, %struct.snd_azf3328** %68, align 8
  %69 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %70 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %72 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %75 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @strcpy(i32 %73, i32 %78)
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %81 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %82 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %81, i32 0, i32 1
  %83 = load %struct.snd_pcm**, %struct.snd_pcm*** %82, align 8
  %84 = load i64, i64* @AZF_CODEC_I2S_OUT, align 8
  %85 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %83, i64 %84
  store %struct.snd_pcm* %80, %struct.snd_pcm** %85, align 8
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %87 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %88 = load %struct.snd_azf3328*, %struct.snd_azf3328** %3, align 8
  %89 = getelementptr inbounds %struct.snd_azf3328, %struct.snd_azf3328* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @snd_dma_pci_data(i32 %90)
  %92 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %86, i32 %87, i32 %91, i32 65536, i32 65536)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %62, %60, %12
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
