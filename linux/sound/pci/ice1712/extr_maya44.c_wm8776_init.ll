; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_wm8776_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_maya44.c_wm8776_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }
%struct.snd_wm8776 = type { i32, i32 }

@wm8776_init.inits_wm8776 = internal constant [32 x i16] [i16 2, i16 256, i16 5, i16 256, i16 6, i16 0, i16 7, i16 145, i16 8, i16 0, i16 9, i16 0, i16 10, i16 34, i16 11, i16 34, i16 12, i16 66, i16 13, i16 0, i16 14, i16 256, i16 15, i16 256, i16 17, i16 0, i16 21, i16 0, i16 22, i16 1, i16 255, i16 255], align 16
@WM_SW_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, %struct.snd_wm8776*, i32)* @wm8776_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_init(%struct.snd_ice1712* %0, %struct.snd_wm8776* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca %struct.snd_wm8776*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i16, align 2
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store %struct.snd_wm8776* %1, %struct.snd_wm8776** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %12 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @WM_SW_DAC, align 4
  %14 = shl i32 1, %13
  %15 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %16 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  store i16* getelementptr inbounds ([32 x i16], [32 x i16]* @wm8776_init.inits_wm8776, i64 0, i64 0), i16** %7, align 8
  br label %17

17:                                               ; preds = %22, %3
  %18 = load i16*, i16** %7, align 8
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i16*, i16** %7, align 8
  %24 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %24, i16** %7, align 8
  %25 = load i16, i16* %23, align 2
  %26 = trunc i16 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i16*, i16** %7, align 8
  %28 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %28, i16** %7, align 8
  %29 = load i16, i16* %27, align 2
  store i16 %29, i16* %9, align 2
  %30 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %31 = load %struct.snd_wm8776*, %struct.snd_wm8776** %5, align 8
  %32 = load i8, i8* %8, align 1
  %33 = load i16, i16* %9, align 2
  %34 = call i32 @wm8776_write(%struct.snd_ice1712* %30, %struct.snd_wm8776* %31, i8 zeroext %32, i16 zeroext %33)
  br label %17

35:                                               ; preds = %17
  ret void
}

declare dso_local i32 @wm8776_write(%struct.snd_ice1712*, %struct.snd_wm8776*, i8 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
