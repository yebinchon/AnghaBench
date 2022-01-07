; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_sis7019.c_sis_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, %struct.voice* }
%struct.voice = type { %struct.snd_pcm_substream* }
%struct.sis7019 = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@sis_playback_hw_info = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @sis_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.sis7019*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.voice*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.sis7019* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.sis7019* %8, %struct.sis7019** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.sis7019*, %struct.sis7019** %4, align 8
  %13 = call %struct.voice* @sis_alloc_playback_voice(%struct.sis7019* %12)
  store %struct.voice* %13, %struct.voice** %6, align 8
  %14 = load %struct.voice*, %struct.voice** %6, align 8
  %15 = icmp ne %struct.voice* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %21 = load %struct.voice*, %struct.voice** %6, align 8
  %22 = getelementptr inbounds %struct.voice, %struct.voice* %21, i32 0, i32 0
  store %struct.snd_pcm_substream* %20, %struct.snd_pcm_substream** %22, align 8
  %23 = load %struct.voice*, %struct.voice** %6, align 8
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 1
  store %struct.voice* %23, %struct.voice** %25, align 8
  %26 = load i32, i32* @sis_playback_hw_info, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %31 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %29, i32 %30, i32 9, i32 65529)
  %32 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %33 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %34 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %32, i32 %33, i32 9, i32 65529)
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %36 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.sis7019* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.voice* @sis_alloc_playback_voice(%struct.sis7019*) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
