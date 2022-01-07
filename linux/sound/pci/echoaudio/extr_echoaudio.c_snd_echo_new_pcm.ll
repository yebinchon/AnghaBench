; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_new_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio.c_snd_echo_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_2__*, %struct.snd_pcm*, %struct.snd_pcm* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pcm = type { i32, %struct.echoaudio* }

@.str = private unnamed_addr constant [11 x i8] c"Analog PCM\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@analog_playback_ops = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@analog_capture_ops = common dso_local global i32 0, align 4
@digital_capture_ops = common dso_local global i32 0, align 4
@digital_playback_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @snd_echo_new_pcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_echo_new_pcm(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca %struct.snd_pcm*, align 8
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %6 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %7 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %10 = call i32 @num_analog_busses_out(%struct.echoaudio* %9)
  %11 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %12 = call i32 @num_analog_busses_in(%struct.echoaudio* %11)
  %13 = call i32 @snd_pcm_new(%struct.TYPE_2__* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0, i32 %10, i32 %12, %struct.snd_pcm** %4)
  store i32 %13, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %19 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %19, i32 0, i32 1
  store %struct.echoaudio* %18, %struct.echoaudio** %20, align 8
  %21 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %22 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %23 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %22, i32 0, i32 3
  store %struct.snd_pcm* %21, %struct.snd_pcm** %23, align 8
  %24 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %28 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcpy(i32 %26, i32 %31)
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %34 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %35 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %33, i32 %34, i32* @analog_playback_ops)
  %36 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %37 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %38 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %36, i32 %37, i32* @analog_capture_ops)
  %39 = load %struct.snd_pcm*, %struct.snd_pcm** %4, align 8
  %40 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @snd_dma_pci_data(i32 %42)
  %44 = call i32 @snd_echo_preallocate_pages(%struct.snd_pcm* %39, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %17
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %46, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @num_analog_busses_out(%struct.echoaudio*) #1

declare dso_local i32 @num_analog_busses_in(%struct.echoaudio*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_echo_preallocate_pages(%struct.snd_pcm*, i32) #1

declare dso_local i32 @snd_dma_pci_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
