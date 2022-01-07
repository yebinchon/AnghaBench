; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_update_bits_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ac97/extr_ac97_codec.c_snd_ac97_update_bits_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i16*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.snd_ac97*, i16, i16)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ac97_update_bits_nolock(%struct.snd_ac97* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %12 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %13 = load i16, i16* %6, align 2
  %14 = call zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97* %12, i16 zeroext %13)
  store i16 %14, i16* %10, align 2
  %15 = load i16, i16* %10, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  %21 = load i16, i16* %8, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %22, %24
  %26 = or i32 %20, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %11, align 2
  %28 = load i16, i16* %10, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %11, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %29, %31
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %4
  %37 = load i16, i16* %11, align 2
  %38 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %38, i32 0, i32 0
  %40 = load i16*, i16** %39, align 8
  %41 = load i16, i16* %6, align 2
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds i16, i16* %40, i64 %42
  store i16 %37, i16* %43, align 2
  %44 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (%struct.snd_ac97*, i16, i16)*, i32 (%struct.snd_ac97*, i16, i16)** %49, align 8
  %51 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %52 = load i16, i16* %6, align 2
  %53 = load i16, i16* %11, align 2
  %54 = call i32 %50(%struct.snd_ac97* %51, i16 zeroext %52, i16 zeroext %53)
  br label %55

55:                                               ; preds = %36, %4
  %56 = load i16, i16* %6, align 2
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %58 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @set_bit(i16 zeroext %56, i32 %59)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local zeroext i16 @snd_ac97_read_cache(%struct.snd_ac97*, i16 zeroext) #1

declare dso_local i32 @set_bit(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
