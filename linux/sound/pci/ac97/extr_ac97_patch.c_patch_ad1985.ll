; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_ad1985.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_patch_ad1985.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, i32, i32* }

@patch_ad1985_build_ops = common dso_local global i32 0, align 4
@AC97_AD_MISC = common dso_local global i32 0, align 4
@AC97_AD198X_LOSEL = common dso_local global i16 0, align 2
@AC97_AD198X_HPSEL = common dso_local global i16 0, align 2
@AC97_AD198X_MSPLT = common dso_local global i16 0, align 2
@AC97_AD198X_AC97NC = common dso_local global i16 0, align 2
@AC97_STEREO_MUTES = common dso_local global i32 0, align 4
@AC97_EI_REV_MASK = common dso_local global i32 0, align 4
@AC97_EI_REV_23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @patch_ad1985 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @patch_ad1985(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = call i32 @patch_ad1881(%struct.snd_ac97* %4)
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %7 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %6, i32 0, i32 2
  store i32* @patch_ad1985_build_ops, i32** %7, align 8
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %9 = load i32, i32* @AC97_AD_MISC, align 4
  %10 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %8, i32 %9)
  store i16 %10, i16* %3, align 2
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %12 = load i32, i32* @AC97_AD_MISC, align 4
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @AC97_AD198X_LOSEL, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i16, i16* @AC97_AD198X_HPSEL, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %17, %19
  %21 = load i16, i16* @AC97_AD198X_MSPLT, align 2
  %22 = zext i16 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i16, i16* @AC97_AD198X_AC97NC, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i16
  %28 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %11, i32 %12, i16 zeroext %27)
  %29 = load i32, i32* @AC97_STEREO_MUTES, align 4
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %31 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %35 = call i32 @ad1985_update_jacks(%struct.snd_ac97* %34)
  %36 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @AC97_EI_REV_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load i32, i32* @AC97_EI_REV_23, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %45 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  ret i32 0
}

declare dso_local i32 @patch_ad1881(%struct.snd_ac97*) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

declare dso_local i32 @ad1985_update_jacks(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
