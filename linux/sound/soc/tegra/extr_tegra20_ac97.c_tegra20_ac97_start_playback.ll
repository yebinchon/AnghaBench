; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_start_playback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/tegra/extr_tegra20_ac97.c_tegra20_ac97_start_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra20_ac97 = type { i32 }

@TEGRA20_AC97_FIFO1_SCR = common dso_local global i32 0, align 4
@TEGRA20_AC97_FIFO_SCR_PB_QRT_MT_EN = common dso_local global i32 0, align 4
@TEGRA20_AC97_CTRL = common dso_local global i32 0, align 4
@TEGRA20_AC97_CTRL_PCM_DAC_EN = common dso_local global i32 0, align 4
@TEGRA20_AC97_CTRL_STM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra20_ac97*)* @tegra20_ac97_start_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra20_ac97_start_playback(%struct.tegra20_ac97* %0) #0 {
  %2 = alloca %struct.tegra20_ac97*, align 8
  store %struct.tegra20_ac97* %0, %struct.tegra20_ac97** %2, align 8
  %3 = load %struct.tegra20_ac97*, %struct.tegra20_ac97** %2, align 8
  %4 = getelementptr inbounds %struct.tegra20_ac97, %struct.tegra20_ac97* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TEGRA20_AC97_FIFO1_SCR, align 4
  %7 = load i32, i32* @TEGRA20_AC97_FIFO_SCR_PB_QRT_MT_EN, align 4
  %8 = load i32, i32* @TEGRA20_AC97_FIFO_SCR_PB_QRT_MT_EN, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.tegra20_ac97*, %struct.tegra20_ac97** %2, align 8
  %11 = getelementptr inbounds %struct.tegra20_ac97, %struct.tegra20_ac97* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TEGRA20_AC97_CTRL, align 4
  %14 = load i32, i32* @TEGRA20_AC97_CTRL_PCM_DAC_EN, align 4
  %15 = load i32, i32* @TEGRA20_AC97_CTRL_STM_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @TEGRA20_AC97_CTRL_PCM_DAC_EN, align 4
  %18 = load i32, i32* @TEGRA20_AC97_CTRL_STM_EN, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
