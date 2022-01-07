; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_alsa_pcm_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctpcm.c_ct_alsa_pcm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_chmap_elem = type { i32 }
%struct.ct_atc = type { %struct.snd_pcm**, i32, %struct.TYPE_2__* }
%struct.snd_pcm = type { i32, i32, i64, %struct.ct_atc* }
%struct.TYPE_2__ = type { i32 }

@IEC958 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ctxfi\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"snd_pcm_new failed!! Err=%d\0A\00", align 1
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@ct_pcm_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@ct_pcm_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@snd_pcm_std_chmaps = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@surround_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@clfe_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@side_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ct_alsa_pcm_create(%struct.ct_atc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ct_atc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.snd_pcm*, align 8
  %9 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @IEC958, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 256
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 130, %19
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %24 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @snd_pcm_new(%struct.TYPE_2__* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, %struct.snd_pcm** %8)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %34 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %94

41:                                               ; preds = %3
  %42 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %44 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %43, i32 0, i32 3
  store %struct.ct_atc* %42, %struct.ct_atc** %44, align 8
  %45 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %46 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %48 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %49 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %51 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @strlcpy(i32 %52, i8* %53, i32 4)
  %55 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %56 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %57 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %55, i32 %56, i32* @ct_pcm_playback_ops)
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 130, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %62 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %63 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %61, i32 %62, i32* @ct_pcm_capture_ops)
  br label %64

64:                                               ; preds = %60, %41
  %65 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %66 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %67 = load %struct.ct_atc*, %struct.ct_atc** %5, align 8
  %68 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @snd_dma_pci_data(i32 %69)
  %71 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %65, i32 %66, i32 %70, i32 131072, i32 131072)
  store i32 2, i32* %10, align 4
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %81 [
    i32 130, label %73
    i32 128, label %75
    i32 131, label %77
    i32 129, label %79
  ]

73:                                               ; preds = %64
  store i32 8, i32* %10, align 4
  %74 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @snd_pcm_std_chmaps, align 8
  store %struct.snd_pcm_chmap_elem* %74, %struct.snd_pcm_chmap_elem** %9, align 8
  br label %83

75:                                               ; preds = %64
  %76 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @surround_map, align 8
  store %struct.snd_pcm_chmap_elem* %76, %struct.snd_pcm_chmap_elem** %9, align 8
  br label %83

77:                                               ; preds = %64
  %78 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @clfe_map, align 8
  store %struct.snd_pcm_chmap_elem* %78, %struct.snd_pcm_chmap_elem** %9, align 8
  br label %83

79:                                               ; preds = %64
  %80 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @side_map, align 8
  store %struct.snd_pcm_chmap_elem* %80, %struct.snd_pcm_chmap_elem** %9, align 8
  br label %83

81:                                               ; preds = %64
  %82 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @snd_pcm_std_chmaps, align 8
  store %struct.snd_pcm_chmap_elem* %82, %struct.snd_pcm_chmap_elem** %9, align 8
  br label %83

83:                                               ; preds = %81, %79, %77, %75, %73
  %84 = load %struct.snd_pcm*, %struct.snd_pcm** %8, align 8
  %85 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %86 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %84, i32 %85, %struct.snd_pcm_chmap_elem* %86, i32 %87, i32 0, i32* null)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %91, %32
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i32, %struct.snd_pcm_chmap_elem*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
