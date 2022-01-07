; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_new_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_snd_line6_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.snd_pcm = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_line6_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_line6_capture_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, %struct.snd_pcm**)* @snd_line6_new_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_line6_new_pcm(%struct.usb_line6* %0, %struct.snd_pcm** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca %struct.snd_pcm**, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store %struct.snd_pcm** %1, %struct.snd_pcm*** %5, align 8
  %8 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %9 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %12 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.snd_pcm**, %struct.snd_pcm*** %5, align 8
  %18 = call i32 @snd_pcm_new(i32 %10, i8* %16, i32 0, i32 1, i32 1, %struct.snd_pcm** %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm**, %struct.snd_pcm*** %5, align 8
  %25 = load %struct.snd_pcm*, %struct.snd_pcm** %24, align 8
  store %struct.snd_pcm* %25, %struct.snd_pcm** %6, align 8
  %26 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %30 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @strcpy(i32 %28, i64 %33)
  %35 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %36 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %37 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %35, i32 %36, i32* @snd_line6_playback_ops)
  %38 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %39 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %40 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %38, i32 %39, i32* @snd_line6_capture_ops)
  %41 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %42 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @snd_dma_continuous_data(i32 %43)
  %45 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %41, i32 %42, i32 %44, i32 65536, i32 131072)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %23, %21
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @snd_pcm_new(i32, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i64) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
