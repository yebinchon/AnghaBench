; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8983.c_wm8983_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pll_div = type { i32, i32, i32 }

@WM8983_POWER_MANAGEMENT_1 = common dso_local global i32 0, align 4
@WM8983_PLLEN_MASK = common dso_local global i32 0, align 4
@WM8983_PLL_N = common dso_local global i32 0, align 4
@WM8983_PLL_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@WM8983_PLL_K_3 = common dso_local global i32 0, align 4
@WM8983_PLL_K_2 = common dso_local global i32 0, align 4
@WM8983_PLL_K_1 = common dso_local global i32 0, align 4
@WM8983_PLLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8983_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8983_set_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %25 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %26 = load i32, i32* @WM8983_PLLEN_MASK, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %26, i32 0)
  store i32 0, i32* %6, align 4
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
  br label %78

38:                                               ; preds = %28
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %40 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %41 = load i32, i32* @WM8983_PLLEN_MASK, align 4
  %42 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 %41, i32 0)
  %43 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %44 = load i32, i32* @WM8983_PLL_N, align 4
  %45 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WM8983_PLL_PRESCALE_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %48, %50
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %43, i32 %44, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %54 = load i32, i32* @WM8983_PLL_K_3, align 4
  %55 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 511
  %58 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %57)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %60 = load i32, i32* @WM8983_PLL_K_2, align 4
  %61 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 9
  %64 = and i32 %63, 511
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %67 = load i32, i32* @WM8983_PLL_K_1, align 4
  %68 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %14, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 18
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i32 %67, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %73 = load i32, i32* @WM8983_POWER_MANAGEMENT_1, align 4
  %74 = load i32, i32* @WM8983_PLLEN_MASK, align 4
  %75 = load i32, i32* @WM8983_PLLEN, align 4
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %36, %23
  %79 = load i32, i32* %6, align 4
  ret i32 %79
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
