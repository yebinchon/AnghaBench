; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_registers_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_registers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32*, i64, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }

@WM8776_RESET = common dso_local global i64 0, align 8
@WM8776_PHASESWAP = common dso_local global i64 0, align 8
@WM8776_PH_MASK = common dso_local global i32 0, align 4
@WM8776_DACCTRL1 = common dso_local global i64 0, align 8
@WM8776_DZCEN = common dso_local global i32 0, align 4
@WM8776_PL_LEFT_LEFT = common dso_local global i32 0, align 4
@WM8776_PL_RIGHT_RIGHT = common dso_local global i32 0, align 4
@WM8776_DACMUTE = common dso_local global i64 0, align 8
@WM8776_DMUTE = common dso_local global i32 0, align 4
@WM8776_DACIFCTRL = common dso_local global i64 0, align 8
@WM8776_DACFMT_LJUST = common dso_local global i32 0, align 4
@WM8776_DACWL_24 = common dso_local global i32 0, align 4
@WM8776_ADCIFCTRL = common dso_local global i64 0, align 8
@WM8776_MSTRCTRL = common dso_local global i64 0, align 8
@WM8776_PWRDOWN = common dso_local global i64 0, align 8
@WM8776_HPLVOL = common dso_local global i64 0, align 8
@WM8776_HPRVOL = common dso_local global i64 0, align 8
@WM8776_UPDATE = common dso_local global i32 0, align 4
@WM8776_ADCLVOL = common dso_local global i64 0, align 8
@WM8776_ADCRVOL = common dso_local global i64 0, align 8
@WM8776_ADCMUX = common dso_local global i64 0, align 8
@WM8776_DACLVOL = common dso_local global i64 0, align 8
@WM8776_DACRVOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @wm8776_registers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8776_registers_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %5, align 8
  store %struct.xonar_wm87x6* %6, %struct.xonar_wm87x6** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i64, i64* @WM8776_RESET, align 8
  %9 = call i32 @wm8776_write(%struct.oxygen* %7, i64 %8, i32 0)
  %10 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %11 = load i64, i64* @WM8776_PHASESWAP, align 8
  %12 = load i32, i32* @WM8776_PH_MASK, align 4
  %13 = call i32 @wm8776_write(%struct.oxygen* %10, i64 %11, i32 %12)
  %14 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %15 = load i64, i64* @WM8776_DACCTRL1, align 8
  %16 = load i32, i32* @WM8776_DZCEN, align 4
  %17 = load i32, i32* @WM8776_PL_LEFT_LEFT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @WM8776_PL_RIGHT_RIGHT, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @wm8776_write(%struct.oxygen* %14, i64 %15, i32 %20)
  %22 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %23 = load i64, i64* @WM8776_DACMUTE, align 8
  %24 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %25 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @WM8776_DMUTE, align 4
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = call i32 @wm8776_write(%struct.oxygen* %22, i64 %23, i32 %32)
  %34 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %35 = load i64, i64* @WM8776_DACIFCTRL, align 8
  %36 = load i32, i32* @WM8776_DACFMT_LJUST, align 4
  %37 = load i32, i32* @WM8776_DACWL_24, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @wm8776_write(%struct.oxygen* %34, i64 %35, i32 %38)
  %40 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %41 = load i64, i64* @WM8776_ADCIFCTRL, align 8
  %42 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %43 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @WM8776_ADCIFCTRL, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @wm8776_write(%struct.oxygen* %40, i64 %41, i32 %47)
  %49 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %50 = load i64, i64* @WM8776_MSTRCTRL, align 8
  %51 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %52 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @WM8776_MSTRCTRL, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wm8776_write(%struct.oxygen* %49, i64 %50, i32 %56)
  %58 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %59 = load i64, i64* @WM8776_PWRDOWN, align 8
  %60 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %61 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @WM8776_PWRDOWN, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wm8776_write(%struct.oxygen* %58, i64 %59, i32 %65)
  %67 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %68 = load i64, i64* @WM8776_HPLVOL, align 8
  %69 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %70 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @WM8776_HPLVOL, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wm8776_write(%struct.oxygen* %67, i64 %68, i32 %74)
  %76 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %77 = load i64, i64* @WM8776_HPRVOL, align 8
  %78 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %79 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @WM8776_HPRVOL, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @WM8776_UPDATE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @wm8776_write(%struct.oxygen* %76, i64 %77, i32 %85)
  %87 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %88 = load i64, i64* @WM8776_ADCLVOL, align 8
  %89 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %90 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @WM8776_ADCLVOL, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @wm8776_write(%struct.oxygen* %87, i64 %88, i32 %94)
  %96 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %97 = load i64, i64* @WM8776_ADCRVOL, align 8
  %98 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %99 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @WM8776_ADCRVOL, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @wm8776_write(%struct.oxygen* %96, i64 %97, i32 %103)
  %105 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %106 = load i64, i64* @WM8776_ADCMUX, align 8
  %107 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %108 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @WM8776_ADCMUX, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @wm8776_write(%struct.oxygen* %105, i64 %106, i32 %112)
  %114 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %115 = load i64, i64* @WM8776_DACLVOL, align 8
  %116 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %117 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @wm8776_write(%struct.oxygen* %114, i64 %115, i32 %120)
  %122 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %123 = load i64, i64* @WM8776_DACRVOL, align 8
  %124 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %125 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @WM8776_UPDATE, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @wm8776_write(%struct.oxygen* %122, i64 %123, i32 %130)
  ret void
}

declare dso_local i32 @wm8776_write(%struct.oxygen*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
