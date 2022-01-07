; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8940.c_wm8940_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@WM8940_POWER1 = common dso_local global i32 0, align 4
@WM8940_CLOCK = common dso_local global i32 0, align 4
@WM8940_PLLN = common dso_local global i32 0, align 4
@pll_div = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@WM8940_PLLK1 = common dso_local global i32 0, align 4
@WM8940_PLLK2 = common dso_local global i32 0, align 4
@WM8940_PLLK3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8940_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8940_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %18 = load i32, i32* @WM8940_POWER1, align 4
  %19 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %21 = load i32, i32* @WM8940_POWER1, align 4
  %22 = load i32, i32* %13, align 4
  %23 = and i32 %22, 479
  %24 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %20, i32 %21, i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27, %5
  %31 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %32 = load i32, i32* @WM8940_CLOCK, align 4
  %33 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %35 = load i32, i32* @WM8940_CLOCK, align 4
  %36 = load i32, i32* %13, align 4
  %37 = and i32 %36, 255
  %38 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %34, i32 %35, i32 %37)
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %40 = load i32, i32* @WM8940_PLLN, align 4
  %41 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %39, i32 %40, i32 128)
  store i32 0, i32* %6, align 4
  br label %99

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  %44 = mul i32 %43, 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @pll_factors(i32 %44, i32 %45)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %42
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %51 = load i32, i32* @WM8940_PLLN, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 1), align 4
  %53 = shl i32 %52, 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %55 = or i32 %53, %54
  %56 = or i32 %55, 64
  %57 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %50, i32 %51, i32 %56)
  br label %66

58:                                               ; preds = %42
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %60 = load i32, i32* @WM8940_PLLN, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 1), align 4
  %62 = shl i32 %61, 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 2), align 4
  %64 = or i32 %62, %63
  %65 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %59, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %58, %49
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %68 = load i32, i32* @WM8940_PLLK1, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %70 = ashr i32 %69, 18
  %71 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %67, i32 %68, i32 %70)
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %73 = load i32, i32* @WM8940_PLLK2, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %75 = ashr i32 %74, 9
  %76 = and i32 %75, 511
  %77 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i32 %73, i32 %76)
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %79 = load i32, i32* @WM8940_PLLK3, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pll_div, i32 0, i32 0), align 4
  %81 = and i32 %80, 511
  %82 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %78, i32 %79, i32 %81)
  %83 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %84 = load i32, i32* @WM8940_POWER1, align 4
  %85 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %87 = load i32, i32* @WM8940_POWER1, align 4
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %88, 32
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %86, i32 %87, i32 %89)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %92 = load i32, i32* @WM8940_CLOCK, align 4
  %93 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %95 = load i32, i32* @WM8940_CLOCK, align 4
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, 256
  %98 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %94, i32 %95, i32 %97)
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %66, %30
  %100 = load i32, i32* %6, align 4
  ret i32 %100
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
