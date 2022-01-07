; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_chmap_elem = type { i32 }
%struct.snd_ca0106 = type { %struct.snd_pcm**, i32, i32 }
%struct.snd_pcm = type { %struct.TYPE_2__*, i32, i64, %struct.snd_ca0106* }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_substream* }

@.str = private unnamed_addr constant [7 x i8] c"ca0106\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_ca0106_playback_front_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_ca0106_capture_0_ops = common dso_local global i32 0, align 4
@snd_pcm_std_chmaps = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@snd_ca0106_playback_rear_ops = common dso_local global i32 0, align 4
@snd_ca0106_capture_1_ops = common dso_local global i32 0, align 4
@surround_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@snd_ca0106_playback_center_lfe_ops = common dso_local global i32 0, align 4
@snd_ca0106_capture_2_ops = common dso_local global i32 0, align 4
@clfe_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@snd_ca0106_playback_unknown_ops = common dso_local global i32 0, align 4
@snd_ca0106_capture_3_ops = common dso_local global i32 0, align 4
@side_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"CA0106\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ca0106*, i32)* @snd_ca0106_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ca0106_pcm(%struct.snd_ca0106* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ca0106*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_pcm_chmap_elem* null, %struct.snd_pcm_chmap_elem** %8, align 8
  %10 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @snd_pcm_new(i32 %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %125

19:                                               ; preds = %2
  %20 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %22 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %21, i32 0, i32 3
  store %struct.snd_ca0106* %20, %struct.snd_ca0106** %22, align 8
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %56 [
    i32 0, label %24
    i32 1, label %32
    i32 2, label %40
    i32 3, label %48
  ]

24:                                               ; preds = %19
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i64 %26, i32* @snd_ca0106_playback_front_ops)
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %29 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i64 %29, i32* @snd_ca0106_capture_0_ops)
  %31 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @snd_pcm_std_chmaps, align 8
  store %struct.snd_pcm_chmap_elem* %31, %struct.snd_pcm_chmap_elem** %8, align 8
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %35 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %33, i64 %34, i32* @snd_ca0106_playback_rear_ops)
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %36, i64 %37, i32* @snd_ca0106_capture_1_ops)
  %39 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @surround_map, align 8
  store %struct.snd_pcm_chmap_elem* %39, %struct.snd_pcm_chmap_elem** %8, align 8
  br label %56

40:                                               ; preds = %19
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %43 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %41, i64 %42, i32* @snd_ca0106_playback_center_lfe_ops)
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %45 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %46 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %44, i64 %45, i32* @snd_ca0106_capture_2_ops)
  %47 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @clfe_map, align 8
  store %struct.snd_pcm_chmap_elem* %47, %struct.snd_pcm_chmap_elem** %8, align 8
  br label %56

48:                                               ; preds = %19
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %50 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %51 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %49, i64 %50, i32* @snd_ca0106_playback_unknown_ops)
  %52 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %53 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %54 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %52, i64 %53, i32* @snd_ca0106_capture_3_ops)
  %55 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @side_map, align 8
  store %struct.snd_pcm_chmap_elem* %55, %struct.snd_pcm_chmap_elem** %8, align 8
  br label %56

56:                                               ; preds = %19, %48, %40, %32, %24
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %58 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %60 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strcpy(i32 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %64 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %68, align 8
  store %struct.snd_pcm_substream* %69, %struct.snd_pcm_substream** %7, align 8
  br label %70

70:                                               ; preds = %81, %56
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %72 = icmp ne %struct.snd_pcm_substream* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %75 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %76 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %77 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @snd_dma_pci_data(i32 %78)
  %80 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %74, i32 %75, i32 %79, i32 65536, i32 65536)
  br label %81

81:                                               ; preds = %73
  %82 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %82, i32 0, i32 0
  %84 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %83, align 8
  store %struct.snd_pcm_substream* %84, %struct.snd_pcm_substream** %7, align 8
  br label %70

85:                                               ; preds = %70
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %87 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %91, align 8
  store %struct.snd_pcm_substream* %92, %struct.snd_pcm_substream** %7, align 8
  br label %93

93:                                               ; preds = %104, %85
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %95 = icmp ne %struct.snd_pcm_substream* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %98 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %99 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %100 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @snd_dma_pci_data(i32 %101)
  %103 = call i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream* %97, i32 %98, i32 %102, i32 65536, i32 65536)
  br label %104

104:                                              ; preds = %96
  %105 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %106 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %105, i32 0, i32 0
  %107 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %106, align 8
  store %struct.snd_pcm_substream* %107, %struct.snd_pcm_substream** %7, align 8
  br label %93

108:                                              ; preds = %93
  %109 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %110 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %111 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %8, align 8
  %112 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %109, i64 %110, %struct.snd_pcm_chmap_elem* %111, i32 2, i32 4, i32* null)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %3, align 4
  br label %125

117:                                              ; preds = %108
  %118 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %119 = load %struct.snd_ca0106*, %struct.snd_ca0106** %4, align 8
  %120 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %119, i32 0, i32 0
  %121 = load %struct.snd_pcm**, %struct.snd_pcm*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %121, i64 %123
  store %struct.snd_pcm* %118, %struct.snd_pcm** %124, align 8
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %117, %115, %17
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages(%struct.snd_pcm_substream*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i64, %struct.snd_pcm_chmap_elem*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
