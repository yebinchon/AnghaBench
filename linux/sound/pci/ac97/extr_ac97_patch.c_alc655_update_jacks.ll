; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_alc655_update_jacks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_patch.c_alc655_update_jacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@AC97_ALC650_MULTICH = common dso_local global i32 0, align 4
@AC97_ALC650_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*)* @alc655_update_jacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc655_update_jacks(%struct.snd_ac97* %0) #0 {
  %2 = alloca %struct.snd_ac97*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %2, align 8
  %4 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %5 = call i32 @is_shared_surrout(%struct.snd_ac97* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %7 = load i32, i32* @AC97_ALC650_MULTICH, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 512, i32 0
  %12 = call i32 @ac97_update_bits_page(%struct.snd_ac97* %6, i32 %7, i32 512, i32 %11, i32 0)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %14 = call i32 @is_shared_clfeout(%struct.snd_ac97* %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %16 = load i32, i32* @AC97_ALC650_CLOCK, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 4096, i32 0
  %21 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %15, i32 %16, i32 4096, i32 %20)
  %22 = load %struct.snd_ac97*, %struct.snd_ac97** %2, align 8
  %23 = load i32, i32* @AC97_ALC650_MULTICH, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1024, i32 0
  %28 = call i32 @ac97_update_bits_page(%struct.snd_ac97* %22, i32 %23, i32 1024, i32 %27, i32 0)
  ret void
}

declare dso_local i32 @is_shared_surrout(%struct.snd_ac97*) #1

declare dso_local i32 @ac97_update_bits_page(%struct.snd_ac97*, i32, i32, i32, i32) #1

declare dso_local i32 @is_shared_clfeout(%struct.snd_ac97*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
