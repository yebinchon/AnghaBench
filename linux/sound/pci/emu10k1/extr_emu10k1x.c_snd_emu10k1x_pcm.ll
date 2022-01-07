; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1x.c_snd_emu10k1x_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_chmap_elem = type { i32 }
%struct.emu10k1x = type { i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.emu10k1x* }

@.str = private unnamed_addr constant [9 x i8] c"emu10k1x\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_emu10k1x_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_emu10k1x_capture_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"EMU10K1X Front\00", align 1
@snd_pcm_std_chmaps = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"EMU10K1X Rear\00", align 1
@surround_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"EMU10K1X Center/LFE\00", align 1
@clfe_map = common dso_local global %struct.snd_pcm_chmap_elem* null, align 8
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.emu10k1x*, i32)* @snd_emu10k1x_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1x_pcm(%struct.emu10k1x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.emu10k1x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca %struct.snd_pcm_chmap_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.emu10k1x* %0, %struct.emu10k1x** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.snd_pcm_chmap_elem* null, %struct.snd_pcm_chmap_elem** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %15 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @snd_pcm_new(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17, i32 1, i32 %18, %struct.snd_pcm** %6)
  store i32 %19, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %13
  %24 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %26 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %25, i32 0, i32 2
  store %struct.emu10k1x* %24, %struct.emu10k1x** %26, align 8
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %39 [
    i32 0, label %28
    i32 1, label %35
    i32 2, label %35
  ]

28:                                               ; preds = %23
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %31 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %29, i32 %30, i32* @snd_emu10k1x_playback_ops)
  %32 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %33 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %34 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %32, i32 %33, i32* @snd_emu10k1x_capture_ops)
  br label %39

35:                                               ; preds = %23, %23
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %36, i32 %37, i32* @snd_emu10k1x_playback_ops)
  br label %39

39:                                               ; preds = %23, %35, %28
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %41 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %61 [
    i32 0, label %43
    i32 1, label %49
    i32 2, label %55
  ]

43:                                               ; preds = %39
  %44 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %45 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @strcpy(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @snd_pcm_std_chmaps, align 8
  store %struct.snd_pcm_chmap_elem* %48, %struct.snd_pcm_chmap_elem** %7, align 8
  br label %61

49:                                               ; preds = %39
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %51 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strcpy(i32 %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @surround_map, align 8
  store %struct.snd_pcm_chmap_elem* %54, %struct.snd_pcm_chmap_elem** %7, align 8
  br label %61

55:                                               ; preds = %39
  %56 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %57 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @strcpy(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** @clfe_map, align 8
  store %struct.snd_pcm_chmap_elem* %60, %struct.snd_pcm_chmap_elem** %7, align 8
  br label %61

61:                                               ; preds = %39, %55, %49, %43
  %62 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %63 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %64 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %63, i32 0, i32 1
  store %struct.snd_pcm* %62, %struct.snd_pcm** %64, align 8
  %65 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %66 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %67 = load %struct.emu10k1x*, %struct.emu10k1x** %4, align 8
  %68 = getelementptr inbounds %struct.emu10k1x, %struct.emu10k1x* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @snd_dma_pci_data(i32 %69)
  %71 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %65, i32 %66, i32 %70, i32 32768, i32 32768)
  %72 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %73 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %74 = load %struct.snd_pcm_chmap_elem*, %struct.snd_pcm_chmap_elem** %7, align 8
  %75 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %72, i32 %73, %struct.snd_pcm_chmap_elem* %74, i32 2, i32 4, i32* null)
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %61, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i32, %struct.snd_pcm_chmap_elem*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
