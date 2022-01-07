; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_fm801.c_snd_fm801_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm801 = type { i64, %struct.snd_pcm*, i32, i32 }
%struct.snd_pcm = type { i32, i64, %struct.fm801* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"FM801\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_fm801_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_fm801_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@snd_pcm_alt_chmaps = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm801*, i32)* @snd_fm801_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_fm801_pcm(%struct.fm801* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fm801*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.snd_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.fm801* %0, %struct.fm801** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fm801*, %struct.fm801** %4, align 8
  %10 = getelementptr inbounds %struct.fm801, %struct.fm801* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pci_dev* @to_pci_dev(i32 %11)
  store %struct.pci_dev* %12, %struct.pci_dev** %6, align 8
  %13 = load %struct.fm801*, %struct.fm801** %4, align 8
  %14 = getelementptr inbounds %struct.fm801, %struct.fm801* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snd_pcm_new(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16, i32 1, i32 1, %struct.snd_pcm** %7)
  store i32 %17, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %23 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %24 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %22, i32 %23, i32* @snd_fm801_playback_ops)
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %26 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %27 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %25, i32 %26, i32* @snd_fm801_capture_ops)
  %28 = load %struct.fm801*, %struct.fm801** %4, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 2
  store %struct.fm801* %28, %struct.fm801** %30, align 8
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %32 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %34 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @strcpy(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %38 = load %struct.fm801*, %struct.fm801** %4, align 8
  %39 = getelementptr inbounds %struct.fm801, %struct.fm801* %38, i32 0, i32 1
  store %struct.snd_pcm* %37, %struct.snd_pcm** %39, align 8
  %40 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %41 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %43 = call i32 @snd_dma_pci_data(%struct.pci_dev* %42)
  %44 = load %struct.fm801*, %struct.fm801** %4, align 8
  %45 = getelementptr inbounds %struct.fm801, %struct.fm801* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 131072, i32 65536
  %50 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %40, i32 %41, i32 %43, i32 %49, i32 131072)
  %51 = load %struct.snd_pcm*, %struct.snd_pcm** %7, align 8
  %52 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %53 = load i32, i32* @snd_pcm_alt_chmaps, align 4
  %54 = load %struct.fm801*, %struct.fm801** %4, align 8
  %55 = getelementptr inbounds %struct.fm801, %struct.fm801* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 6, i32 2
  %60 = call i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm* %51, i32 %52, i32 %53, i32 %59, i32 0, i32* null)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %21, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_pci_data(%struct.pci_dev*) #1

declare dso_local i32 @snd_pcm_add_chmap_ctls(%struct.snd_pcm*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
