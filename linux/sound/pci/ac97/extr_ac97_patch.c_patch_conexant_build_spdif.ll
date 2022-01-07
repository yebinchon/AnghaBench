; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_conexant_build_spdif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_conexant_build_spdif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@snd_ac97_controls_spdif = common dso_local global i32* null, align 8
@snd_ac97_conexant_controls_spdif = common dso_local global i32* null, align 8
@AC97_CXR_AUDIO_MISC = common dso_local global i32 0, align 4
@AC97_CXR_SPDIFEN = common dso_local global i32 0, align 4
@AC97_CXR_COPYRGT = common dso_local global i32 0, align 4
@AC97_CXR_SPDIF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_conexant_build_spdif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_conexant_build_spdif(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %6 = load i32*, i32** @snd_ac97_controls_spdif, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = call i32 @patch_build_controls(%struct.snd_ac97* %5, i32* %7, i32 3)
  store i32 %8, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %14 = load i32*, i32** @snd_ac97_conexant_controls_spdif, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @patch_build_controls(%struct.snd_ac97* %13, i32* %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %34

20:                                               ; preds = %12
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %22 = load i32, i32* @AC97_CXR_AUDIO_MISC, align 4
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %24 = load i32, i32* @AC97_CXR_AUDIO_MISC, align 4
  %25 = call i32 @snd_ac97_read(%struct.snd_ac97* %23, i32 %24)
  %26 = load i32, i32* @AC97_CXR_SPDIFEN, align 4
  %27 = load i32, i32* @AC97_CXR_COPYRGT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AC97_CXR_SPDIF_MASK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = and i32 %25, %31
  %33 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %21, i32 %22, i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %20, %18, %10
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @patch_build_controls(%struct.snd_ac97*, i32*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i32) #1

declare dso_local i32 @snd_ac97_read(%struct.snd_ac97*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
