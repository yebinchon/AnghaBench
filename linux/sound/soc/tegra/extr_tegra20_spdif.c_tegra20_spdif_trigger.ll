; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_spdif.c_tegra20_spdif_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_spdif.c_tegra20_spdif_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.tegra20_spdif = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @tegra20_spdif_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra20_spdif_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.tegra20_spdif*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %10 = call %struct.tegra20_spdif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.tegra20_spdif* %10, %struct.tegra20_spdif** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %18 [
    i32 130, label %12
    i32 132, label %12
    i32 131, label %12
    i32 129, label %15
    i32 133, label %15
    i32 128, label %15
  ]

12:                                               ; preds = %3, %3, %3
  %13 = load %struct.tegra20_spdif*, %struct.tegra20_spdif** %8, align 8
  %14 = call i32 @tegra20_spdif_start_playback(%struct.tegra20_spdif* %13)
  br label %21

15:                                               ; preds = %3, %3, %3
  %16 = load %struct.tegra20_spdif*, %struct.tegra20_spdif** %8, align 8
  %17 = call i32 @tegra20_spdif_stop_playback(%struct.tegra20_spdif* %16)
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %22

21:                                               ; preds = %15, %12
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.tegra20_spdif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @tegra20_spdif_start_playback(%struct.tegra20_spdif*) #1

declare dso_local i32 @tegra20_spdif_stop_playback(%struct.tegra20_spdif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
