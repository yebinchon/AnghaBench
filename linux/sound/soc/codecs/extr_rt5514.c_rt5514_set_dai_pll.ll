; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5514_priv = type { i32, i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5514_CLK_CTRL2 = common dso_local global i32 0, align 4
@RT5514_CLK_SYS_PRE_SEL_MASK = common dso_local global i32 0, align 4
@RT5514_CLK_SYS_PRE_SEL_MCLK = common dso_local global i32 0, align 4
@RT5514_PLL_SOURCE_CTRL = common dso_local global i32 0, align 4
@RT5514_PLL_1_SEL_MASK = common dso_local global i32 0, align 4
@RT5514_PLL_1_SEL_MCLK = common dso_local global i32 0, align 4
@RT5514_PLL_1_SEL_SCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5514_ANA_CTRL_PLL1_1 = common dso_local global i32 0, align 4
@RT5514_PLL_K_SFT = common dso_local global i32 0, align 4
@RT5514_PLL_N_SFT = common dso_local global i32 0, align 4
@RT5514_PLL_M_SFT = common dso_local global i32 0, align 4
@RT5514_ANA_CTRL_PLL1_2 = common dso_local global i32 0, align 4
@RT5514_PLL_M_BP = common dso_local global i32 0, align 4
@RT5514_PLL_M_BP_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5514_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.rt5514_priv*, align 8
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
  %20 = call %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5514_priv* %20, %struct.rt5514_priv** %13, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %23, %5
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %32 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %34 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %36 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @RT5514_CLK_CTRL2, align 4
  %39 = load i32, i32* @RT5514_CLK_SYS_PRE_SEL_MASK, align 4
  %40 = load i32, i32* @RT5514_CLK_SYS_PRE_SEL_MCLK, align 4
  %41 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 0, i32* %6, align 4
  br label %165

42:                                               ; preds = %23
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %45 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %51 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %57 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %165

61:                                               ; preds = %54, %48, %42
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %79 [
    i32 128, label %63
    i32 129, label %71
  ]

63:                                               ; preds = %61
  %64 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %65 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RT5514_PLL_SOURCE_CTRL, align 4
  %68 = load i32, i32* @RT5514_PLL_1_SEL_MASK, align 4
  %69 = load i32, i32* @RT5514_PLL_1_SEL_MCLK, align 4
  %70 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %69)
  br label %87

71:                                               ; preds = %61
  %72 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %73 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @RT5514_PLL_SOURCE_CTRL, align 4
  %76 = load i32, i32* @RT5514_PLL_1_SEL_MASK, align 4
  %77 = load i32, i32* @RT5514_PLL_1_SEL_SCLK, align 4
  %78 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 %77)
  br label %87

79:                                               ; preds = %61
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %81 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %165

87:                                               ; preds = %71, %63
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @rl6231_pll_calc(i32 %88, i32 %89, %struct.rl6231_pll_code* %14)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %95 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %6, align 4
  br label %165

100:                                              ; preds = %87
  %101 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %102 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %113

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  br label %113

113:                                              ; preds = %110, %109
  %114 = phi i32 [ 0, %109 ], [ %112, %110 ]
  %115 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %114, i32 %116, i32 %118)
  %120 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %121 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @RT5514_ANA_CTRL_PLL1_1, align 4
  %124 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @RT5514_PLL_K_SFT, align 4
  %127 = shl i32 %125, %126
  %128 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @RT5514_PLL_N_SFT, align 4
  %131 = shl i32 %129, %130
  %132 = or i32 %127, %131
  %133 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %113
  br label %140

137:                                              ; preds = %113
  %138 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  br label %140

140:                                              ; preds = %137, %136
  %141 = phi i32 [ 0, %136 ], [ %139, %137 ]
  %142 = load i32, i32* @RT5514_PLL_M_SFT, align 4
  %143 = shl i32 %141, %142
  %144 = or i32 %132, %143
  %145 = call i32 @regmap_write(i32 %122, i32 %123, i32 %144)
  %146 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %147 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @RT5514_ANA_CTRL_PLL1_2, align 4
  %150 = load i32, i32* @RT5514_PLL_M_BP, align 4
  %151 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RT5514_PLL_M_BP_SFT, align 4
  %154 = shl i32 %152, %153
  %155 = call i32 @regmap_update_bits(i32 %148, i32 %149, i32 %150, i32 %154)
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %158 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %161 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.rt5514_priv*, %struct.rt5514_priv** %13, align 8
  %164 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 4
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %140, %93, %79, %60, %26
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local %struct.rt5514_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rl6231_pll_calc(i32, i32, %struct.rl6231_pll_code*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
