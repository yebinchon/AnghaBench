; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5663.c_rt5663_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5663_priv = type { i32, i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5663_GLB_CLK = common dso_local global i32 0, align 4
@RT5663_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5663_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5663_V2_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5663_V2_PLL1_SRC_SHIFT = common dso_local global i32 0, align 4
@RT5663_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5663_PLL1_SRC_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown CODEC Version\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5663_PLL_1 = common dso_local global i32 0, align 4
@RT5663_PLL_N_SHIFT = common dso_local global i32 0, align 4
@RT5663_PLL_2 = common dso_local global i32 0, align 4
@RT5663_PLL_M_SHIFT = common dso_local global i32 0, align 4
@RT5663_PLL_M_BP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5663_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5663_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.rt5663_priv*, align 8
  %14 = alloca %struct.rl6231_pll_code, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %20 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %20, align 8
  store %struct.snd_soc_component* %21, %struct.snd_soc_component** %12, align 8
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %23 = call %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %22)
  store %struct.rt5663_priv* %23, %struct.rt5663_priv** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %26 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %32 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %38 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %169

42:                                               ; preds = %35, %29, %5
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %62, label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %50 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %54 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %56 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %55, i32 0, i32 2
  store i32 0, i32* %56, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %58 = load i32, i32* @RT5663_GLB_CLK, align 4
  %59 = load i32, i32* @RT5663_SCLK_SRC_MASK, align 4
  %60 = load i32, i32* @RT5663_SCLK_SRC_MCLK, align 4
  %61 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %57, i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %6, align 4
  br label %169

62:                                               ; preds = %45
  %63 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %64 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %72 [
    i32 130, label %66
    i32 131, label %69
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @RT5663_V2_PLL1_SRC_MASK, align 4
  store i32 %67, i32* %16, align 4
  %68 = load i32, i32* @RT5663_V2_PLL1_SRC_SHIFT, align 4
  store i32 %68, i32* %17, align 4
  br label %79

69:                                               ; preds = %62
  %70 = load i32, i32* @RT5663_PLL1_SRC_MASK, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* @RT5663_PLL1_SRC_SHIFT, align 4
  store i32 %71, i32* %17, align 4
  br label %79

72:                                               ; preds = %62
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %74 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %169

79:                                               ; preds = %69, %66
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %83 [
    i32 128, label %81
    i32 129, label %82
  ]

81:                                               ; preds = %79
  store i32 0, i32* %18, align 4
  br label %91

82:                                               ; preds = %79
  store i32 1, i32* %18, align 4
  br label %91

83:                                               ; preds = %79
  %84 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %85 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %169

91:                                               ; preds = %82, %81
  %92 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %93 = load i32, i32* @RT5663_GLB_CLK, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %17, align 4
  %97 = shl i32 %95, %96
  %98 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %92, i32 %93, i32 %94, i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @rl6231_pll_calc(i32 %99, i32 %100, %struct.rl6231_pll_code* %14)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %91
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %106 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %6, align 4
  br label %169

111:                                              ; preds = %91
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %113 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %124

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  br label %124

124:                                              ; preds = %121, %120
  %125 = phi i32 [ 0, %120 ], [ %123, %121 ]
  %126 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %125, i32 %127, i32 %129)
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %132 = load i32, i32* @RT5663_PLL_1, align 4
  %133 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @RT5663_PLL_N_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %136, %138
  %140 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %131, i32 %132, i32 %139)
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %142 = load i32, i32* @RT5663_PLL_2, align 4
  %143 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %124
  br label %150

147:                                              ; preds = %124
  %148 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  br label %150

150:                                              ; preds = %147, %146
  %151 = phi i32 [ 0, %146 ], [ %149, %147 ]
  %152 = load i32, i32* @RT5663_PLL_M_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RT5663_PLL_M_BP_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %153, %157
  %159 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %141, i32 %142, i32 %158)
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %162 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %165 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.rt5663_priv*, %struct.rt5663_priv** %13, align 8
  %168 = getelementptr inbounds %struct.rt5663_priv, %struct.rt5663_priv* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %150, %104, %83, %72, %48, %41
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local %struct.rt5663_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @rl6231_pll_calc(i32, i32, %struct.rl6231_pll_code*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
