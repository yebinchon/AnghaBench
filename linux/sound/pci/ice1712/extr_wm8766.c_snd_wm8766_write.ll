; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8766.c_snd_wm8766_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8766.c_snd_wm8766_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wm8766 = type { i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_wm8766.0*, i64, i64)* }
%struct.snd_wm8766.0 = type opaque

@WM8766_REG_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wm8766*, i64, i64)* @snd_wm8766_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wm8766_write(%struct.snd_wm8766* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.snd_wm8766*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.snd_wm8766* %0, %struct.snd_wm8766** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @WM8766_REG_COUNT, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %13 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %11, i64* %16, align 8
  br label %17

17:                                               ; preds = %10, %3
  %18 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %19 = getelementptr inbounds %struct.snd_wm8766, %struct.snd_wm8766* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.snd_wm8766.0*, i64, i64)*, i32 (%struct.snd_wm8766.0*, i64, i64)** %20, align 8
  %22 = load %struct.snd_wm8766*, %struct.snd_wm8766** %4, align 8
  %23 = bitcast %struct.snd_wm8766* %22 to %struct.snd_wm8766.0*
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 %21(%struct.snd_wm8766.0* %23, i64 %24, i64 %25)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
