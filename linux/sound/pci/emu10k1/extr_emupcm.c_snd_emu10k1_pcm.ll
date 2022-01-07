; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i32, i64, %struct.snd_emu10k1* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [8 x i8] c"emu10k1\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_emu10k1_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_emu10k1_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"ADC Capture/Standard PCM Playback\00", align 1
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_pcm(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @snd_pcm_new(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i32 32, i32 1, %struct.snd_pcm** %6)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 4
  store %struct.snd_emu10k1* %18, %struct.snd_emu10k1** %20, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i64 %22, i32* @snd_emu10k1_playback_ops)
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %25 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %26 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %24, i64 %25, i32* @snd_emu10k1_capture_ops)
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %31 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @strcpy(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %38 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %37, i32 0, i32 1
  store %struct.snd_pcm* %36, %struct.snd_pcm** %38, align 8
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %40 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %44, align 8
  store %struct.snd_pcm_substream* %45, %struct.snd_pcm_substream** %7, align 8
  br label %46

46:                                               ; preds = %57, %17
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %48 = icmp ne %struct.snd_pcm_substream* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %51 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @snd_dma_pci_data(i32 %54)
  %56 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %50, i32 %51, i32 %55, i32 65536, i32 65536)
  br label %57

57:                                               ; preds = %49
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %59, align 8
  store %struct.snd_pcm_substream* %60, %struct.snd_pcm_substream** %7, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %63 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %67, align 8
  store %struct.snd_pcm_substream* %68, %struct.snd_pcm_substream** %7, align 8
  br label %69

69:                                               ; preds = %80, %61
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %71 = icmp ne %struct.snd_pcm_substream* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %74 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %75 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %76 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @snd_dma_pci_data(i32 %77)
  %79 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %73, i32 %74, i32 %78, i32 65536, i32 65536)
  br label %80

80:                                               ; preds = %72
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %81, i32 0, i32 0
  %83 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %82, align 8
  store %struct.snd_pcm_substream* %83, %struct.snd_pcm_substream** %7, align 8
  br label %69

84:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %15
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
