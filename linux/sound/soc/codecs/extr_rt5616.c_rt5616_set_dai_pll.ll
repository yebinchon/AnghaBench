; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5616.c_rt5616_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5616_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5616_GLB_CLK = common dso_local global i32 0, align 4
@RT5616_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5616_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5616_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5616_PLL1_SRC_MCLK = common dso_local global i32 0, align 4
@RT5616_PLL1_SRC_BCLK1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5616_PLL_CTRL1 = common dso_local global i32 0, align 4
@RT5616_PLL_N_SFT = common dso_local global i32 0, align 4
@RT5616_PLL_CTRL2 = common dso_local global i32 0, align 4
@RT5616_PLL_M_SFT = common dso_local global i32 0, align 4
@RT5616_PLL_M_BP_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5616_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5616_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.rt5616_priv*, align 8
  %14 = alloca %struct.rl6231_pll_code, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %20 = call %struct.rt5616_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5616_priv* %20, %struct.rt5616_priv** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %23 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %29 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %35 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %152

39:                                               ; preds = %32, %26, %5
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %51 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %53 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %55 = load i32, i32* @RT5616_GLB_CLK, align 4
  %56 = load i32, i32* @RT5616_SCLK_SRC_MASK, align 4
  %57 = load i32, i32* @RT5616_SCLK_SRC_MCLK, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %152

59:                                               ; preds = %42
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %73 [
    i32 128, label %61
    i32 130, label %67
    i32 129, label %67
  ]

61:                                               ; preds = %59
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %63 = load i32, i32* @RT5616_GLB_CLK, align 4
  %64 = load i32, i32* @RT5616_PLL1_SRC_MASK, align 4
  %65 = load i32, i32* @RT5616_PLL1_SRC_MCLK, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %65)
  br label %81

67:                                               ; preds = %59, %59
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %69 = load i32, i32* @RT5616_GLB_CLK, align 4
  %70 = load i32, i32* @RT5616_PLL1_SRC_MASK, align 4
  %71 = load i32, i32* @RT5616_PLL1_SRC_BCLK1, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %70, i32 %71)
  br label %81

73:                                               ; preds = %59
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %152

81:                                               ; preds = %67, %61
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @rl6231_pll_calc(i32 %82, i32 %83, %struct.rl6231_pll_code* %14)
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %89 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %6, align 4
  br label %152

94:                                               ; preds = %81
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %96 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %107

104:                                              ; preds = %94
  %105 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  br label %107

107:                                              ; preds = %104, %103
  %108 = phi i32 [ 0, %103 ], [ %106, %104 ]
  %109 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i8*, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %108, i32 %110, i32 %112)
  %114 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %115 = load i32, i32* @RT5616_PLL_CTRL1, align 4
  %116 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @RT5616_PLL_N_SFT, align 4
  %119 = shl i32 %117, %118
  %120 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %119, %121
  %123 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %114, i32 %115, i32 %122)
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %125 = load i32, i32* @RT5616_PLL_CTRL2, align 4
  %126 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %107
  br label %133

130:                                              ; preds = %107
  %131 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  br label %133

133:                                              ; preds = %130, %129
  %134 = phi i32 [ 0, %129 ], [ %132, %130 ]
  %135 = load i32, i32* @RT5616_PLL_M_SFT, align 4
  %136 = shl i32 %134, %135
  %137 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RT5616_PLL_M_BP_SFT, align 4
  %140 = shl i32 %138, %139
  %141 = or i32 %136, %140
  %142 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %124, i32 %125, i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %145 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %148 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.rt5616_priv*, %struct.rt5616_priv** %13, align 8
  %151 = getelementptr inbounds %struct.rt5616_priv, %struct.rt5616_priv* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %133, %87, %73, %45, %38
  %153 = load i32, i32* %6, align 4
  ret i32 %153
}

declare dso_local %struct.rt5616_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
