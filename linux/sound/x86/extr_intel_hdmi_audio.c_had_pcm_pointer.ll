; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_intelhad = type { i32 }

@SNDRV_PCM_POS_XRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @had_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_intelhad*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.snd_intelhad* %7, %struct.snd_intelhad** %4, align 8
  %8 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %9 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @SNDRV_PCM_POS_XRUN, align 4
  store i32 %13, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %16 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %17 = call i32 @had_process_ringbuf(%struct.snd_pcm_substream* %15, %struct.snd_intelhad* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @SNDRV_PCM_POS_XRUN, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %14
  %23 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %24 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @bytes_to_frames(%struct.TYPE_2__* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %22, %20, %12
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @had_process_ringbuf(%struct.snd_pcm_substream*, %struct.snd_intelhad*) #1

declare dso_local i32 @bytes_to_frames(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
