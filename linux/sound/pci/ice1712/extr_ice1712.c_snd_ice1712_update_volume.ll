; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_update_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32* }

@MONITOR_INDEX = common dso_local global i32 0, align 4
@MONITOR_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @snd_ice1712_update_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_update_volume(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %8 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  store i16 0, i16* %6, align 2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 32768
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 127
  %20 = sub i32 96, %19
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 127, %21 ]
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %6, align 2
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, -2147483648
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 127
  %35 = sub i32 96, %34
  br label %37

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ %35, %31 ], [ 127, %36 ]
  %39 = shl i32 %38, 8
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %6, align 2
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %46 = load i32, i32* @MONITOR_INDEX, align 4
  %47 = call i32 @ICEMT(%struct.snd_ice1712* %45, i32 %46)
  %48 = call i32 @outb(i32 %44, i32 %47)
  %49 = load i16, i16* %6, align 2
  %50 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %51 = load i32, i32* @MONITOR_VOLUME, align 4
  %52 = call i32 @ICEMT(%struct.snd_ice1712* %50, i32 %51)
  %53 = call i32 @outw(i16 zeroext %49, i32 %52)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ICEMT(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @outw(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
