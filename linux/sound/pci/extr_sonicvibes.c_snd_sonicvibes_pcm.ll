; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sonicvibes.c_snd_sonicvibes_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sonicvibes = type { i32, %struct.snd_pcm*, i32 }
%struct.snd_pcm = type { i32, i64, %struct.sonicvibes* }

@.str = private unnamed_addr constant [10 x i8] c"s3_86c617\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_sonicvibes_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_sonicvibes_capture_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"S3 SonicVibes\00", align 1
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sonicvibes*, i32)* @snd_sonicvibes_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sonicvibes_pcm(%struct.sonicvibes* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sonicvibes*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.sonicvibes* %0, %struct.sonicvibes** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %9 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_new(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11, i32 1, i32 1, %struct.snd_pcm** %6)
  store i32 %12, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %18 = icmp ne %struct.snd_pcm* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %28 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %29 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %27, i32 %28, i32* @snd_sonicvibes_playback_ops)
  %30 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %31 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %32 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %30, i32 %31, i32* @snd_sonicvibes_capture_ops)
  %33 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %34 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %35 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %34, i32 0, i32 2
  store %struct.sonicvibes* %33, %struct.sonicvibes** %35, align 8
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %37 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @strcpy(i32 %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %43 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %44 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %43, i32 0, i32 1
  store %struct.snd_pcm* %42, %struct.snd_pcm** %44, align 8
  %45 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %46 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %47 = load %struct.sonicvibes*, %struct.sonicvibes** %4, align 8
  %48 = getelementptr inbounds %struct.sonicvibes, %struct.sonicvibes* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @snd_dma_pci_data(i32 %49)
  %51 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %45, i32 %46, i32 %50, i32 65536, i32 131072)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %26, %23, %14
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

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
