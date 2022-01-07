; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_level_control_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_level_control_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@WM8776_ALCCTRL2 = common dso_local global i64 0, align 8
@WM8776_LCEN = common dso_local global i32 0, align 4
@WM8776_ALCCTRL1 = common dso_local global i64 0, align 8
@WM8776_LCSEL_MASK = common dso_local global i32 0, align 4
@WM8776_LCSEL_LIMITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8776_level_control_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_level_control_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %7 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %8 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %7, i32 0, i32 0
  %9 = load %struct.oxygen*, %struct.oxygen** %8, align 8
  store %struct.oxygen* %9, %struct.oxygen** %5, align 8
  %10 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %11 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %10, i32 0, i32 0
  %12 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %11, align 8
  store %struct.xonar_wm87x6* %12, %struct.xonar_wm87x6** %6, align 8
  %13 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %14 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @WM8776_ALCCTRL2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WM8776_LCEN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  br label %55

29:                                               ; preds = %2
  %30 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %31 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @WM8776_ALCCTRL1, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @WM8776_LCSEL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @WM8776_LCSEL_LIMITER, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %42 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 1, i32* %46, align 4
  br label %54

47:                                               ; preds = %29
  %48 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %49 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 2, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %40
  br label %55

55:                                               ; preds = %54, %22
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
