; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_component_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5682.c_rt5682_set_component_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5682_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5682_GLB_CLK = common dso_local global i32 0, align 4
@RT5682_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5682_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5682_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5682_PLL1_SRC_MCLK = common dso_local global i32 0, align 4
@RT5682_PLL1_SRC_BCLK1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL Source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5682_PLL_CTRL_1 = common dso_local global i32 0, align 4
@RT5682_PLL_N_SFT = common dso_local global i32 0, align 4
@RT5682_PLL_CTRL_2 = common dso_local global i32 0, align 4
@RT5682_PLL_M_SFT = common dso_local global i32 0, align 4
@RT5682_PLL_M_BP_SFT = common dso_local global i32 0, align 4
@RT5682_PLL_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt5682_set_component_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5682_set_component_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt5682_priv*, align 8
  %13 = alloca %struct.rl6231_pll_code, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt5682_priv* %16, %struct.rt5682_priv** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %19 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %25 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %31 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %150

35:                                               ; preds = %28, %22, %5
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %47 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %49 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @RT5682_GLB_CLK, align 4
  %52 = load i32, i32* @RT5682_SCLK_SRC_MASK, align 4
  %53 = load i32, i32* @RT5682_SCLK_SRC_MCLK, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %150

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %69 [
    i32 128, label %57
    i32 129, label %63
  ]

57:                                               ; preds = %55
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = load i32, i32* @RT5682_GLB_CLK, align 4
  %60 = load i32, i32* @RT5682_PLL1_SRC_MASK, align 4
  %61 = load i32, i32* @RT5682_PLL1_SRC_MCLK, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  br label %77

63:                                               ; preds = %55
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %65 = load i32, i32* @RT5682_GLB_CLK, align 4
  %66 = load i32, i32* @RT5682_PLL1_SRC_MASK, align 4
  %67 = load i32, i32* @RT5682_PLL1_SRC_BCLK1, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %67)
  br label %77

69:                                               ; preds = %55
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %71 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %150

77:                                               ; preds = %63, %57
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @rl6231_pll_calc(i32 %78, i32 %79, %struct.rl6231_pll_code* %13)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %6, align 4
  br label %150

90:                                               ; preds = %77
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %92 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %103

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ 0, %99 ], [ %102, %100 ]
  %105 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %104, i32 %106, i32 %108)
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %111 = load i32, i32* @RT5682_PLL_CTRL_1, align 4
  %112 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RT5682_PLL_N_SFT, align 4
  %115 = shl i32 %113, %114
  %116 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %115, %117
  %119 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %110, i32 %111, i32 %118)
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %121 = load i32, i32* @RT5682_PLL_CTRL_2, align 4
  %122 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %103
  br label %129

126:                                              ; preds = %103
  %127 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  br label %129

129:                                              ; preds = %126, %125
  %130 = phi i32 [ 0, %125 ], [ %128, %126 ]
  %131 = load i32, i32* @RT5682_PLL_M_SFT, align 4
  %132 = shl i32 %130, %131
  %133 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RT5682_PLL_M_BP_SFT, align 4
  %136 = shl i32 %134, %135
  %137 = or i32 %132, %136
  %138 = load i32, i32* @RT5682_PLL_RST, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %120, i32 %121, i32 %139)
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %143 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %146 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.rt5682_priv*, %struct.rt5682_priv** %12, align 8
  %149 = getelementptr inbounds %struct.rt5682_priv, %struct.rt5682_priv* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %129, %83, %69, %41, %34
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local %struct.rt5682_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rl6231_pll_calc(i32, i32, %struct.rl6231_pll_code*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
