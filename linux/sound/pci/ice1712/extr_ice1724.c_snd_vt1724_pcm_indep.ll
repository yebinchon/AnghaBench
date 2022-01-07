; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_indep.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_pcm_indep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, %struct.snd_pcm*, i32, i32 }
%struct.snd_pcm = type { i32, i64, %struct.snd_ice1712* }

@.str = private unnamed_addr constant [18 x i8] c"ICE1724 Surrounds\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_vt1724_playback_indep_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ICE1724 Surround PCM\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @snd_vt1724_pcm_indep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_vt1724_pcm_indep(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 2
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %19 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @snd_pcm_new(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 0, %struct.snd_pcm** %6)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %17
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %30 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %31 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %29, i32 %30, i32* @snd_vt1724_playback_indep_ops)
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %34 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %33, i32 0, i32 2
  store %struct.snd_ice1712* %32, %struct.snd_ice1712** %34, align 8
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %36 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %38 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcpy(i32 %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @snd_dma_pci_data(i32 %45)
  %47 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %41, i32 %42, i32 %46, i32 262144, i32 262144)
  %48 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %50 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %49, i32 0, i32 1
  store %struct.snd_pcm* %48, %struct.snd_pcm** %50, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %28, %26, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
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
