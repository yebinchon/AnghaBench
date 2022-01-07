; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8510.c_wm8510_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8510.c_wm8510_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8510_CLOCK = common dso_local global i32 0, align 4
@WM8510_POWER1 = common dso_local global i32 0, align 4
@WM8510_PLLN = common dso_local global i32 0, align 4
@pll_div = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WM8510_PLLK1 = common dso_local global i32 0, align 4
@WM8510_PLLK2 = common dso_local global i32 0, align 4
@WM8510_PLLK3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8510_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8510_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %12, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19, %5
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %24 = load i32, i32* @WM8510_CLOCK, align 4
  %25 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %27 = load i32, i32* @WM8510_CLOCK, align 4
  %28 = load i32, i32* %13, align 4
  %29 = and i32 %28, 255
  %30 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %26, i32 %27, i32 %29)
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %32 = load i32, i32* @WM8510_POWER1, align 4
  %33 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %35 = load i32, i32* @WM8510_POWER1, align 4
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 479
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %37)
  store i32 0, i32* %6, align 4
  br label %83

39:                                               ; preds = %19
  %40 = load i32, i32* %11, align 4
  %41 = mul i32 %40, 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pll_factors(i32 %41, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %45 = load i32, i32* @WM8510_PLLN, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %47 = shl i32 %46, 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 1), align 4
  %49 = or i32 %47, %48
  %50 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %44, i32 %45, i32 %49)
  %51 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %52 = load i32, i32* @WM8510_PLLK1, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %54 = ashr i32 %53, 18
  %55 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %51, i32 %52, i32 %54)
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %57 = load i32, i32* @WM8510_PLLK2, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %59 = ashr i32 %58, 9
  %60 = and i32 %59, 511
  %61 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %56, i32 %57, i32 %60)
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %63 = load i32, i32* @WM8510_PLLK3, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %65 = and i32 %64, 511
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %62, i32 %63, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %68 = load i32, i32* @WM8510_POWER1, align 4
  %69 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %67, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %71 = load i32, i32* @WM8510_POWER1, align 4
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, 32
  %74 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %70, i32 %71, i32 %73)
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %76 = load i32, i32* @WM8510_CLOCK, align 4
  %77 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %79 = load i32, i32* @WM8510_CLOCK, align 4
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, 256
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %78, i32 %79, i32 %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %39, %22
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @pll_factors(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
