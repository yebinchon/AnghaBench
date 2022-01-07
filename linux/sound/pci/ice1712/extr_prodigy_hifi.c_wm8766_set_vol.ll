; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm8766_set_vol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_prodigy_hifi.c_wm8766_set_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@WM_VOL_MUTE = common dso_local global i16 0, align 2
@WM_VOL_MAX = common dso_local global i16 0, align 2
@DAC_MIN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i16, i16)* @wm8766_set_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8766_set_vol(%struct.snd_ice1712* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8, align 1
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load i16, i16* %8, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @WM_VOL_MUTE, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @WM_VOL_MUTE, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %4
  store i8 0, i8* %9, align 1
  br label %57

24:                                               ; preds = %16
  %25 = load i16, i16* %7, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @WM_VOL_MUTE, align 2
  %28 = zext i16 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = load i16, i16* %8, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @WM_VOL_MUTE, align 2
  %34 = zext i16 %33 to i32
  %35 = xor i32 %34, -1
  %36 = and i32 %32, %35
  %37 = mul nsw i32 %30, %36
  %38 = sdiv i32 %37, 128
  %39 = load i16, i16* @WM_VOL_MAX, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %38, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %9, align 1
  %43 = load i8, i8* %9, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %24
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* @DAC_MIN, align 1
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %48, %50
  br label %53

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %52, %46
  %54 = phi i32 [ %51, %46 ], [ 0, %52 ]
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %9, align 1
  br label %57

57:                                               ; preds = %53, %23
  %58 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i8, i8* %9, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 256, %61
  %63 = call i32 @wm8766_spi_write(%struct.snd_ice1712* %58, i32 %59, i32 %62)
  ret void
}

declare dso_local i32 @wm8766_spi_write(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
