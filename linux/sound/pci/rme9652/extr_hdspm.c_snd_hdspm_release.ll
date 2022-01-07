; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.hdspm = type { i32, i32, i32, i32*, i32* }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_hdspm_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_release(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.hdspm* %6, %struct.hdspm** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %14 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %20 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %22 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %25 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %30 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %29, i32 0, i32 2
  %31 = call i32 @spin_unlock_irq(i32* %30)
  ret i32 0
}

declare dso_local %struct.hdspm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
