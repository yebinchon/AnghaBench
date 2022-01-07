; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5677_priv = type { i32, i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5677_GLB_CLK1 = common dso_local global i32 0, align 4
@RT5677_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5677_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5677_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5677_PLL1_SRC_MCLK = common dso_local global i32 0, align 4
@RT5677_PLL1_SRC_BCLK1 = common dso_local global i32 0, align 4
@RT5677_PLL1_SRC_BCLK2 = common dso_local global i32 0, align 4
@RT5677_PLL1_SRC_BCLK3 = common dso_local global i32 0, align 4
@RT5677_PLL1_SRC_BCLK4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"m_bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5677_PLL1_CTRL1 = common dso_local global i32 0, align 4
@RT5677_PLL_N_SFT = common dso_local global i32 0, align 4
@RT5677_PLL1_CTRL2 = common dso_local global i32 0, align 4
@RT5677_PLL_M_SFT = common dso_local global i32 0, align 4
@RT5677_PLL_M_BP_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5677_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.rt5677_priv*, align 8
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
  %20 = call %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5677_priv* %20, %struct.rt5677_priv** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %23 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %29 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %35 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %192

39:                                               ; preds = %32, %26, %5
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %51 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %53 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %55 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RT5677_GLB_CLK1, align 4
  %58 = load i32, i32* @RT5677_SCLK_SRC_MASK, align 4
  %59 = load i32, i32* @RT5677_SCLK_SRC_MCLK, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %6, align 4
  br label %192

61:                                               ; preds = %42
  %62 = load i32, i32* %9, align 4
  switch i32 %62, label %109 [
    i32 128, label %63
    i32 132, label %71
    i32 131, label %71
    i32 130, label %71
    i32 129, label %71
  ]

63:                                               ; preds = %61
  %64 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %65 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @RT5677_GLB_CLK1, align 4
  %68 = load i32, i32* @RT5677_PLL1_SRC_MASK, align 4
  %69 = load i32, i32* @RT5677_PLL1_SRC_MCLK, align 4
  %70 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 %68, i32 %69)
  br label %117

71:                                               ; preds = %61, %61, %61, %61
  %72 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %107 [
    i32 136, label %75
    i32 135, label %83
    i32 134, label %91
    i32 133, label %99
  ]

75:                                               ; preds = %71
  %76 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %77 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RT5677_GLB_CLK1, align 4
  %80 = load i32, i32* @RT5677_PLL1_SRC_MASK, align 4
  %81 = load i32, i32* @RT5677_PLL1_SRC_BCLK1, align 4
  %82 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 %81)
  br label %108

83:                                               ; preds = %71
  %84 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %85 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RT5677_GLB_CLK1, align 4
  %88 = load i32, i32* @RT5677_PLL1_SRC_MASK, align 4
  %89 = load i32, i32* @RT5677_PLL1_SRC_BCLK2, align 4
  %90 = call i32 @regmap_update_bits(i32 %86, i32 %87, i32 %88, i32 %89)
  br label %108

91:                                               ; preds = %71
  %92 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %93 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RT5677_GLB_CLK1, align 4
  %96 = load i32, i32* @RT5677_PLL1_SRC_MASK, align 4
  %97 = load i32, i32* @RT5677_PLL1_SRC_BCLK3, align 4
  %98 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %96, i32 %97)
  br label %108

99:                                               ; preds = %71
  %100 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %101 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @RT5677_GLB_CLK1, align 4
  %104 = load i32, i32* @RT5677_PLL1_SRC_MASK, align 4
  %105 = load i32, i32* @RT5677_PLL1_SRC_BCLK4, align 4
  %106 = call i32 @regmap_update_bits(i32 %102, i32 %103, i32 %104, i32 %105)
  br label %108

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107, %99, %91, %83, %75
  br label %117

109:                                              ; preds = %61
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %111 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %192

117:                                              ; preds = %108, %63
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @rt5677_pll_calc(i32 %118, i32 %119, %struct.rl6231_pll_code* %14)
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %125 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %15, align 4
  store i32 %129, i32* %6, align 4
  br label %192

130:                                              ; preds = %117
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %132 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  br label %143

140:                                              ; preds = %130
  %141 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  br label %143

143:                                              ; preds = %140, %139
  %144 = phi i32 [ 0, %139 ], [ %142, %140 ]
  %145 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32, i8*, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %144, i32 %146, i32 %148)
  %150 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %151 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RT5677_PLL1_CTRL1, align 4
  %154 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @RT5677_PLL_N_SFT, align 4
  %157 = shl i32 %155, %156
  %158 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %157, %159
  %161 = call i32 @regmap_write(i32 %152, i32 %153, i32 %160)
  %162 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %163 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @RT5677_PLL1_CTRL2, align 4
  %166 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %143
  br label %173

170:                                              ; preds = %143
  %171 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  br label %173

173:                                              ; preds = %170, %169
  %174 = phi i32 [ 0, %169 ], [ %172, %170 ]
  %175 = load i32, i32* @RT5677_PLL_M_SFT, align 4
  %176 = shl i32 %174, %175
  %177 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @RT5677_PLL_M_BP_SFT, align 4
  %180 = shl i32 %178, %179
  %181 = or i32 %176, %180
  %182 = call i32 @regmap_write(i32 %164, i32 %165, i32 %181)
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %185 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %188 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.rt5677_priv*, %struct.rt5677_priv** %13, align 8
  %191 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %173, %123, %109, %45, %38
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local %struct.rt5677_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @rt5677_pll_calc(i32, i32, %struct.rl6231_pll_code*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
