; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_component_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5659.c_rt5659_set_component_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt5659_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5659_GLB_CLK = common dso_local global i32 0, align 4
@RT5659_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5659_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5659_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5659_PLL1_SRC_MCLK = common dso_local global i32 0, align 4
@RT5659_PLL1_SRC_BCLK1 = common dso_local global i32 0, align 4
@RT5659_PLL1_SRC_BCLK2 = common dso_local global i32 0, align 4
@RT5659_PLL1_SRC_BCLK3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5659_PLL_CTRL_1 = common dso_local global i32 0, align 4
@RT5659_PLL_N_SFT = common dso_local global i32 0, align 4
@RT5659_PLL_CTRL_2 = common dso_local global i32 0, align 4
@RT5659_PLL_M_SFT = common dso_local global i32 0, align 4
@RT5659_PLL_M_BP_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt5659_set_component_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5659_set_component_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt5659_priv*, align 8
  %13 = alloca %struct.rl6231_pll_code, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt5659_priv* %16, %struct.rt5659_priv** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %19 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %25 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %31 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %160

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
  %46 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %47 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %49 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @RT5659_GLB_CLK, align 4
  %52 = load i32, i32* @RT5659_SCLK_SRC_MASK, align 4
  %53 = load i32, i32* @RT5659_SCLK_SRC_MCLK, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %160

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %81 [
    i32 128, label %57
    i32 131, label %63
    i32 130, label %69
    i32 129, label %75
  ]

57:                                               ; preds = %55
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = load i32, i32* @RT5659_GLB_CLK, align 4
  %60 = load i32, i32* @RT5659_PLL1_SRC_MASK, align 4
  %61 = load i32, i32* @RT5659_PLL1_SRC_MCLK, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  br label %89

63:                                               ; preds = %55
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %65 = load i32, i32* @RT5659_GLB_CLK, align 4
  %66 = load i32, i32* @RT5659_PLL1_SRC_MASK, align 4
  %67 = load i32, i32* @RT5659_PLL1_SRC_BCLK1, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %67)
  br label %89

69:                                               ; preds = %55
  %70 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %71 = load i32, i32* @RT5659_GLB_CLK, align 4
  %72 = load i32, i32* @RT5659_PLL1_SRC_MASK, align 4
  %73 = load i32, i32* @RT5659_PLL1_SRC_BCLK2, align 4
  %74 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %70, i32 %71, i32 %72, i32 %73)
  br label %89

75:                                               ; preds = %55
  %76 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %77 = load i32, i32* @RT5659_GLB_CLK, align 4
  %78 = load i32, i32* @RT5659_PLL1_SRC_MASK, align 4
  %79 = load i32, i32* @RT5659_PLL1_SRC_BCLK3, align 4
  %80 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %76, i32 %77, i32 %78, i32 %79)
  br label %89

81:                                               ; preds = %55
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %83 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %160

89:                                               ; preds = %75, %69, %63, %57
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @rl6231_pll_calc(i32 %90, i32 %91, %struct.rl6231_pll_code* %13)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %97 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %14, align 4
  store i32 %101, i32* %6, align 4
  br label %160

102:                                              ; preds = %89
  %103 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %104 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %115

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  br label %115

115:                                              ; preds = %112, %111
  %116 = phi i32 [ 0, %111 ], [ %114, %112 ]
  %117 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %116, i32 %118, i32 %120)
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %123 = load i32, i32* @RT5659_PLL_CTRL_1, align 4
  %124 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RT5659_PLL_N_SFT, align 4
  %127 = shl i32 %125, %126
  %128 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %127, %129
  %131 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %122, i32 %123, i32 %130)
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %133 = load i32, i32* @RT5659_PLL_CTRL_2, align 4
  %134 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %115
  br label %141

138:                                              ; preds = %115
  %139 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  br label %141

141:                                              ; preds = %138, %137
  %142 = phi i32 [ 0, %137 ], [ %140, %138 ]
  %143 = load i32, i32* @RT5659_PLL_M_SFT, align 4
  %144 = shl i32 %142, %143
  %145 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @RT5659_PLL_M_BP_SFT, align 4
  %148 = shl i32 %146, %147
  %149 = or i32 %144, %148
  %150 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %132, i32 %133, i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %153 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %156 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.rt5659_priv*, %struct.rt5659_priv** %12, align 8
  %159 = getelementptr inbounds %struct.rt5659_priv, %struct.rt5659_priv* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %141, %95, %81, %41, %34
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local %struct.rt5659_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
