; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_fll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8900.c_wm8900_set_fll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm8900_priv = type { i32, i32 }
%struct._fll_div = type { i32, i32, i32, i32, i64 }

@WM8900_REG_POWER1 = common dso_local global i32 0, align 4
@WM8900_REG_POWER1_FLL_ENA = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1 = common dso_local global i32 0, align 4
@WM8900_REG_CLOCKING1_MCLK_SRC = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL1 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL1_OSC_ENA = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL4 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL5 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL2 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL3 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL6 = common dso_local global i32 0, align 4
@WM8900_REG_FLLCTL6_FLL_SLOW_LOCK_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32)* @wm8900_set_fll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8900_set_fll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wm8900_priv*, align 8
  %11 = alloca %struct._fll_div, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %13 = call %struct.wm8900_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %12)
  store %struct.wm8900_priv* %13, %struct.wm8900_priv** %10, align 8
  %14 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %15 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %21 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %133

26:                                               ; preds = %19, %4
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %28 = load i32, i32* @WM8900_REG_POWER1, align 4
  %29 = load i32, i32* @WM8900_REG_POWER1_FLL_ENA, align 4
  %30 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %27, i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %38 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %39 = load i32, i32* @WM8900_REG_CLOCKING1_MCLK_SRC, align 4
  %40 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %42 = load i32, i32* @WM8900_REG_FLLCTL1, align 4
  %43 = load i32, i32* @WM8900_REG_FLLCTL1_OSC_ENA, align 4
  %44 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %41, i32 %42, i32 %43, i32 0)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %47 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %50 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %5, align 4
  br label %133

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @fll_factors(%struct._fll_div* %11, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %127

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %60 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.wm8900_priv*, %struct.wm8900_priv** %10, align 8
  %63 = getelementptr inbounds %struct.wm8900_priv, %struct.wm8900_priv* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %65 = load i32, i32* @WM8900_REG_FLLCTL1, align 4
  %66 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @WM8900_REG_FLLCTL1_OSC_ENA, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %64, i32 %65, i32 %69)
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %72 = load i32, i32* @WM8900_REG_FLLCTL4, align 4
  %73 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 5
  %76 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %71, i32 %72, i32 %75)
  %77 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %78 = load i32, i32* @WM8900_REG_FLLCTL5, align 4
  %79 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 6
  %82 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 31
  %85 = or i32 %81, %84
  %86 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %77, i32 %78, i32 %85)
  %87 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %57
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %92 = load i32, i32* @WM8900_REG_FLLCTL2, align 4
  %93 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 8
  %96 = or i32 %95, 256
  %97 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i32 %92, i32 %96)
  %98 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %99 = load i32, i32* @WM8900_REG_FLLCTL3, align 4
  %100 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 255
  %103 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %98, i32 %99, i32 %102)
  br label %108

104:                                              ; preds = %57
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %106 = load i32, i32* @WM8900_REG_FLLCTL2, align 4
  %107 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %104, %90
  %109 = getelementptr inbounds %struct._fll_div, %struct._fll_div* %11, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %114 = load i32, i32* @WM8900_REG_FLLCTL6, align 4
  %115 = load i32, i32* @WM8900_REG_FLLCTL6_FLL_SLOW_LOCK_REF, align 4
  %116 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %113, i32 %114, i32 %115)
  br label %121

117:                                              ; preds = %108
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %119 = load i32, i32* @WM8900_REG_FLLCTL6, align 4
  %120 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %118, i32 %119, i32 0)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %123 = load i32, i32* @WM8900_REG_POWER1, align 4
  %124 = load i32, i32* @WM8900_REG_POWER1_FLL_ENA, align 4
  %125 = load i32, i32* @WM8900_REG_POWER1_FLL_ENA, align 4
  %126 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %122, i32 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %56
  %128 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %129 = load i32, i32* @WM8900_REG_CLOCKING1, align 4
  %130 = load i32, i32* @WM8900_REG_CLOCKING1_MCLK_SRC, align 4
  %131 = load i32, i32* @WM8900_REG_CLOCKING1_MCLK_SRC, align 4
  %132 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %128, i32 %129, i32 %130, i32 %131)
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %36, %25
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.wm8900_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @fll_factors(%struct._fll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
