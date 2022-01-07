; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_try_bit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_try_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ac97*, i32, i32)* @snd_ac97_try_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ac97_try_bit(%struct.snd_ac97* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 1, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %7, align 2
  %14 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %14, i32 %15)
  store i16 %16, i16* %9, align 2
  %17 = load i16, i16* %9, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i32
  %21 = xor i32 %18, %20
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %8, align 2
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i16, i16* %8, align 2
  %26 = call i32 @snd_ac97_write(%struct.snd_ac97* %23, i32 %24, i16 zeroext %25)
  %27 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %27, i32 %28)
  store i16 %29, i16* %10, align 2
  %30 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i16, i16* %9, align 2
  %33 = call i32 @snd_ac97_write_cache(%struct.snd_ac97* %30, i32 %31, i16 zeroext %32)
  %34 = load i16, i16* %10, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %8, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #1

declare dso_local i32 @snd_ac97_write(%struct.snd_ac97*, i32, i16 zeroext) #1

declare dso_local i32 @snd_ac97_write_cache(%struct.snd_ac97*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
