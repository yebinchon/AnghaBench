; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8400.c_wm8400_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8400.c_wm8400_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8400_priv = type { i32, i32 }
%struct.fll_factors = type { i32, i32, i32, i32, i32 }

@WM8400_POWER_MANAGEMENT_2 = common dso_local global i32 0, align 4
@WM8400_FLL_ENA = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_1 = common dso_local global i32 0, align 4
@WM8400_FLL_OSC_ENA = common dso_local global i32 0, align 4
@WM8400_FLL_REF_FREQ = common dso_local global i32 0, align 4
@WM8400_FLL_FRATIO_MASK = common dso_local global i32 0, align 4
@WM8400_FLL_FRAC = common dso_local global i32 0, align 4
@WM8400_FLL_REF_FREQ_SHIFT = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_2 = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_3 = common dso_local global i32 0, align 4
@WM8400_FLL_CONTROL_4 = common dso_local global i32 0, align 4
@WM8400_FLL_OUTDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8400_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.wm8400_priv*, align 8
  %14 = alloca %struct.fll_factors, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  %21 = call %struct.wm8400_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %20)
  store %struct.wm8400_priv* %21, %struct.wm8400_priv** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.wm8400_priv*, %struct.wm8400_priv** %13, align 8
  %24 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.wm8400_priv*, %struct.wm8400_priv** %13, align 8
  %30 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %129

34:                                               ; preds = %27, %5
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.wm8400_priv*, %struct.wm8400_priv** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @fll_factors(%struct.wm8400_priv* %38, %struct.fll_factors* %14, i32 %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %6, align 4
  br label %129

46:                                               ; preds = %37
  br label %49

47:                                               ; preds = %34
  %48 = call i32 @memset(%struct.fll_factors* %14, i32 0, i32 20)
  br label %49

49:                                               ; preds = %47, %46
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.wm8400_priv*, %struct.wm8400_priv** %13, align 8
  %52 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.wm8400_priv*, %struct.wm8400_priv** %13, align 8
  %55 = getelementptr inbounds %struct.wm8400_priv, %struct.wm8400_priv* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %57 = load i32, i32* @WM8400_POWER_MANAGEMENT_2, align 4
  %58 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %56, i32 %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* @WM8400_FLL_ENA, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %16, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %16, align 4
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %64 = load i32, i32* @WM8400_POWER_MANAGEMENT_2, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %63, i32 %64, i32 %65)
  %67 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %68 = load i32, i32* @WM8400_FLL_CONTROL_1, align 4
  %69 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %67, i32 %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* @WM8400_FLL_OSC_ENA, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %16, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %16, align 4
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %75 = load i32, i32* @WM8400_FLL_CONTROL_1, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %129

81:                                               ; preds = %49
  %82 = load i32, i32* @WM8400_FLL_REF_FREQ, align 4
  %83 = load i32, i32* @WM8400_FLL_FRATIO_MASK, align 4
  %84 = or i32 %82, %83
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %16, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* @WM8400_FLL_FRAC, align 4
  %89 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %14, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %88, %90
  %92 = load i32, i32* %16, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %16, align 4
  %94 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %14, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @WM8400_FLL_REF_FREQ_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %16, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %16, align 4
  %100 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %101 = load i32, i32* @WM8400_FLL_CONTROL_1, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %100, i32 %101, i32 %102)
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %105 = load i32, i32* @WM8400_FLL_CONTROL_2, align 4
  %106 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %14, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 %107)
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %110 = load i32, i32* @WM8400_FLL_CONTROL_3, align 4
  %111 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %14, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %109, i32 %110, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %115 = load i32, i32* @WM8400_FLL_CONTROL_4, align 4
  %116 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %114, i32 %115)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* @WM8400_FLL_OUTDIV_MASK, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %16, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %16, align 4
  %121 = getelementptr inbounds %struct.fll_factors, %struct.fll_factors* %14, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %16, align 4
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %126 = load i32, i32* @WM8400_FLL_CONTROL_4, align 4
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %125, i32 %126, i32 %127)
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %81, %80, %44, %33
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local %struct.wm8400_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @fll_factors(%struct.wm8400_priv*, %struct.fll_factors*, i32, i32) #1

declare dso_local i32 @memset(%struct.fll_factors*, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
