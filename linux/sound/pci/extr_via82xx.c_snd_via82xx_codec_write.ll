; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_codec_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_via82xx.c_snd_via82xx_codec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.via82xx* }
%struct.via82xx = type { i32 }

@VIA_REG_AC97_CODEC_ID_PRIMARY = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SECONDARY = common dso_local global i32 0, align 4
@VIA_REG_AC97_CODEC_ID_SHIFT = common dso_local global i32 0, align 4
@VIA_REG_AC97_CMD_SHIFT = common dso_local global i16 0, align 2
@VIA_REG_AC97_DATA_SHIFT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i16, i16)* @snd_via82xx_codec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_via82xx_codec_write(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca %struct.via82xx*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %10 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %9, i32 0, i32 1
  %11 = load %struct.via82xx*, %struct.via82xx** %10, align 8
  store %struct.via82xx* %11, %struct.via82xx** %7, align 8
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @VIA_REG_AC97_CODEC_ID_PRIMARY, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SECONDARY, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @VIA_REG_AC97_CODEC_ID_SHIFT, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @VIA_REG_AC97_CMD_SHIFT, align 2
  %28 = zext i16 %27 to i32
  %29 = shl i32 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i16, i16* %6, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* @VIA_REG_AC97_DATA_SHIFT, align 2
  %35 = zext i16 %34 to i32
  %36 = shl i32 %33, %35
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.via82xx*, %struct.via82xx** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @snd_via82xx_codec_xwrite(%struct.via82xx* %39, i32 %40)
  %42 = load %struct.via82xx*, %struct.via82xx** %7, align 8
  %43 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %44 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @snd_via82xx_codec_ready(%struct.via82xx* %42, i32 %45)
  ret void
}

declare dso_local i32 @snd_via82xx_codec_xwrite(%struct.via82xx*, i32) #1

declare dso_local i32 @snd_via82xx_codec_ready(%struct.via82xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
