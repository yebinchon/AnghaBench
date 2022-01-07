; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_foldback_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/trident/extr_trident_main.c_snd_trident_foldback_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_trident = type { i64, i32, %struct.TYPE_4__, %struct.snd_pcm*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.snd_pcm = type { %struct.TYPE_3__*, i32, i64, %struct.snd_trident* }
%struct.TYPE_3__ = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_substream* }

@TRIDENT_DEVICE_ID_NX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"trident_dx_nx\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_trident_nx_foldback_ops = common dso_local global i32 0, align 4
@snd_trident_foldback_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Trident 4DWave\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Front Mixer\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Reverb Mixer\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Chorus Mixer\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Second AC'97 ADC\00", align 1
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_trident_foldback_pcm(%struct.snd_trident* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_trident*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_pcm_substream*, align 8
  store %struct.snd_trident* %0, %struct.snd_trident** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 3, i32* %8, align 4
  %10 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %11 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRIDENT_DEVICE_ID_NX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %18 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @snd_pcm_new(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %20, i32 0, i32 %21, %struct.snd_pcm** %6)
  store i32 %22, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %111

26:                                               ; preds = %16
  %27 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %29 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %28, i32 0, i32 3
  store %struct.snd_trident* %27, %struct.snd_trident** %29, align 8
  %30 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %31 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %36, i64 %37, i32* @snd_trident_nx_foldback_ops)
  br label %43

39:                                               ; preds = %26
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %41 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %42 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %40, i64 %41, i32* @snd_trident_foldback_ops)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %47 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @strcpy(i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %55, align 8
  store %struct.snd_pcm_substream* %56, %struct.snd_pcm_substream** %9, align 8
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %58 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @strcpy(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %62 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %61, i32 0, i32 1
  %63 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %62, align 8
  store %struct.snd_pcm_substream* %63, %struct.snd_pcm_substream** %9, align 8
  %64 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %65 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strcpy(i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %69 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %68, i32 0, i32 1
  %70 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %69, align 8
  store %struct.snd_pcm_substream* %70, %struct.snd_pcm_substream** %9, align 8
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %72 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @strcpy(i32 %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 4
  br i1 %76, label %77, label %85

77:                                               ; preds = %43
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %79 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %78, i32 0, i32 1
  %80 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %79, align 8
  store %struct.snd_pcm_substream* %80, %struct.snd_pcm_substream** %9, align 8
  %81 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %82 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @strcpy(i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %85

85:                                               ; preds = %77, %43
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %87 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %88 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %87, i32 0, i32 3
  store %struct.snd_pcm* %86, %struct.snd_pcm** %88, align 8
  %89 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %90 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %85
  %95 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %96 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %97 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %98 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @snd_dma_pci_data(i32 %99)
  %101 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %95, i32 %96, i32 %100, i32 0, i32 131072)
  br label %110

102:                                              ; preds = %85
  %103 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %104 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %105 = load %struct.snd_trident*, %struct.snd_trident** %4, align 8
  %106 = getelementptr inbounds %struct.snd_trident, %struct.snd_trident* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @snd_dma_pci_data(i32 %107)
  %109 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %103, i32 %104, i32 %108, i32 65536, i32 131072)
  br label %110

110:                                              ; preds = %102, %94
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %24
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
