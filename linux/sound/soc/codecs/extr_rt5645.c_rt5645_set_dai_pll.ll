; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5645.c_rt5645_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5645_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5645_GLB_CLK = common dso_local global i32 0, align 4
@RT5645_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5645_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5645_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5645_PLL1_SRC_MCLK = common dso_local global i32 0, align 4
@RT5645_PLL1_SRC_BCLK1 = common dso_local global i32 0, align 4
@RT5645_PLL1_SRC_BCLK2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid dai->id: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5645_PLL_CTRL1 = common dso_local global i32 0, align 4
@RT5645_PLL_N_SFT = common dso_local global i32 0, align 4
@RT5645_PLL_CTRL2 = common dso_local global i32 0, align 4
@RT5645_PLL_M_SFT = common dso_local global i32 0, align 4
@RT5645_PLL_M_BP_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5645_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5645_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.rt5645_priv*, align 8
  %14 = alloca %struct.rl6231_pll_code, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %20 = call %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5645_priv* %20, %struct.rt5645_priv** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %23 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %29 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %35 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %173

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
  %50 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %51 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %53 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %55 = load i32, i32* @RT5645_GLB_CLK, align 4
  %56 = load i32, i32* @RT5645_SCLK_SRC_MASK, align 4
  %57 = load i32, i32* @RT5645_SCLK_SRC_MCLK, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %173

59:                                               ; preds = %42
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %94 [
    i32 128, label %61
    i32 130, label %67
    i32 129, label %67
  ]

61:                                               ; preds = %59
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %63 = load i32, i32* @RT5645_GLB_CLK, align 4
  %64 = load i32, i32* @RT5645_PLL1_SRC_MASK, align 4
  %65 = load i32, i32* @RT5645_PLL1_SRC_MCLK, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %65)
  br label %102

67:                                               ; preds = %59, %59
  %68 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %69 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %83 [
    i32 132, label %71
    i32 131, label %77
  ]

71:                                               ; preds = %67
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %73 = load i32, i32* @RT5645_GLB_CLK, align 4
  %74 = load i32, i32* @RT5645_PLL1_SRC_MASK, align 4
  %75 = load i32, i32* @RT5645_PLL1_SRC_BCLK1, align 4
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %72, i32 %73, i32 %74, i32 %75)
  br label %93

77:                                               ; preds = %67
  %78 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %79 = load i32, i32* @RT5645_GLB_CLK, align 4
  %80 = load i32, i32* @RT5645_PLL1_SRC_MASK, align 4
  %81 = load i32, i32* @RT5645_PLL1_SRC_BCLK2, align 4
  %82 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %78, i32 %79, i32 %80, i32 %81)
  br label %93

83:                                               ; preds = %67
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %88 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %173

93:                                               ; preds = %77, %71
  br label %102

94:                                               ; preds = %59
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %96 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %173

102:                                              ; preds = %93, %61
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @rl6231_pll_calc(i32 %103, i32 %104, %struct.rl6231_pll_code* %14)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %102
  %109 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %110 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @dev_err(i32 %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %6, align 4
  br label %173

115:                                              ; preds = %102
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %117 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %128

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  br label %128

128:                                              ; preds = %125, %124
  %129 = phi i32 [ 0, %124 ], [ %127, %125 ]
  %130 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, ...) @dev_dbg(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %129, i32 %131, i32 %133)
  %135 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %136 = load i32, i32* @RT5645_PLL_CTRL1, align 4
  %137 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RT5645_PLL_N_SFT, align 4
  %140 = shl i32 %138, %139
  %141 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %140, %142
  %144 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %135, i32 %136, i32 %143)
  %145 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %146 = load i32, i32* @RT5645_PLL_CTRL2, align 4
  %147 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %128
  br label %154

151:                                              ; preds = %128
  %152 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  br label %154

154:                                              ; preds = %151, %150
  %155 = phi i32 [ 0, %150 ], [ %153, %151 ]
  %156 = load i32, i32* @RT5645_PLL_M_SFT, align 4
  %157 = shl i32 %155, %156
  %158 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @RT5645_PLL_M_BP_SFT, align 4
  %161 = shl i32 %159, %160
  %162 = or i32 %157, %161
  %163 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %145, i32 %146, i32 %162)
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %166 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %169 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.rt5645_priv*, %struct.rt5645_priv** %13, align 8
  %172 = getelementptr inbounds %struct.rt5645_priv, %struct.rt5645_priv* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %154, %108, %94, %83, %45, %38
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.rt5645_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
