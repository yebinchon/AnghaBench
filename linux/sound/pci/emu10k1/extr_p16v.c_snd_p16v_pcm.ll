; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i32, i64, %struct.snd_emu10k1* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [5 x i8] c"p16v\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_p16v_playback_front_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_p16v_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_p16v_pcm(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %12 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %14 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @snd_pcm_new(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16, i32 1, i32 %17, %struct.snd_pcm** %6)
  store i32 %18, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %90

22:                                               ; preds = %2
  %23 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 4
  store %struct.snd_emu10k1* %23, %struct.snd_emu10k1** %25, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %27 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %28 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %26, i64 %27, i32* @snd_p16v_playback_front_ops)
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %31 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %29, i64 %30, i32* @snd_p16v_capture_ops)
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %33 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %42, i32 0, i32 2
  store %struct.snd_pcm* %41, %struct.snd_pcm** %43, align 8
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %49, align 8
  store %struct.snd_pcm_substream* %50, %struct.snd_pcm_substream** %7, align 8
  br label %51

51:                                               ; preds = %62, %22
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %53 = icmp ne %struct.snd_pcm_substream* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %56 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %57 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @snd_dma_pci_data(i32 %59)
  %61 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %55, i32 %56, i32 %60, i32 523776, i32 523776)
  br label %62

62:                                               ; preds = %54
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %63, i32 0, i32 0
  %65 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %64, align 8
  store %struct.snd_pcm_substream* %65, %struct.snd_pcm_substream** %7, align 8
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %72, align 8
  store %struct.snd_pcm_substream* %73, %struct.snd_pcm_substream** %7, align 8
  br label %74

74:                                               ; preds = %85, %66
  %75 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %76 = icmp ne %struct.snd_pcm_substream* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %79 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %80 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %81 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @snd_dma_pci_data(i32 %82)
  %84 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %78, i32 %79, i32 %83, i32 65472, i32 65472)
  br label %85

85:                                               ; preds = %77
  %86 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %86, i32 0, i32 0
  %88 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %87, align 8
  store %struct.snd_pcm_substream* %88, %struct.snd_pcm_substream** %7, align 8
  br label %74

89:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
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
