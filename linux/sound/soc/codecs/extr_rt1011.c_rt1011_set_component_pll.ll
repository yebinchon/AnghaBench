; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_set_component_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_set_component_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt1011_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT1011_CLK_2 = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_MASK = common dso_local global i32 0, align 4
@RT1011_FS_SYS_PRE_BCLK = common dso_local global i32 0, align 4
@RT1011_PLL2_SRC_MASK = common dso_local global i32 0, align 4
@RT1011_PLL2_SRC_MCLK = common dso_local global i32 0, align 4
@RT1011_PLL1_SRC_MASK = common dso_local global i32 0, align 4
@RT1011_PLL1_SRC_PLL2 = common dso_local global i32 0, align 4
@RT1011_CLK_DET = common dso_local global i32 0, align 4
@RT1011_EN_MCLK_DET_MASK = common dso_local global i32 0, align 4
@RT1011_EN_MCLK_DET = common dso_local global i32 0, align 4
@RT1011_PLL1_SRC_BCLK = common dso_local global i32 0, align 4
@RT1011_PLL2_SRC_RCCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL Source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT1011_PLL_1 = common dso_local global i32 0, align 4
@RT1011_PLL1_QM_SFT = common dso_local global i32 0, align 4
@RT1011_PLL1_BPM_SFT = common dso_local global i32 0, align 4
@RT1011_PLL_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt1011_set_component_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_set_component_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt1011_priv*, align 8
  %13 = alloca %struct.rl6231_pll_code, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt1011_priv* %16, %struct.rt1011_priv** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %19 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %25 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %31 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %167

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
  %46 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %47 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %49 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @RT1011_CLK_2, align 4
  %52 = load i32, i32* @RT1011_FS_SYS_PRE_MASK, align 4
  %53 = load i32, i32* @RT1011_FS_SYS_PRE_BCLK, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %167

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %90 [
    i32 129, label %57
    i32 130, label %73
    i32 128, label %79
  ]

57:                                               ; preds = %55
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = load i32, i32* @RT1011_CLK_2, align 4
  %60 = load i32, i32* @RT1011_PLL2_SRC_MASK, align 4
  %61 = load i32, i32* @RT1011_PLL2_SRC_MCLK, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %64 = load i32, i32* @RT1011_CLK_2, align 4
  %65 = load i32, i32* @RT1011_PLL1_SRC_MASK, align 4
  %66 = load i32, i32* @RT1011_PLL1_SRC_PLL2, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %69 = load i32, i32* @RT1011_CLK_DET, align 4
  %70 = load i32, i32* @RT1011_EN_MCLK_DET_MASK, align 4
  %71 = load i32, i32* @RT1011_EN_MCLK_DET, align 4
  %72 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %68, i32 %69, i32 %70, i32 %71)
  br label %98

73:                                               ; preds = %55
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %75 = load i32, i32* @RT1011_CLK_2, align 4
  %76 = load i32, i32* @RT1011_PLL1_SRC_MASK, align 4
  %77 = load i32, i32* @RT1011_PLL1_SRC_BCLK, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %76, i32 %77)
  br label %98

79:                                               ; preds = %55
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %81 = load i32, i32* @RT1011_CLK_2, align 4
  %82 = load i32, i32* @RT1011_PLL2_SRC_MASK, align 4
  %83 = load i32, i32* @RT1011_PLL2_SRC_RCCLK, align 4
  %84 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %82, i32 %83)
  %85 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %86 = load i32, i32* @RT1011_CLK_2, align 4
  %87 = load i32, i32* @RT1011_PLL1_SRC_MASK, align 4
  %88 = load i32, i32* @RT1011_PLL1_SRC_PLL2, align 4
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %85, i32 %86, i32 %87, i32 %88)
  br label %98

90:                                               ; preds = %55
  %91 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %92 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %167

98:                                               ; preds = %79, %73, %57
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @rl6231_pll_calc(i32 %99, i32 %100, %struct.rl6231_pll_code* %13)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %106 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %6, align 4
  br label %167

111:                                              ; preds = %98
  %112 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %113 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %124

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  br label %124

124:                                              ; preds = %121, %120
  %125 = phi i32 [ 0, %120 ], [ %123, %121 ]
  %126 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %125, i32 %127, i32 %129)
  %131 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %132 = load i32, i32* @RT1011_PLL_1, align 4
  %133 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %140

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  br label %140

140:                                              ; preds = %137, %136
  %141 = phi i32 [ 0, %136 ], [ %139, %137 ]
  %142 = load i32, i32* @RT1011_PLL1_QM_SFT, align 4
  %143 = shl i32 %141, %142
  %144 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RT1011_PLL1_BPM_SFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %143, %147
  %149 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %148, %150
  %152 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %131, i32 %132, i32 %151)
  %153 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %154 = load i32, i32* @RT1011_PLL_2, align 4
  %155 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %153, i32 %154, i32 %156)
  %158 = load i32, i32* %10, align 4
  %159 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %160 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %163 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.rt1011_priv*, %struct.rt1011_priv** %12, align 8
  %166 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  store i32 0, i32* %6, align 4
  br label %167

167:                                              ; preds = %140, %104, %90, %41, %34
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local %struct.rt1011_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
