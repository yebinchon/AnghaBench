; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_wm8776.c_snd_wm8776_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wm8776 = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.snd_wm8776.0*, i32, i32)* }
%struct.snd_wm8776.0 = type opaque

@WM8776_REG_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wm8776*, i32, i32)* @snd_wm8776_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wm8776_write(%struct.snd_wm8776* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_wm8776*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_wm8776* %0, %struct.snd_wm8776** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = shl i32 %9, 1
  %11 = load i32, i32* %6, align 4
  %12 = ashr i32 %11, 8
  %13 = or i32 %10, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @WM8776_REG_RESET, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.snd_wm8776*, %struct.snd_wm8776** %4, align 8
  %22 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.snd_wm8776*, %struct.snd_wm8776** %4, align 8
  %29 = getelementptr inbounds %struct.snd_wm8776, %struct.snd_wm8776* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.snd_wm8776.0*, i32, i32)*, i32 (%struct.snd_wm8776.0*, i32, i32)** %30, align 8
  %32 = load %struct.snd_wm8776*, %struct.snd_wm8776** %4, align 8
  %33 = bitcast %struct.snd_wm8776* %32 to %struct.snd_wm8776.0*
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 %31(%struct.snd_wm8776.0* %33, i32 %34, i32 %35)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
