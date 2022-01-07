; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_pcm_new.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via8233_pcm_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via82xx = type { i32, i32, i32, i32, %struct.TYPE_3__*, i32, %struct.snd_pcm**, %struct.TYPE_4__*, i64 }
%struct.TYPE_3__ = type { %struct.snd_pcm_chmap** }
%struct.snd_pcm_chmap = type { i32 }
%struct.snd_pcm = type { i32, %struct.via82xx* }
%struct.TYPE_4__ = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_via8233_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@snd_via8233_capture_ops = common dso_local global i32 0, align 4
@VIA_REG_CAPTURE_8233_STATUS = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV_SG = common dso_local global i32 0, align 4
@VIA_MAX_BUFSIZE = common dso_local global i32 0, align 4
@snd_pcm_std_chmaps = common dso_local global i32 0, align 4
@snd_via8233_multi_ops = common dso_local global i32 0, align 4
@VIA_REG_MULTPLAY_STATUS = common dso_local global i32 0, align 4
@snd_pcm_alt_chmaps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via82xx*)* @snd_via8233_pcm_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_via8233_pcm_new(%struct.via82xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via82xx*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca %struct.snd_pcm_chmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.via82xx* %0, %struct.via82xx** %3, align 8
  %8 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %9 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %8, i32 0, i32 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %11 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %10, i32 0, i32 0
  store i32 4, i32* %11, align 8
  %12 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %13 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %12, i32 0, i32 1
  store i32 5, i32* %13, align 4
  %14 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %15 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %14, i32 0, i32 2
  store i32 7, i32* %15, align 8
  %16 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %17 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %16, i32 0, i32 3
  store i32 855847731, i32* %17, align 4
  %18 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %19 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %18, i32 0, i32 7
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %22 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %21, i32 0, i32 7
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @snd_pcm_new(%struct.TYPE_4__* %20, i32 %25, i32 0, i32 4, i32 1, %struct.snd_pcm** %4)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %168

31:                                               ; preds = %1
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %33 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %34 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %32, i64 %33, i32* @snd_via8233_playback_ops)
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %36 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %37 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %35, i64 %36, i32* @snd_via8233_capture_ops)
  %38 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %39, i32 0, i32 1
  store %struct.via82xx* %38, %struct.via82xx** %40, align 8
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %42 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %45 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %44, i32 0, i32 7
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcpy(i32 %43, i32 %48)
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %51 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %52 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %51, i32 0, i32 6
  %53 = load %struct.snd_pcm**, %struct.snd_pcm*** %52, align 8
  %54 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %53, i64 0
  store %struct.snd_pcm* %50, %struct.snd_pcm** %54, align 8
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %65, %31
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 16, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @init_viadev(%struct.via82xx* %59, i32 %60, i32 %62, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %55

68:                                               ; preds = %55
  %69 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %70 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %71 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @VIA_REG_CAPTURE_8233_STATUS, align 4
  %74 = call i32 @init_viadev(%struct.via82xx* %69, i32 %72, i32 %73, i32 6, i32 1)
  %75 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %76 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %77 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %78 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @snd_dma_pci_data(i32 %79)
  %81 = load i32, i32* @VIA_MAX_BUFSIZE, align 4
  %82 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %75, i32 %76, i32 %80, i32 65536, i32 %81)
  %83 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %84 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %85 = load i32, i32* @snd_pcm_std_chmaps, align 4
  %86 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %83, i64 %84, i32 %85, i32 2, i32 0, %struct.snd_pcm_chmap** %5)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %68
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %2, align 4
  br label %168

91:                                               ; preds = %68
  %92 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %93 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %92, i32 0, i32 7
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %96 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %95, i32 0, i32 7
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @snd_pcm_new(%struct.TYPE_4__* %94, i32 %99, i32 1, i32 1, i32 1, %struct.snd_pcm** %4)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %168

105:                                              ; preds = %91
  %106 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %107 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %108 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %106, i64 %107, i32* @snd_via8233_multi_ops)
  %109 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %110 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %111 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %109, i64 %110, i32* @snd_via8233_capture_ops)
  %112 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %113 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %114 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %113, i32 0, i32 1
  store %struct.via82xx* %112, %struct.via82xx** %114, align 8
  %115 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %116 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %119 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %118, i32 0, i32 7
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @strcpy(i32 %117, i32 %122)
  %124 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %125 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %126 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %125, i32 0, i32 6
  %127 = load %struct.snd_pcm**, %struct.snd_pcm*** %126, align 8
  %128 = getelementptr inbounds %struct.snd_pcm*, %struct.snd_pcm** %127, i64 1
  store %struct.snd_pcm* %124, %struct.snd_pcm** %128, align 8
  %129 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %130 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %131 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @VIA_REG_MULTPLAY_STATUS, align 4
  %134 = call i32 @init_viadev(%struct.via82xx* %129, i32 %132, i32 %133, i32 4, i32 0)
  %135 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %136 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %137 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* @VIA_REG_CAPTURE_8233_STATUS, align 4
  %141 = add nsw i32 %140, 16
  %142 = call i32 @init_viadev(%struct.via82xx* %135, i32 %139, i32 %141, i32 7, i32 1)
  %143 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %144 = load i32, i32* @SNDRV_DMA_TYPE_DEV_SG, align 4
  %145 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %146 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @snd_dma_pci_data(i32 %147)
  %149 = load i32, i32* @VIA_MAX_BUFSIZE, align 4
  %150 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %143, i32 %144, i32 %148, i32 65536, i32 %149)
  %151 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %152 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %153 = load i32, i32* @snd_pcm_alt_chmaps, align 4
  %154 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %151, i64 %152, i32 %153, i32 6, i32 0, %struct.snd_pcm_chmap** %5)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %105
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %168

159:                                              ; preds = %105
  %160 = load %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %5, align 8
  %161 = load %struct.via82xx*, %struct.via82xx** %3, align 8
  %162 = getelementptr inbounds %struct.via82xx, %struct.via82xx* %161, i32 0, i32 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load %struct.snd_pcm_chmap**, %struct.snd_pcm_chmap*** %164, align 8
  %166 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %167 = getelementptr inbounds %struct.snd_pcm_chmap*, %struct.snd_pcm_chmap** %165, i64 %166
  store %struct.snd_pcm_chmap* %160, %struct.snd_pcm_chmap** %167, align 8
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %159, %157, %103, %89, %29
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_4__*, i32, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i64, i32*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @init_viadev(%struct.via82xx*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i64, i32, i32, i32, %struct.snd_pcm_chmap**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
