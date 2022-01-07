; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8960.c_wm8960_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pll_div = type { i32, i32, i32 }
%struct.snd_soc_component = type { i32 }

@wm8960_set_pll.pll_div = internal global %struct._pll_div zeroinitializer, align 4
@WM8960_CLOCK1 = common dso_local global i32 0, align 4
@WM8960_POWER2 = common dso_local global i32 0, align 4
@WM8960_PLL1 = common dso_local global i32 0, align 4
@WM8960_PLL2 = common dso_local global i32 0, align 4
@WM8960_PLL3 = common dso_local global i32 0, align 4
@WM8960_PLL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @wm8960_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8960_set_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @pll_factors(i32 %16, i32 %17, %struct._pll_div* @wm8960_set_pll.pll_div)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %83

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %12, %3
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %26 = load i32, i32* @WM8960_CLOCK1, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %25, i32 %26, i32 1, i32 0)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %29 = load i32, i32* @WM8960_POWER2, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 1, i32 0)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33, %24
  store i32 0, i32* %4, align 4
  br label %83

37:                                               ; preds = %33
  %38 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %39 = load i32, i32* @WM8960_PLL1, align 4
  %40 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %38, i32 %39)
  %41 = and i32 %40, -64
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_pll.pll_div, i32 0, i32 0), align 4
  %43 = shl i32 %42, 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_pll.pll_div, i32 0, i32 1), align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_pll.pll_div, i32 0, i32 2), align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %37
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, 32
  store i32 %53, i32* %8, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %55 = load i32, i32* @WM8960_PLL2, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_pll.pll_div, i32 0, i32 2), align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %54, i32 %55, i32 %58)
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %61 = load i32, i32* @WM8960_PLL3, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_pll.pll_div, i32 0, i32 2), align 4
  %63 = ashr i32 %62, 8
  %64 = and i32 %63, 255
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %60, i32 %61, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %67 = load i32, i32* @WM8960_PLL4, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct._pll_div, %struct._pll_div* @wm8960_set_pll.pll_div, i32 0, i32 2), align 4
  %69 = and i32 %68, 255
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %51, %37
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %73 = load i32, i32* @WM8960_PLL1, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 %74)
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %77 = load i32, i32* @WM8960_POWER2, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 1, i32 1)
  %79 = call i32 @msleep(i32 250)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %81 = load i32, i32* @WM8960_CLOCK1, align 4
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 1, i32 1)
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %71, %36, %21
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @pll_factors(i32, i32, %struct._pll_div*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
