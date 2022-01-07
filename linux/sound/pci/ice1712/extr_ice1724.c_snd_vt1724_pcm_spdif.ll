; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_spdif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.snd_pcm*, i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.snd_pcm = type { i32, i64, %struct.snd_ice1712* }
%struct.TYPE_2__ = type { i32* }

@ICE_EEP2_SPDIF = common dso_local global i64 0, align 8
@VT1724_CFG_SPDIF_OUT_INT = common dso_local global i32 0, align 4
@VT1724_CFG_SPDIF_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"ICE1724 Secondary\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ICE1724 IEC958\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_vt1724_playback_spdif_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_vt1724_capture_spdif_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @snd_vt1724_pcm_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pcm_spdif(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @ICE_EEP2_SPDIF, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VT1724_CFG_SPDIF_OUT_INT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %15, %2
  store i32 1, i32* %8, align 4
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %30

29:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %32 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @ICE_EEP2_SPDIF, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VT1724_CFG_SPDIF_IN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35, %30
  store i32 1, i32* %9, align 4
  %47 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %48 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %50

49:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %117

57:                                               ; preds = %53, %50
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %64 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %69

68:                                               ; preds = %62
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @snd_pcm_new(i32 %72, i8* %73, i32 %74, i32 %75, i32 %76, %struct.snd_pcm** %7)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %3, align 4
  br label %117

82:                                               ; preds = %69
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %87 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %88 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %86, i32 %87, i32* @snd_vt1724_playback_spdif_ops)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %94 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %95 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %93, i32 %94, i32* @snd_vt1724_capture_spdif_ops)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %98 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %99 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %98, i32 0, i32 2
  store %struct.snd_ice1712* %97, %struct.snd_ice1712** %99, align 8
  %100 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %101 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %103 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @strcpy(i32 %104, i8* %105)
  %107 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %108 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %109 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %110 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @snd_dma_pci_data(i32 %111)
  %113 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %107, i32 %108, i32 %112, i32 262144, i32 262144)
  %114 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %115 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %116 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %115, i32 0, i32 1
  store %struct.snd_pcm* %114, %struct.snd_pcm** %116, align 8
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %96, %80, %56
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
