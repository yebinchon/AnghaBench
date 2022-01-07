; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_ac97_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_snd_vt1724_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i8, %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }

@VT1724_AC97_ID_MASK = common dso_local global i8 0, align 1
@AC97_INDEX = common dso_local global i32 0, align 4
@VT1724_AC97_READ = common dso_local global i8 0, align 1
@AC97_CMD = common dso_local global i32 0, align 4
@AC97_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @snd_vt1724_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @snd_vt1724_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.snd_ice1712*, align 8
  %7 = alloca i8, align 1
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %9 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %8, i32 0, i32 1
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %9, align 8
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %6, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %12 = call zeroext i8 @snd_vt1724_ac97_ready(%struct.snd_ice1712* %11)
  store i8 %12, i8* %7, align 1
  %13 = load i8, i8* @VT1724_AC97_ID_MASK, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, -1
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  %20 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %21 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %7, align 1
  %28 = load i16, i16* %5, align 2
  %29 = trunc i16 %28 to i8
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %31 = load i32, i32* @AC97_INDEX, align 4
  %32 = call i32 @ICEMT1724(%struct.snd_ice1712* %30, i32 %31)
  %33 = call i32 @outb(i8 zeroext %29, i32 %32)
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @VT1724_AC97_READ, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = trunc i32 %38 to i8
  %40 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %41 = load i32, i32* @AC97_CMD, align 4
  %42 = call i32 @ICEMT1724(%struct.snd_ice1712* %40, i32 %41)
  %43 = call i32 @outb(i8 zeroext %39, i32 %42)
  %44 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %45 = load i8, i8* @VT1724_AC97_READ, align 1
  %46 = call i64 @snd_vt1724_ac97_wait_bit(%struct.snd_ice1712* %44, i8 zeroext %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %2
  store i16 -1, i16* %3, align 2
  br label %54

49:                                               ; preds = %2
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %6, align 8
  %51 = load i32, i32* @AC97_DATA, align 4
  %52 = call i32 @ICEMT1724(%struct.snd_ice1712* %50, i32 %51)
  %53 = call zeroext i16 @inw(i32 %52)
  store i16 %53, i16* %3, align 2
  br label %54

54:                                               ; preds = %49, %48
  %55 = load i16, i16* %3, align 2
  ret i16 %55
}

declare dso_local zeroext i8 @snd_vt1724_ac97_ready(%struct.snd_ice1712*) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

declare dso_local i64 @snd_vt1724_ac97_wait_bit(%struct.snd_ice1712*, i8 zeroext) #1

declare dso_local zeroext i16 @inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
