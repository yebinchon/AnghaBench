; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_input_vol_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_input_vol_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@WM8776_ADCLVOL = common dso_local global i64 0, align 8
@WM8776_AGMASK = common dso_local global i32 0, align 4
@WM8776_ADCRVOL = common dso_local global i64 0, align 8
@WM8776_ZCA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @wm8776_input_vol_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_input_vol_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca %struct.xonar_wm87x6*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 0
  %10 = load %struct.oxygen*, %struct.oxygen** %9, align 8
  store %struct.oxygen* %10, %struct.oxygen** %5, align 8
  %11 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %12 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %11, i32 0, i32 1
  %13 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %12, align 8
  store %struct.xonar_wm87x6* %13, %struct.xonar_wm87x6** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %15 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %25 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @WM8776_ADCLVOL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WM8776_AGMASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %23, %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %2
  %34 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %6, align 8
  %42 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @WM8776_ADCRVOL, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WM8776_AGMASK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %40, %48
  br label %50

50:                                               ; preds = %33, %2
  %51 = phi i1 [ true, %2 ], [ %49, %33 ]
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %7, align 4
  %53 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %54 = load i64, i64* @WM8776_ADCLVOL, align 8
  %55 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %56 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @WM8776_ZCA, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @wm8776_write_cached(%struct.oxygen* %53, i64 %54, i32 %63)
  %65 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %66 = load i64, i64* @WM8776_ADCRVOL, align 8
  %67 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WM8776_ZCA, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @wm8776_write_cached(%struct.oxygen* %65, i64 %66, i32 %75)
  %77 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %78 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm8776_write_cached(%struct.oxygen*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
