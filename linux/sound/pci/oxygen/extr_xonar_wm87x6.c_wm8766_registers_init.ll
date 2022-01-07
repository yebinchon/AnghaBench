; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8766_registers_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8766_registers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32*, i64, %struct.xonar_wm87x6* }
%struct.xonar_wm87x6 = type { i32* }

@WM8766_RESET = common dso_local global i64 0, align 8
@WM8766_DAC_CTRL = common dso_local global i64 0, align 8
@WM8766_INT_CTRL = common dso_local global i64 0, align 8
@WM8766_FMT_LJUST = common dso_local global i32 0, align 4
@WM8766_IWL_24 = common dso_local global i32 0, align 4
@WM8766_DAC_CTRL2 = common dso_local global i64 0, align 8
@WM8766_ZCD = common dso_local global i32 0, align 4
@WM8766_DMUTE_MASK = common dso_local global i32 0, align 4
@WM8766_LDA1 = common dso_local global i64 0, align 8
@WM8766_RDA1 = common dso_local global i64 0, align 8
@WM8766_LDA2 = common dso_local global i64 0, align 8
@WM8766_RDA2 = common dso_local global i64 0, align 8
@WM8766_LDA3 = common dso_local global i64 0, align 8
@WM8766_RDA3 = common dso_local global i64 0, align 8
@WM8766_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*)* @wm8766_registers_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8766_registers_init(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.xonar_wm87x6*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 2
  %6 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %5, align 8
  store %struct.xonar_wm87x6* %6, %struct.xonar_wm87x6** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %8 = load i64, i64* @WM8766_RESET, align 8
  %9 = call i32 @wm8766_write(%struct.oxygen* %7, i64 %8, i32 0)
  %10 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %11 = load i64, i64* @WM8766_DAC_CTRL, align 8
  %12 = load %struct.xonar_wm87x6*, %struct.xonar_wm87x6** %3, align 8
  %13 = getelementptr inbounds %struct.xonar_wm87x6, %struct.xonar_wm87x6* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @WM8766_DAC_CTRL, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wm8766_write(%struct.oxygen* %10, i64 %11, i32 %17)
  %19 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %20 = load i64, i64* @WM8766_INT_CTRL, align 8
  %21 = load i32, i32* @WM8766_FMT_LJUST, align 4
  %22 = load i32, i32* @WM8766_IWL_24, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @wm8766_write(%struct.oxygen* %19, i64 %20, i32 %23)
  %25 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %26 = load i64, i64* @WM8766_DAC_CTRL2, align 8
  %27 = load i32, i32* @WM8766_ZCD, align 4
  %28 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %29 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @WM8766_DMUTE_MASK, align 4
  br label %35

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %27, %36
  %38 = call i32 @wm8766_write(%struct.oxygen* %25, i64 %26, i32 %37)
  %39 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %40 = load i64, i64* @WM8766_LDA1, align 8
  %41 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %42 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wm8766_write(%struct.oxygen* %39, i64 %40, i32 %45)
  %47 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %48 = load i64, i64* @WM8766_RDA1, align 8
  %49 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %50 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @wm8766_write(%struct.oxygen* %47, i64 %48, i32 %53)
  %55 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %56 = load i64, i64* @WM8766_LDA2, align 8
  %57 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %58 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wm8766_write(%struct.oxygen* %55, i64 %56, i32 %61)
  %63 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %64 = load i64, i64* @WM8766_RDA2, align 8
  %65 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %66 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wm8766_write(%struct.oxygen* %63, i64 %64, i32 %69)
  %71 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %72 = load i64, i64* @WM8766_LDA3, align 8
  %73 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %74 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @wm8766_write(%struct.oxygen* %71, i64 %72, i32 %77)
  %79 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %80 = load i64, i64* @WM8766_RDA3, align 8
  %81 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %82 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 7
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @WM8766_UPDATE, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @wm8766_write(%struct.oxygen* %79, i64 %80, i32 %87)
  ret void
}

declare dso_local i32 @wm8766_write(%struct.oxygen*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
