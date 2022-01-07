; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8990.c_wm8990_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8990.c_wm8990_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct._pll_div = type { i32, i32, i64 }

@WM8990_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8990_PLL_ENA = common dso_local global i32 0, align 4
@WM8990_CLOCKING_2 = common dso_local global i32 0, align 4
@WM8990_SYSCLK_SRC = common dso_local global i32 0, align 4
@WM8990_PLL1 = common dso_local global i32 0, align 4
@WM8990_SDM = common dso_local global i32 0, align 4
@WM8990_PRESCALE = common dso_local global i32 0, align 4
@WM8990_PLL2 = common dso_local global i32 0, align 4
@WM8990_PLL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8990_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8990_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_soc_component*, align 8
  %12 = alloca %struct._pll_div, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load i32, i32* %10, align 4
  %23 = mul i32 %22, 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @pll_factors(%struct._pll_div* %12, i32 %23, i32 %24)
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %27 = load i32, i32* @WM8990_POWER_MANAGEMENT_2, align 4
  %28 = load i32, i32* @WM8990_PLL_ENA, align 4
  %29 = load i32, i32* @WM8990_PLL_ENA, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %32 = load i32, i32* @WM8990_CLOCKING_2, align 4
  %33 = load i32, i32* @WM8990_SYSCLK_SRC, align 4
  %34 = load i32, i32* @WM8990_SYSCLK_SRC, align 4
  %35 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %37 = load i32, i32* @WM8990_PLL1, align 4
  %38 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %12, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WM8990_SDM, align 4
  %41 = or i32 %39, %40
  %42 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %12, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %21
  %46 = load i32, i32* @WM8990_PRESCALE, align 4
  br label %48

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %41, %49
  %51 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %36, i32 %37, i32 %50)
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %53 = load i32, i32* @WM8990_PLL2, align 4
  %54 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 8
  %57 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %52, i32 %53, i32 %56)
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %59 = load i32, i32* @WM8990_PLL3, align 4
  %60 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %12, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 255
  %63 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %58, i32 %59, i32 %62)
  br label %69

64:                                               ; preds = %18, %5
  %65 = load %struct.snd_soc_component*, %struct.snd_soc_component** %11, align 8
  %66 = load i32, i32* @WM8990_POWER_MANAGEMENT_2, align 4
  %67 = load i32, i32* @WM8990_PLL_ENA, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %65, i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %64, %48
  ret i32 0
}

declare dso_local i32 @pll_factors(%struct._pll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
