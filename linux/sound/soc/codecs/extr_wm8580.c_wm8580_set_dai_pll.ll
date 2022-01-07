; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8580.c_wm8580_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.wm8580_priv = type { %struct.pll_state, %struct.pll_state }
%struct.pll_state = type { i32, i32 }
%struct._pll_div = type { i32, i32, i32, i32, i32 }

@WM8580_PWRDN2_PLLAPD = common dso_local global i32 0, align 4
@WM8580_PWRDN2_PLLBPD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WM8580_PWRDN2 = common dso_local global i32 0, align 4
@WM8580_PLLA1 = common dso_local global i64 0, align 8
@WM8580_PLLA2 = common dso_local global i64 0, align 8
@WM8580_PLLA3 = common dso_local global i64 0, align 8
@WM8580_PLLA4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @wm8580_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8580_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_soc_component*, align 8
  %14 = alloca %struct.wm8580_priv*, align 8
  %15 = alloca %struct.pll_state*, align 8
  %16 = alloca %struct._pll_div, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %21, align 8
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %13, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %24 = call %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %23)
  store %struct.wm8580_priv* %24, %struct.wm8580_priv** %14, align 8
  %25 = call i32 @memset(%struct._pll_div* %16, i32 0, i32 20)
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %35 [
    i32 129, label %27
    i32 128, label %31
  ]

27:                                               ; preds = %5
  %28 = load %struct.wm8580_priv*, %struct.wm8580_priv** %14, align 8
  %29 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %28, i32 0, i32 1
  store %struct.pll_state* %29, %struct.pll_state** %15, align 8
  store i32 0, i32* %12, align 4
  %30 = load i32, i32* @WM8580_PWRDN2_PLLAPD, align 4
  store i32 %30, i32* %18, align 4
  br label %38

31:                                               ; preds = %5
  %32 = load %struct.wm8580_priv*, %struct.wm8580_priv** %14, align 8
  %33 = getelementptr inbounds %struct.wm8580_priv, %struct.wm8580_priv* %32, i32 0, i32 0
  store %struct.pll_state* %33, %struct.pll_state** %15, align 8
  store i32 4, i32* %12, align 4
  %34 = load i32, i32* @WM8580_PWRDN2_PLLBPD, align 4
  store i32 %34, i32* %18, align 4
  br label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %136

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @pll_factors(%struct._pll_div* %16, i32 %45, i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %6, align 4
  br label %136

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %41, %38
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.pll_state*, %struct.pll_state** %15, align 8
  %56 = getelementptr inbounds %struct.pll_state, %struct.pll_state* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.pll_state*, %struct.pll_state** %15, align 8
  %59 = getelementptr inbounds %struct.pll_state, %struct.pll_state* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %61 = load i32, i32* @WM8580_PWRDN2, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67, %53
  store i32 0, i32* %6, align 4
  br label %136

71:                                               ; preds = %67
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %73 = load i64, i64* @WM8580_PLLA1, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %16, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 511
  %80 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %72, i64 %76, i32 %79)
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %82 = load i64, i64* @WM8580_PLLA2, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %16, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 9
  %89 = and i32 %88, 511
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %81, i64 %85, i32 %89)
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %92 = load i64, i64* @WM8580_PLLA3, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = ashr i32 %97, 18
  %99 = and i32 %98, 15
  %100 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %16, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 4
  %103 = or i32 %99, %102
  %104 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %91, i64 %95, i32 %103)
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %106 = load i64, i64* @WM8580_PLLA4, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %105, i64 %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = and i32 %111, -28
  store i32 %112, i32* %17, align 4
  %113 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %16, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %16, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 1
  %118 = or i32 %114, %117
  %119 = getelementptr inbounds %struct._pll_div, %struct._pll_div* %16, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 3
  %122 = or i32 %118, %121
  %123 = load i32, i32* %17, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %17, align 4
  %125 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %126 = load i64, i64* @WM8580_PLLA4, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = load i32, i32* %17, align 4
  %131 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %125, i64 %129, i32 %130)
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  %133 = load i32, i32* @WM8580_PWRDN2, align 4
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %133, i32 %134, i32 0)
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %71, %70, %50, %35
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.wm8580_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @memset(%struct._pll_div*, i32, i32) #1

declare dso_local i32 @pll_factors(%struct._pll_div*, i32, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i64, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
