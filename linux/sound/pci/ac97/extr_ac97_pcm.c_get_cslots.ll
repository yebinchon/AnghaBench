; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_get_cslots.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_pcm.c_get_cslots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@AC97_SLOT_PCM_LEFT = common dso_local global i32 0, align 4
@AC97_SLOT_PCM_RIGHT = common dso_local global i32 0, align 4
@AC97_SLOT_MIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*)* @get_cslots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_cslots(%struct.snd_ac97* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca %struct.snd_ac97*, align 8
  %4 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %3, align 8
  %5 = load %struct.snd_ac97*, %struct.snd_ac97** %3, align 8
  %6 = call i32 @ac97_is_audio(%struct.snd_ac97* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i16 0, i16* %2, align 2
  br label %23

9:                                                ; preds = %1
  %10 = load i32, i32* @AC97_SLOT_PCM_LEFT, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @AC97_SLOT_PCM_RIGHT, align 4
  %13 = shl i32 1, %12
  %14 = or i32 %11, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %4, align 2
  %16 = load i32, i32* @AC97_SLOT_MIC, align 4
  %17 = shl i32 1, %16
  %18 = load i16, i16* %4, align 2
  %19 = zext i16 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %4, align 2
  %22 = load i16, i16* %4, align 2
  store i16 %22, i16* %2, align 2
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i16, i16* %2, align 2
  ret i16 %24
}

declare dso_local i32 @ac97_is_audio(%struct.snd_ac97*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
