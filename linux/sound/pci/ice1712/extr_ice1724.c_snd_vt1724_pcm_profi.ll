; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_profi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_profi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { %struct.snd_pcm*, i32, i32, %struct.TYPE_2__ }
%struct.snd_pcm = type { i32, i64, %struct.snd_ice1712* }
%struct.TYPE_2__ = type { i32* }

@ICE_EEP2_SYSCONF = common dso_local global i64 0, align 8
@VT1724_CFG_ADC_MASK = common dso_local global i32 0, align 4
@VT1724_CFG_ADC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ICE1724\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_vt1724_playback_pro_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_vt1724_capture_pro_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @snd_vt1724_pcm_profi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pcm_profi(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @ICE_EEP2_SYSCONF, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VT1724_CFG_ADC_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @VT1724_CFG_ADC_NONE, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

21:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @snd_pcm_new(i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26, i32 1, i32 %27, %struct.snd_pcm** %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %63

33:                                               ; preds = %22
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %36 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %34, i32 %35, i32* @snd_vt1724_playback_pro_ops)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %41 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %42 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %40, i32 %41, i32* @snd_vt1724_capture_pro_ops)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %45 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %46 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %45, i32 0, i32 2
  store %struct.snd_ice1712* %44, %struct.snd_ice1712** %46, align 8
  %47 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %48 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %50 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @strcpy(i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %54 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %55 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @snd_dma_pci_data(i32 %57)
  %59 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %53, i32 %54, i32 %58, i32 262144, i32 262144)
  %60 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %61 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %62 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %61, i32 0, i32 0
  store %struct.snd_pcm* %60, %struct.snd_pcm** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %43, %31
  %64 = load i32, i32* %3, align 4
  ret i32 %64
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
