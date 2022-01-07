; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_set_component_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1305.c_rt1305_set_component_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt1305_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT1305_CLK_1 = common dso_local global i32 0, align 4
@RT1305_SEL_FS_SYS_PRE_MASK = common dso_local global i32 0, align 4
@RT1305_SEL_PLL_SRC_1_MASK = common dso_local global i32 0, align 4
@RT1305_SEL_FS_SYS_PRE_PLL = common dso_local global i32 0, align 4
@RT1305_SEL_PLL_SRC_1_BCLK = common dso_local global i32 0, align 4
@RT1305_SEL_PLL_SRC_2_MASK = common dso_local global i32 0, align 4
@RT1305_DIV_PLL_SRC_2_MASK = common dso_local global i32 0, align 4
@RT1305_SEL_PLL_SRC_2_MCLK = common dso_local global i32 0, align 4
@RT1305_SEL_PLL_SRC_1_PLL2 = common dso_local global i32 0, align 4
@RT1305_CLOCK_DETECT = common dso_local global i32 0, align 4
@RT1305_SEL_CLK_DET_SRC_MASK = common dso_local global i32 0, align 4
@RT1305_SEL_CLK_DET_SRC_MCLK = common dso_local global i32 0, align 4
@RT1305_SEL_PLL_SRC_2_RCCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL Source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT1305_PLL1_1 = common dso_local global i32 0, align 4
@RT1305_PLL_1_M_SFT = common dso_local global i32 0, align 4
@RT1305_PLL_1_M_BYPASS_SFT = common dso_local global i32 0, align 4
@RT1305_PLL1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt1305_set_component_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1305_set_component_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt1305_priv*, align 8
  %13 = alloca %struct.rl6231_pll_code, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.rt1305_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt1305_priv* %16, %struct.rt1305_priv** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %19 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %25 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %31 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %173

35:                                               ; preds = %28, %22, %5
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %47 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %49 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @RT1305_CLK_1, align 4
  %52 = load i32, i32* @RT1305_SEL_FS_SYS_PRE_MASK, align 4
  %53 = load i32, i32* @RT1305_SEL_PLL_SRC_1_MASK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @RT1305_SEL_FS_SYS_PRE_PLL, align 4
  %56 = load i32, i32* @RT1305_SEL_PLL_SRC_1_BCLK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %54, i32 %57)
  store i32 0, i32* %6, align 4
  br label %173

59:                                               ; preds = %38
  %60 = load i32, i32* %9, align 4
  switch i32 %60, label %96 [
    i32 129, label %61
    i32 130, label %78
    i32 128, label %84
  ]

61:                                               ; preds = %59
  %62 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %63 = load i32, i32* @RT1305_CLK_1, align 4
  %64 = load i32, i32* @RT1305_SEL_PLL_SRC_2_MASK, align 4
  %65 = load i32, i32* @RT1305_SEL_PLL_SRC_1_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RT1305_DIV_PLL_SRC_2_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RT1305_SEL_PLL_SRC_2_MCLK, align 4
  %70 = load i32, i32* @RT1305_SEL_PLL_SRC_1_PLL2, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %62, i32 %63, i32 %68, i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %74 = load i32, i32* @RT1305_CLOCK_DETECT, align 4
  %75 = load i32, i32* @RT1305_SEL_CLK_DET_SRC_MASK, align 4
  %76 = load i32, i32* @RT1305_SEL_CLK_DET_SRC_MCLK, align 4
  %77 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %73, i32 %74, i32 %75, i32 %76)
  br label %104

78:                                               ; preds = %59
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %80 = load i32, i32* @RT1305_CLK_1, align 4
  %81 = load i32, i32* @RT1305_SEL_PLL_SRC_1_MASK, align 4
  %82 = load i32, i32* @RT1305_SEL_PLL_SRC_1_BCLK, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  br label %104

84:                                               ; preds = %59
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %86 = load i32, i32* @RT1305_CLK_1, align 4
  %87 = load i32, i32* @RT1305_SEL_PLL_SRC_2_MASK, align 4
  %88 = load i32, i32* @RT1305_SEL_PLL_SRC_1_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RT1305_DIV_PLL_SRC_2_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @RT1305_SEL_PLL_SRC_2_RCCLK, align 4
  %93 = load i32, i32* @RT1305_SEL_PLL_SRC_1_PLL2, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %91, i32 %94)
  store i32 98304000, i32* %10, align 4
  br label %104

96:                                               ; preds = %59
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %173

104:                                              ; preds = %84, %78, %61
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @rl6231_pll_calc(i32 %105, i32 %106, %struct.rl6231_pll_code* %13)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %112 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %173

117:                                              ; preds = %104
  %118 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %119 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %130

127:                                              ; preds = %117
  %128 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  br label %130

130:                                              ; preds = %127, %126
  %131 = phi i32 [ 0, %126 ], [ %129, %127 ]
  %132 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 (i32, i8*, ...) @dev_dbg(i32 %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %131, i32 %133, i32 %135)
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %138 = load i32, i32* @RT1305_PLL1_1, align 4
  %139 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %146

143:                                              ; preds = %130
  %144 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  br label %146

146:                                              ; preds = %143, %142
  %147 = phi i32 [ 0, %142 ], [ %145, %143 ]
  %148 = load i32, i32* @RT1305_PLL_1_M_SFT, align 4
  %149 = shl i32 %147, %148
  %150 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @RT1305_PLL_1_M_BYPASS_SFT, align 4
  %153 = shl i32 %151, %152
  %154 = or i32 %149, %153
  %155 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %154, %156
  %158 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %137, i32 %138, i32 %157)
  %159 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %160 = load i32, i32* @RT1305_PLL1_2, align 4
  %161 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %159, i32 %160, i32 %162)
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %166 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %169 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.rt1305_priv*, %struct.rt1305_priv** %12, align 8
  %172 = getelementptr inbounds %struct.rt1305_priv, %struct.rt1305_priv* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %146, %110, %96, %41, %34
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local %struct.rt1305_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
