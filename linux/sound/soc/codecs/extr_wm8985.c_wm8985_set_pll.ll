; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8985.c_wm8985_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pll_div = type { i32, i32, i32 }

@WM8985_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8985_PLLEN_MASK = common dso_local global i32 0, align 4
@WM8985_PLL_N = common dso_local global i32 0, align 4
@WM8985_PLL_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@WM8985_PLL_K_3 = common dso_local global i32 0, align 4
@WM8985_PLL_K_2 = common dso_local global i32 0, align 4
@WM8985_PLL_K_1 = common dso_local global i32 0, align 4
@WM8985_CLOCK_GEN_CONTROL = common dso_local global i32 0, align 4
@WM8985_CLKSEL_MASK = common dso_local global i32 0, align 4
@WM8985_CLKSEL = common dso_local global i32 0, align 4
@WM8985_PLLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8985_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8985_set_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_soc_component*, align 8
  %14 = alloca %struct.pll_div, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %13, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20, %5
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %25 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %26 = load i32, i32* @WM8985_PLLEN_MASK, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 0)
  br label %78

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = mul i32 %29, 4
  %31 = mul i32 %30, 2
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @pll_factors(%struct.pll_div* %14, i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %79

38:                                               ; preds = %28
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %40 = load i32, i32* @WM8985_PLL_N, align 4
  %41 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WM8985_PLL_PRESCALE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %44, %46
  %48 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %50 = load i32, i32* @WM8985_PLL_K_3, align 4
  %51 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 511
  %54 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %49, i32 %50, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %56 = load i32, i32* @WM8985_PLL_K_2, align 4
  %57 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 9
  %60 = and i32 %59, 511
  %61 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %55, i32 %56, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %63 = load i32, i32* @WM8985_PLL_K_1, align 4
  %64 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 18
  %67 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %62, i32 %63, i32 %66)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %69 = load i32, i32* @WM8985_CLOCK_GEN_CONTROL, align 4
  %70 = load i32, i32* @WM8985_CLKSEL_MASK, align 4
  %71 = load i32, i32* @WM8985_CLKSEL, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %74 = load i32, i32* @WM8985_POWER_MANAGEMENT_1, align 4
  %75 = load i32, i32* @WM8985_PLLEN_MASK, align 4
  %76 = load i32, i32* @WM8985_PLLEN, align 4
  %77 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %73, i32 %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %38, %23
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %78, %36
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @pll_factors(%struct.pll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
