; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_tune_ad_sharing.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_tune_ad_sharing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"ac97_quirk AD_SHARING is only for AD codecs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*)* @tune_ad_sharing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tune_ad_sharing(%struct.snd_ac97* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %6 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, -256
  %9 = icmp ne i32 %8, 1094996736
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %12 = call i32 @ac97_err(%struct.snd_ac97* %11, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %17 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %18 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %16, i32 %17)
  store i16 %18, i16* %4, align 2
  %19 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %20 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = or i32 %22, 512
  %24 = trunc i32 %23 to i16
  %25 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %19, i32 %20, i16 zeroext %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %15, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ac97_err(%struct.snd_ac97*, i8*) #1

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
