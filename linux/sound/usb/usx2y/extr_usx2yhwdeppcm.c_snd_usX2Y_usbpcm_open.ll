; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_usbpcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usx2yhwdeppcm.c_snd_usX2Y_usbpcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_usX2Y_substream*, i32 }
%struct.snd_usX2Y_substream = type { %struct.snd_pcm_substream*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

@USX2Y_STAT_CHIP_MMAP_PCM_URBS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@snd_usX2Y_2c = common dso_local global i32 0, align 4
@snd_usX2Y_4c = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_usX2Y_usbpcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usX2Y_usbpcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_usX2Y_substream*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call i64 @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  %8 = inttoptr i64 %7 to %struct.snd_usX2Y_substream**
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %8, i64 %11
  %13 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %12, align 8
  store %struct.snd_usX2Y_substream* %13, %struct.snd_usX2Y_substream** %4, align 8
  %14 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %14, i32 0, i32 1
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %15, align 8
  store %struct.snd_pcm_runtime* %16, %struct.snd_pcm_runtime** %5, align 8
  %17 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @USX2Y_STAT_CHIP_MMAP_PCM_URBS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %30 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @snd_usX2Y_2c, align 4
  br label %51

36:                                               ; preds = %28
  %37 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %38 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @snd_usX2Y_4c, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @snd_usX2Y_2c, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i32 [ %35, %34 ], [ %50, %49 ]
  %53 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %54 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %56 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %57 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %56, i32 0, i32 0
  store %struct.snd_usX2Y_substream* %55, %struct.snd_usX2Y_substream** %57, align 8
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %59 = load %struct.snd_usX2Y_substream*, %struct.snd_usX2Y_substream** %4, align 8
  %60 = getelementptr inbounds %struct.snd_usX2Y_substream, %struct.snd_usX2Y_substream* %59, i32 0, i32 0
  store %struct.snd_pcm_substream* %58, %struct.snd_pcm_substream** %60, align 8
  %61 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %62 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %63 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %61, i32 %62, i32 1000, i32 200000)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %51, %25
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
