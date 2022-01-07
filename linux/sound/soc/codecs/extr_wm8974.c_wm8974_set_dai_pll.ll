; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8974.c_wm8974_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pll_ = type { i32, i32, i32 }

@WM8974_CLOCK = common dso_local global i32 0, align 4
@WM8974_POWER1 = common dso_local global i32 0, align 4
@WM8974_PLLN = common dso_local global i32 0, align 4
@WM8974_PLLK1 = common dso_local global i32 0, align 4
@WM8974_PLLK2 = common dso_local global i32 0, align 4
@WM8974_PLLK3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8974_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8974_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.pll_, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20, %5
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %25 = load i32, i32* @WM8974_CLOCK, align 4
  %26 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %24, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %28 = load i32, i32* @WM8974_CLOCK, align 4
  %29 = load i32, i32* %14, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %27, i32 %28, i32 %30)
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %33 = load i32, i32* @WM8974_POWER1, align 4
  %34 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %32, i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %36 = load i32, i32* @WM8974_POWER1, align 4
  %37 = load i32, i32* %14, align 4
  %38 = and i32 %37, 479
  %39 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %35, i32 %36, i32 %38)
  store i32 0, i32* %6, align 4
  br label %88

40:                                               ; preds = %20
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @pll_factors(%struct.pll_* %13, i32 %41, i32 %42)
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %45 = load i32, i32* @WM8974_PLLN, align 4
  %46 = getelementptr inbounds %struct.pll_, %struct.pll_* %13, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 4
  %49 = getelementptr inbounds %struct.pll_, %struct.pll_* %13, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %48, %50
  %52 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %44, i32 %45, i32 %51)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %54 = load i32, i32* @WM8974_PLLK1, align 4
  %55 = getelementptr inbounds %struct.pll_, %struct.pll_* %13, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 18
  %58 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %53, i32 %54, i32 %57)
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %60 = load i32, i32* @WM8974_PLLK2, align 4
  %61 = getelementptr inbounds %struct.pll_, %struct.pll_* %13, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 9
  %64 = and i32 %63, 511
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %64)
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %67 = load i32, i32* @WM8974_PLLK3, align 4
  %68 = getelementptr inbounds %struct.pll_, %struct.pll_* %13, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 511
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %66, i32 %67, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %73 = load i32, i32* @WM8974_POWER1, align 4
  %74 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %72, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %76 = load i32, i32* @WM8974_POWER1, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, 32
  %79 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %75, i32 %76, i32 %78)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %81 = load i32, i32* @WM8974_CLOCK, align 4
  %82 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %84 = load i32, i32* @WM8974_CLOCK, align 4
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, 256
  %87 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %83, i32 %84, i32 %86)
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %40, %23
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @pll_factors(%struct.pll_*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
