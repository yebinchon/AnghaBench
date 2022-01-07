; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64, i32, %struct.TYPE_3__, %struct.snd_pcm*, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.snd_pcm = type { %struct.TYPE_4__*, i32, i32, i64, %struct.snd_trident* }
%struct.TYPE_4__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [14 x i8] c"trident_dx_nx\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_trident_nx_playback_ops = common dso_local global i32 0, align 4
@snd_trident_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@TRIDENT_DEVICE_ID_SI7018 = common dso_local global i64 0, align 8
@snd_trident_capture_ops = common dso_local global i32 0, align 4
@snd_trident_si7018_capture_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_SUBCLASS_GENERIC_MIX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Trident 4DWave\00", align 1
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_trident_pcm(%struct.snd_trident* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %10 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %14 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @snd_pcm_new(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 1, %struct.snd_pcm** %6)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %111

20:                                               ; preds = %2
  %21 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %23 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %22, i32 0, i32 4
  store %struct.snd_trident* %21, %struct.snd_trident** %23, align 8
  %24 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %25 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %31 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %32 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %30, i64 %31, i32* @snd_trident_nx_playback_ops)
  br label %37

33:                                               ; preds = %20
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %36 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %34, i64 %35, i32* @snd_trident_playback_ops)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %39 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %40 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %41 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TRIDENT_DEVICE_ID_SI7018, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32* @snd_trident_capture_ops, i32* @snd_trident_si7018_capture_ops
  %47 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %38, i64 %39, i32* %46)
  %48 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %49 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @SNDRV_PCM_SUBCLASS_GENERIC_MIX, align 4
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %54 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strcpy(i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %58 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %59 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %58, i32 0, i32 3
  store %struct.snd_pcm* %57, %struct.snd_pcm** %59, align 8
  %60 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %61 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %37
  %66 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %67 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %71, align 8
  store %struct.snd_pcm_substream* %72, %struct.snd_pcm_substream** %8, align 8
  br label %73

73:                                               ; preds = %84, %65
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %75 = icmp ne %struct.snd_pcm_substream* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %78 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %79 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %80 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @snd_dma_pci_data(i32 %81)
  %83 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %77, i32 %78, i32 %82, i32 65536, i32 131072)
  br label %84

84:                                               ; preds = %76
  %85 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %86 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %85, i32 0, i32 0
  %87 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %86, align 8
  store %struct.snd_pcm_substream* %87, %struct.snd_pcm_substream** %8, align 8
  br label %73

88:                                               ; preds = %73
  %89 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %94, align 8
  %96 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %97 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %98 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @snd_dma_pci_data(i32 %99)
  %101 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %95, i32 %96, i32 %100, i32 65536, i32 131072)
  br label %110

102:                                              ; preds = %37
  %103 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %104 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %105 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %106 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @snd_dma_pci_data(i32 %107)
  %109 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %103, i32 %104, i32 %108, i32 65536, i32 131072)
  br label %110

110:                                              ; preds = %102, %88
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
