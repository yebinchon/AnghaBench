; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx6464es.c_lx_pcm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__, %struct.snd_pcm*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm = type { i32, i32, i64, %struct.lx6464es* }

@MAX_STREAM_BUFFER = common dso_local global i32 0, align 4
@MICROBLAZE_IBL_MAX = common dso_local global i32 0, align 4
@card_name = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@lx_ops_playback = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@lx_ops_capture = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*)* @lx_pcm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_pcm_create(%struct.lx6464es* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lx6464es*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %3, align 8
  %7 = load i32, i32* @MAX_STREAM_BUFFER, align 4
  %8 = mul nsw i32 192, %7
  %9 = load i32, i32* @MICROBLAZE_IBL_MAX, align 4
  %10 = mul nsw i32 %8, %9
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @PAGE_ALIGN(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %15 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @card_name, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @snd_pcm_new(i32 %16, i8* %18, i32 0, i32 1, i32 1, %struct.snd_pcm** %5)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %1
  %25 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 3
  store %struct.lx6464es* %25, %struct.lx6464es** %27, align 8
  %28 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %28, i32 %29, i32* @lx_ops_playback)
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %32 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %33 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %31, i32 %32, i32* @lx_ops_capture)
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %37 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @card_name, align 8
  %42 = call i32 @strcpy(i32 %40, i64 %41)
  %43 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %44 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %45 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %46 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snd_dma_pci_data(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %43, i32 %44, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.snd_pcm*, %struct.snd_pcm** %5, align 8
  %53 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %54 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %53, i32 0, i32 1
  store %struct.snd_pcm* %52, %struct.snd_pcm** %54, align 8
  %55 = load %struct.lx6464es*, %struct.lx6464es** %3, align 8
  %56 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %24, %22
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i64) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
