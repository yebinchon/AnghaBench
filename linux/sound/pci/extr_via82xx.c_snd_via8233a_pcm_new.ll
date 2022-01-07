; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233a_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233a_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32, i32, i32, i32, i32, i32, %struct.snd_pcm**, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.snd_pcm = type { i32, %struct.via82xx* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.snd_pcm_chmap** }
%struct.snd_pcm_chmap = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_via8233_multi_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_via8233_capture_ops = common dso_local global i32 0, align 4
@VIA_REG_MULTPLAY_STATUS = common dso_local global i32 0, align 4
@VIA_REG_CAPTURE_8233_STATUS = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@VIA_MAX_BUFSIZE = common dso_local global i32 0, align 4
@snd_pcm_alt_chmaps = common dso_local global i32 0, align 4
@snd_via8233_playback_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*)* @snd_via8233a_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233a_pcm_new(%struct.via82xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via82xx*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_pcm_chmap*, align 8
  %6 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %3, align 8
  %7 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %8 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %10 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %12 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %11, i32 0, i32 2
  store i32 2, i32* %12, align 8
  %13 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %14 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %13, i32 0, i32 3
  store i32 3, i32* %14, align 4
  %15 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %16 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %15, i32 0, i32 4
  store i32 50540544, i32* %16, align 8
  %17 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %18 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %17, i32 0, i32 7
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %21 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %20, i32 0, i32 7
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_pcm_new(%struct.TYPE_3__* %19, i32 %24, i32 0, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %145

30:                                               ; preds = %1
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %32 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %33 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %31, i64 %32, i32* @snd_via8233_multi_ops)
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %35 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %36 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %34, i64 %35, i32* @snd_via8233_capture_ops)
  %37 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 1
  store %struct.via82xx* %37, %struct.via82xx** %39, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %44 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %43, i32 0, i32 7
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcpy(i32 %42, i32 %47)
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %50 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %51 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %50, i32 0, i32 6
  %52 = load %struct.snd_pcm**, %struct.snd_pcm*** %51, align 8
  %53 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %52, i64 0
  store %struct.snd_pcm* %49, %struct.snd_pcm** %53, align 8
  %54 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %55 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %56 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VIA_REG_MULTPLAY_STATUS, align 4
  %59 = call i32 @init_viadev(%struct.via82xx* %54, i32 %57, i32 %58, i32 4, i32 0)
  %60 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %61 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %62 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @VIA_REG_CAPTURE_8233_STATUS, align 4
  %65 = call i32 @init_viadev(%struct.via82xx* %60, i32 %63, i32 %64, i32 6, i32 1)
  %66 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %67 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %68 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %69 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @snd_dma_pci_data(i32 %70)
  %72 = load i32, i32* @VIA_MAX_BUFSIZE, align 4
  %73 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %66, i32 %67, i32 %71, i32 65536, i32 %72)
  %74 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %75 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %76 = load i32, i32* @snd_pcm_alt_chmaps, align 4
  %77 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %74, i64 %75, i32 %76, i32 6, i32 0, %struct.snd_pcm_chmap** %5)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %30
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %145

82:                                               ; preds = %30
  %83 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %5, align 8
  %84 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %85 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %84, i32 0, i32 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.snd_pcm_chmap**, %struct.snd_pcm_chmap*** %87, align 8
  %89 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %88, i64 %89
  store %struct.snd_pcm_chmap* %83, %struct.snd_pcm_chmap** %90, align 8
  %91 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %92 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %91, i32 0, i32 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = call i32 @ac97_can_spdif(%struct.TYPE_4__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %145

97:                                               ; preds = %82
  %98 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %99 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %98, i32 0, i32 7
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %102 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %101, i32 0, i32 7
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @snd_pcm_new(%struct.TYPE_3__* %100, i32 %105, i32 1, i32 1, i32 0, %struct.snd_pcm** %4)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %2, align 4
  br label %145

111:                                              ; preds = %97
  %112 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %113 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %114 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %112, i64 %113, i32* @snd_via8233_playback_ops)
  %115 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %116 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %117 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %116, i32 0, i32 1
  store %struct.via82xx* %115, %struct.via82xx** %117, align 8
  %118 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %119 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %122 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %121, i32 0, i32 7
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @strcpy(i32 %120, i32 %125)
  %127 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %128 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %129 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %128, i32 0, i32 6
  %130 = load %struct.snd_pcm**, %struct.snd_pcm*** %129, align 8
  %131 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %130, i64 1
  store %struct.snd_pcm* %127, %struct.snd_pcm** %131, align 8
  %132 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %133 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %134 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @init_viadev(%struct.via82xx* %132, i32 %135, i32 48, i32 3, i32 0)
  %137 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %138 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %139 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %140 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @snd_dma_pci_data(i32 %141)
  %143 = load i32, i32* @VIA_MAX_BUFSIZE, align 4
  %144 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %137, i32 %138, i32 %142, i32 65536, i32 %143)
  store i32 0, i32* %2, align 4
  br label %145

145:                                              ; preds = %111, %109, %96, %80, %28
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_3__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @init_viadev(%struct.via82xx*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i64, i32, i32, i32, %struct.snd_pcm_chmap**) #1

declare dso_local i32 @ac97_can_spdif(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
