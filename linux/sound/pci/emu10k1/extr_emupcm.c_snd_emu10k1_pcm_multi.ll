; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_multi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i32, i64, %struct.snd_emu10k1* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [8 x i8] c"emu10k1\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_emu10k1_efx_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Multichannel Playback\00", align 1
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_pcm_multi(%struct.snd_emu10k1* %0, i32 %1) #0 {
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
  %13 = call i32 @snd_pcm_new(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %12, i32 1, i32 0, %struct.snd_pcm** %6)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 4
  store %struct.snd_emu10k1* %18, %struct.snd_emu10k1** %20, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i64 %22, i32* @snd_emu10k1_efx_playback_ops)
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 1
  store %struct.snd_pcm* %33, %struct.snd_pcm** %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %41, align 8
  store %struct.snd_pcm_substream* %42, %struct.snd_pcm_substream** %7, align 8
  br label %43

43:                                               ; preds = %54, %17
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %45 = icmp ne %struct.snd_pcm_substream* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %48 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %49 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %50 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @snd_dma_pci_data(i32 %51)
  %53 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %47, i32 %48, i32 %52, i32 65536, i32 65536)
  br label %54

54:                                               ; preds = %46
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %56, align 8
  store %struct.snd_pcm_substream* %57, %struct.snd_pcm_substream** %7, align 8
  br label %43

58:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
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
