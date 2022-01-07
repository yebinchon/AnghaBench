; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.tegra20_ac97 = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @tegra20_ac97_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_ac97_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.tegra20_ac97*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %10 = call %struct.tegra20_ac97* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.tegra20_ac97* %10, %struct.tegra20_ac97** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %38 [
    i32 130, label %12
    i32 132, label %12
    i32 131, label %12
    i32 129, label %25
    i32 133, label %25
    i32 128, label %25
  ]

12:                                               ; preds = %3, %3, %3
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.tegra20_ac97*, %struct.tegra20_ac97** %8, align 8
  %20 = call i32 @tegra20_ac97_start_playback(%struct.tegra20_ac97* %19)
  br label %24

21:                                               ; preds = %12
  %22 = load %struct.tegra20_ac97*, %struct.tegra20_ac97** %8, align 8
  %23 = call i32 @tegra20_ac97_start_capture(%struct.tegra20_ac97* %22)
  br label %24

24:                                               ; preds = %21, %18
  br label %41

25:                                               ; preds = %3, %3, %3
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.tegra20_ac97*, %struct.tegra20_ac97** %8, align 8
  %33 = call i32 @tegra20_ac97_stop_playback(%struct.tegra20_ac97* %32)
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.tegra20_ac97*, %struct.tegra20_ac97** %8, align 8
  %36 = call i32 @tegra20_ac97_stop_capture(%struct.tegra20_ac97* %35)
  br label %37

37:                                               ; preds = %34, %31
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %37, %24
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.tegra20_ac97* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @tegra20_ac97_start_playback(%struct.tegra20_ac97*) #1

declare dso_local i32 @tegra20_ac97_start_capture(%struct.tegra20_ac97*) #1

declare dso_local i32 @tegra20_ac97_stop_playback(%struct.tegra20_ac97*) #1

declare dso_local i32 @tegra20_ac97_stop_capture(%struct.tegra20_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
