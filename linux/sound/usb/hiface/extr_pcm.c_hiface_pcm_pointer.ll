; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/hiface/extr_pcm.c_hiface_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.pcm_substream = type { i32, i32 }
%struct.pcm_runtime = type { i64 }

@SNDRV_PCM_POS_XRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @hiface_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hiface_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.pcm_substream*, align 8
  %5 = alloca %struct.pcm_runtime*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.pcm_substream* @hiface_pcm_get_substream(%struct.snd_pcm_substream* %8)
  store %struct.pcm_substream* %9, %struct.pcm_substream** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.pcm_runtime* %11, %struct.pcm_runtime** %5, align 8
  %12 = load %struct.pcm_runtime*, %struct.pcm_runtime** %5, align 8
  %13 = getelementptr inbounds %struct.pcm_runtime, %struct.pcm_runtime* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load %struct.pcm_substream*, %struct.pcm_substream** %4, align 8
  %18 = icmp ne %struct.pcm_substream* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %1
  %20 = load i32, i32* @SNDRV_PCM_POS_XRUN, align 4
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %16
  %22 = load %struct.pcm_substream*, %struct.pcm_substream** %4, align 8
  %23 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %22, i32 0, i32 0
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.pcm_substream*, %struct.pcm_substream** %4, align 8
  %27 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.pcm_substream*, %struct.pcm_substream** %4, align 8
  %30 = getelementptr inbounds %struct.pcm_substream, %struct.pcm_substream* %29, i32 0, i32 0
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bytes_to_frames(i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %21, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.pcm_substream* @hiface_pcm_get_substream(%struct.snd_pcm_substream*) #1

declare dso_local %struct.pcm_runtime* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bytes_to_frames(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
