; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_dai_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5640.c_rt5640_set_dai_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.rt5640_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT5640_GLB_CLK = common dso_local global i32 0, align 4
@RT5640_SCLK_SRC_MASK = common dso_local global i32 0, align 4
@RT5640_SCLK_SRC_MCLK = common dso_local global i32 0, align 4
@RT5640_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT5640_PLL1_SRC_MCLK = common dso_local global i32 0, align 4
@RT5640_PLL1_SRC_BCLK1 = common dso_local global i32 0, align 4
@RT5640_PLL1_SRC_BCLK2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT5640_PLL_CTRL1 = common dso_local global i32 0, align 4
@RT5640_PLL_N_SFT = common dso_local global i32 0, align 4
@RT5640_PLL_CTRL2 = common dso_local global i32 0, align 4
@RT5640_PLL_M_SFT = common dso_local global i32 0, align 4
@RT5640_PLL_M_BP_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @rt5640_set_dai_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5640_set_dai_pll(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.rt5640_priv*, align 8
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
  %20 = call %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %19)
  store %struct.rt5640_priv* %20, %struct.rt5640_priv** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %23 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %29 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %35 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %158

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
  %50 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %51 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %53 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %52, i32 0, i32 2
  store i32 0, i32* %53, align 4
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %55 = load i32, i32* @RT5640_GLB_CLK, align 4
  %56 = load i32, i32* @RT5640_SCLK_SRC_MASK, align 4
  %57 = load i32, i32* @RT5640_SCLK_SRC_MCLK, align 4
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %56, i32 %57)
  store i32 0, i32* %6, align 4
  br label %158

59:                                               ; preds = %42
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %79 [
    i32 128, label %61
    i32 130, label %67
    i32 129, label %73
  ]

61:                                               ; preds = %59
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %63 = load i32, i32* @RT5640_GLB_CLK, align 4
  %64 = load i32, i32* @RT5640_PLL1_SRC_MASK, align 4
  %65 = load i32, i32* @RT5640_PLL1_SRC_MCLK, align 4
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %64, i32 %65)
  br label %87

67:                                               ; preds = %59
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %69 = load i32, i32* @RT5640_GLB_CLK, align 4
  %70 = load i32, i32* @RT5640_PLL1_SRC_MASK, align 4
  %71 = load i32, i32* @RT5640_PLL1_SRC_BCLK1, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %70, i32 %71)
  br label %87

73:                                               ; preds = %59
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %75 = load i32, i32* @RT5640_GLB_CLK, align 4
  %76 = load i32, i32* @RT5640_PLL1_SRC_MASK, align 4
  %77 = load i32, i32* @RT5640_PLL1_SRC_BCLK2, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %76, i32 %77)
  br label %87

79:                                               ; preds = %59
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %81 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %158

87:                                               ; preds = %73, %67, %61
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
  br label %158

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
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %121 = load i32, i32* @RT5640_PLL_CTRL1, align 4
  %122 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RT5640_PLL_N_SFT, align 4
  %125 = shl i32 %123, %124
  %126 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %125, %127
  %129 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %120, i32 %121, i32 %128)
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %131 = load i32, i32* @RT5640_PLL_CTRL2, align 4
  %132 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %113
  br label %139

136:                                              ; preds = %113
  %137 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  br label %139

139:                                              ; preds = %136, %135
  %140 = phi i32 [ 0, %135 ], [ %138, %136 ]
  %141 = load i32, i32* @RT5640_PLL_M_SFT, align 4
  %142 = shl i32 %140, %141
  %143 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %14, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @RT5640_PLL_M_BP_SFT, align 4
  %146 = shl i32 %144, %145
  %147 = or i32 %142, %146
  %148 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %130, i32 %131, i32 %147)
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %151 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %154 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* %9, align 4
  %156 = load %struct.rt5640_priv*, %struct.rt5640_priv** %13, align 8
  %157 = getelementptr inbounds %struct.rt5640_priv, %struct.rt5640_priv* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %139, %93, %79, %45, %38
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local %struct.rt5640_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
