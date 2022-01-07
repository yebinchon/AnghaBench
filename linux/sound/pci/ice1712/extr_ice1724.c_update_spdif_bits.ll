; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_update_spdif_bits.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1724.c_update_spdif_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@SPDIF_CFG = common dso_local global i32 0, align 4
@VT1724_CFG_SPDIF_OUT_EN = common dso_local global i8 0, align 1
@SPDIF_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @update_spdif_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_spdif_bits(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = load i32, i32* @SPDIF_CFG, align 4
  %9 = call i32 @ICEREG1724(%struct.snd_ice1712* %7, i32 %8)
  %10 = call zeroext i8 @inb(i32 %9)
  store i8 %10, i8* %5, align 1
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* @VT1724_CFG_SPDIF_OUT_EN, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %6, align 1
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %6, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i8, i8* %6, align 1
  %25 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %26 = load i32, i32* @SPDIF_CFG, align 4
  %27 = call i32 @ICEREG1724(%struct.snd_ice1712* %25, i32 %26)
  %28 = call i32 @outb(i8 zeroext %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %2
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %32 = load i32, i32* @SPDIF_CTRL, align 4
  %33 = call i32 @ICEMT1724(%struct.snd_ice1712* %31, i32 %32)
  %34 = call i32 @outw(i32 %30, i32 %33)
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i8, i8* %5, align 1
  %42 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %43 = load i32, i32* @SPDIF_CFG, align 4
  %44 = call i32 @ICEREG1724(%struct.snd_ice1712* %42, i32 %43)
  %45 = call i32 @outb(i8 zeroext %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %29
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %49 = load i32, i32* @SPDIF_CTRL, align 4
  %50 = call i32 @ICEMT1724(%struct.snd_ice1712* %48, i32 %49)
  %51 = call i32 @outw(i32 %47, i32 %50)
  ret void
}

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @ICEREG1724(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @ICEMT1724(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
