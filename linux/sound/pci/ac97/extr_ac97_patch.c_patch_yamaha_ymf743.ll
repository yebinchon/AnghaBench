; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_yamaha_ymf743.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_yamaha_ymf743.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i32*, i32* }

@patch_yamaha_ymf743_ops = common dso_local global i32 0, align 4
@AC97_BC_BASS_TREBLE = common dso_local global i32 0, align 4
@SNDRV_PCM_RATE_48000 = common dso_local global i32 0, align 4
@AC97_RATES_SPDIF = common dso_local global i64 0, align 8
@AC97_EI_SPDIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_yamaha_ymf743 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_yamaha_ymf743(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %3 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %4 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %3, i32 0, i32 3
  store i32* @patch_yamaha_ymf743_ops, i32** %4, align 8
  %5 = load i32, i32* @AC97_BC_BASS_TREBLE, align 4
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, 4096
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* @SNDRV_PCM_RATE_48000, align 4
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %16 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @AC97_RATES_SPDIF, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32 %14, i32* %19, align 4
  %20 = load i32, i32* @AC97_EI_SPDIF, align 4
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
