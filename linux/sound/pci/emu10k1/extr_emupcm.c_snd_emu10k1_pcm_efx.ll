; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_efx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_pcm_efx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32*, i32, i32, %struct.TYPE_3__*, i64, %struct.snd_pcm* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm = type { i32, i64, %struct.snd_emu10k1* }
%struct.snd_kcontrol = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"emu10k1 efx\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_emu10k1_fx8010_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_emu10k1_capture_efx_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Multichannel Capture/PT Playback\00", align 1
@snd_emu10k1_pcm_efx_voices_mask = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_pcm_efx(%struct.snd_emu10k1* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_kcontrol*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %10 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @snd_pcm_new(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12, i32 8, i32 1, %struct.snd_pcm** %6)
  store i32 %13, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 2
  store %struct.snd_emu10k1* %18, %struct.snd_emu10k1** %20, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %23 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %21, i32 %22, i32* @snd_emu10k1_fx8010_playback_ops)
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %25 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %26 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %24, i32 %25, i32* @snd_emu10k1_capture_efx_ops)
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %35 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %34, i32 0, i32 5
  store %struct.snd_pcm* %33, %struct.snd_pcm** %35, align 8
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %17
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %42 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %53 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 -1, i32* %55, align 4
  br label %61

56:                                               ; preds = %40
  %57 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %58 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 65535, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %71

62:                                               ; preds = %17
  %63 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %64 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 -65536, i32* %66, align 4
  %67 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %68 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %61
  %72 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %73 = call %struct.snd_kcontrol* @snd_ctl_new1(i32* @snd_emu10k1_pcm_efx_voices_mask, %struct.snd_emu10k1* %72)
  store %struct.snd_kcontrol* %73, %struct.snd_kcontrol** %7, align 8
  %74 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %75 = icmp ne %struct.snd_kcontrol* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %101

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %82 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %85 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %7, align 8
  %88 = call i32 @snd_ctl_add(i32 %86, %struct.snd_kcontrol* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %101

93:                                               ; preds = %79
  %94 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %95 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %96 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_dma_pci_data(i32 %98)
  %100 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %94, i32 %95, i32 %99, i32 65536, i32 65536)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %93, %91, %76, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(i32*, %struct.snd_emu10k1*) #1

declare dso_local i32 @snd_ctl_add(i32, %struct.snd_kcontrol*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
