; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8804.c_wm8804_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8804_priv = type { i32, i32, i32 }
%struct.pll_div = type { i32, i32, i32, i32, i32 }

@WM8804_PWRDN = common dso_local global i32 0, align 4
@WM8804_PLL4 = common dso_local global i32 0, align 4
@WM8804_PLL5 = common dso_local global i32 0, align 4
@WM8804_PLL1 = common dso_local global i32 0, align 4
@WM8804_PLL2 = common dso_local global i32 0, align 4
@WM8804_PLL3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8804_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8804_set_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.wm8804_priv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pll_div, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %18, align 8
  store %struct.snd_soc_component* %19, %struct.snd_soc_component** %12, align 8
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %21 = call %struct.wm8804_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm8804_priv* %21, %struct.wm8804_priv** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24, %5
  %28 = load %struct.wm8804_priv*, %struct.wm8804_priv** %13, align 8
  %29 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @WM8804_PWRDN, align 4
  %32 = call i32 @regmap_update_bits_check(i32 %30, i32 %31, i32 1, i32 1, i32* %14)
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.wm8804_priv*, %struct.wm8804_priv** %13, align 8
  %37 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pm_runtime_put(i32 %38)
  br label %40

40:                                               ; preds = %35, %27
  br label %106

41:                                               ; preds = %24
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.wm8804_priv*, %struct.wm8804_priv** %13, align 8
  %45 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pll_factors(%struct.pll_div* %16, i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %6, align 4
  br label %107

52:                                               ; preds = %41
  %53 = load %struct.wm8804_priv*, %struct.wm8804_priv** %13, align 8
  %54 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WM8804_PWRDN, align 4
  %57 = call i32 @regmap_update_bits_check(i32 %55, i32 %56, i32 1, i32 1, i32* %14)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = load %struct.wm8804_priv*, %struct.wm8804_priv** %13, align 8
  %62 = getelementptr inbounds %struct.wm8804_priv, %struct.wm8804_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pm_runtime_get_sync(i32 %63)
  br label %65

65:                                               ; preds = %60, %52
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %67 = load i32, i32* @WM8804_PLL4, align 4
  %68 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %16, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %16, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 4
  %73 = or i32 %69, %72
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 31, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %76 = load i32, i32* @WM8804_PLL5, align 4
  %77 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %16, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %16, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 3
  %82 = or i32 %78, %81
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 11, i32 %82)
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %85 = load i32, i32* @WM8804_PLL1, align 4
  %86 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %16, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 255
  %89 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %84, i32 %85, i32 %88)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %91 = load i32, i32* @WM8804_PLL2, align 4
  %92 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %16, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %90, i32 %91, i32 %95)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %98 = load i32, i32* @WM8804_PLL3, align 4
  %99 = getelementptr inbounds %struct.pll_div, %struct.pll_div* %16, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = ashr i32 %100, 16
  %102 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %97, i32 %98, i32 %101)
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %104 = load i32, i32* @WM8804_PWRDN, align 4
  %105 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %103, i32 %104, i32 1, i32 0)
  br label %106

106:                                              ; preds = %65, %40
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %106, %50
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.wm8804_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits_check(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pm_runtime_put(i32) #1

declare dso_local i32 @pll_factors(%struct.pll_div*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
