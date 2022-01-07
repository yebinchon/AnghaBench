; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8753.c_wm8753_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct._pll_div = type { i32, i32, i32 }

@WM8753_PLL1 = common dso_local global i32 0, align 4
@WM8753_PLL2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WM8753_CLOCK = common dso_local global i64 0, align 8
@WM8753_PLL1CTL1 = common dso_local global i64 0, align 8
@WM8753_PLL1CTL2 = common dso_local global i64 0, align 8
@WM8753_PLL1CTL3 = common dso_local global i64 0, align 8
@WM8753_PLL1CTL4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8753_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8753_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.snd_soc_component*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct._pll_div, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %15, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @WM8753_PLL1, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @WM8753_PLL2, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %5
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %120

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @WM8753_PLL1, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  store i32 16, i32* %13, align 4
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %37 = load i64, i64* @WM8753_CLOCK, align 8
  %38 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %36, i64 %37)
  %39 = and i32 %38, 65519
  store i32 %39, i32* %12, align 4
  br label %45

40:                                               ; preds = %31
  store i32 4, i32* %14, align 4
  store i32 8, i32* %13, align 4
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %42 = load i64, i64* @WM8753_CLOCK, align 8
  %43 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %41, i64 %42)
  %44 = and i32 %43, 65527
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %53 = load i64, i64* @WM8753_PLL1CTL1, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %52, i64 %56, i32 38)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %59 = load i64, i64* @WM8753_CLOCK, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %58, i64 %59, i32 %60)
  store i32 0, i32* %6, align 4
  br label %120

62:                                               ; preds = %48
  store i32 0, i32* %16, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul i32 %63, 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @pll_factors(%struct._pll_div* %17, i32 %64, i32 %65)
  %67 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %17, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 5
  %70 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %17, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 3932160
  %73 = ashr i32 %72, 18
  %74 = add nsw i32 %69, %73
  store i32 %74, i32* %16, align 4
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %76 = load i64, i64* @WM8753_PLL1CTL2, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %75, i64 %79, i32 %80)
  %82 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %17, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 261632
  %85 = ashr i32 %84, 9
  store i32 %85, i32* %16, align 4
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %87 = load i64, i64* @WM8753_PLL1CTL3, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %86, i64 %90, i32 %91)
  %93 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %17, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 511
  store i32 %95, i32* %16, align 4
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %97 = load i64, i64* @WM8753_PLL1CTL4, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %97, %99
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %96, i64 %100, i32 %101)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %104 = load i64, i64* @WM8753_PLL1CTL1, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %17, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 3
  %111 = or i32 39, %110
  %112 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %103, i64 %107, i32 %111)
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  %114 = load i64, i64* @WM8753_CLOCK, align 8
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %113, i64 %114, i32 %117)
  br label %119

119:                                              ; preds = %62
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %51, %28
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @pll_factors(%struct._pll_div*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
