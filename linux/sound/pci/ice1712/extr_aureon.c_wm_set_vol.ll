; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_set_vol.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_aureon.c_wm_set_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }

@WM_VOL_MUTE = common dso_local global i16 0, align 2
@WM_VOL_CNT = common dso_local global i16 0, align 2
@WM_VOL_MAX = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32, i16, i16)* @wm_set_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_set_vol(%struct.snd_ice1712* %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
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
  br label %44

24:                                               ; preds = %16
  %25 = load i16, i16* %7, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @WM_VOL_CNT, align 2
  %28 = zext i16 %27 to i32
  %29 = srem i32 %26, %28
  %30 = load i16, i16* %8, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @WM_VOL_CNT, align 2
  %33 = zext i16 %32 to i32
  %34 = srem i32 %31, %33
  %35 = mul nsw i32 %29, %34
  %36 = load i16, i16* @WM_VOL_MAX, align 2
  %37 = zext i16 %36 to i32
  %38 = sdiv i32 %35, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %9, align 1
  %40 = load i8, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, 27
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %9, align 1
  br label %44

44:                                               ; preds = %24, %23
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i8, i8* %9, align 1
  %48 = call i32 @wm_put(%struct.snd_ice1712* %45, i32 %46, i8 zeroext %47)
  %49 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i8, i8* %9, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 384, %52
  %54 = call i32 @wm_put_nocache(%struct.snd_ice1712* %49, i32 %50, i32 %53)
  ret void
}

declare dso_local i32 @wm_put(%struct.snd_ice1712*, i32, i8 zeroext) #1

declare dso_local i32 @wm_put_nocache(%struct.snd_ice1712*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
