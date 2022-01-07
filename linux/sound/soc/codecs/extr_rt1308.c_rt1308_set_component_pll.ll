; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_set_component_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1308.c_rt1308_set_component_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.rt1308_priv = type { i32, i32, i32 }
%struct.rl6231_pll_code = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"PLL disabled\0A\00", align 1
@RT1308_CLK_1 = common dso_local global i32 0, align 4
@RT1308_SEL_FS_SYS_MASK = common dso_local global i32 0, align 4
@RT1308_SEL_FS_SYS_SRC_MCLK = common dso_local global i32 0, align 4
@RT1308_CLK_2 = common dso_local global i32 0, align 4
@RT1308_SEL_PLL_SRC_MASK = common dso_local global i32 0, align 4
@RT1308_SEL_PLL_SRC_MCLK = common dso_local global i32 0, align 4
@RT1308_CLK_DET = common dso_local global i32 0, align 4
@RT1308_MCLK_DET_EN_MASK = common dso_local global i32 0, align 4
@RT1308_MCLK_DET_EN = common dso_local global i32 0, align 4
@RT1308_SEL_PLL_SRC_BCLK = common dso_local global i32 0, align 4
@RT1308_SEL_PLL_SRC_RCCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unknown PLL Source %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupport input clock %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bypass=%d m=%d n=%d k=%d\0A\00", align 1
@RT1308_PLL_1 = common dso_local global i32 0, align 4
@RT1308_PLL1_K_SFT = common dso_local global i32 0, align 4
@RT1308_PLL1_M_BYPASS_SFT = common dso_local global i32 0, align 4
@RT1308_PLL1_M_SFT = common dso_local global i32 0, align 4
@RT1308_PLL1_N_SFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @rt1308_set_component_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1308_set_component_pll(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rt1308_priv*, align 8
  %13 = alloca %struct.rl6231_pll_code, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %16 = call %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.rt1308_priv* %16, %struct.rt1308_priv** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %19 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %25 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %31 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %159

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
  %46 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %47 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %49 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %48, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %51 = load i32, i32* @RT1308_CLK_1, align 4
  %52 = load i32, i32* @RT1308_SEL_FS_SYS_MASK, align 4
  %53 = load i32, i32* @RT1308_SEL_FS_SYS_SRC_MCLK, align 4
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %50, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %6, align 4
  br label %159

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  switch i32 %56, label %80 [
    i32 129, label %57
    i32 130, label %68
    i32 128, label %74
  ]

57:                                               ; preds = %55
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %59 = load i32, i32* @RT1308_CLK_2, align 4
  %60 = load i32, i32* @RT1308_SEL_PLL_SRC_MASK, align 4
  %61 = load i32, i32* @RT1308_SEL_PLL_SRC_MCLK, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %64 = load i32, i32* @RT1308_CLK_DET, align 4
  %65 = load i32, i32* @RT1308_MCLK_DET_EN_MASK, align 4
  %66 = load i32, i32* @RT1308_MCLK_DET_EN, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  br label %88

68:                                               ; preds = %55
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %70 = load i32, i32* @RT1308_CLK_2, align 4
  %71 = load i32, i32* @RT1308_SEL_PLL_SRC_MASK, align 4
  %72 = load i32, i32* @RT1308_SEL_PLL_SRC_BCLK, align 4
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %71, i32 %72)
  br label %88

74:                                               ; preds = %55
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %76 = load i32, i32* @RT1308_CLK_2, align 4
  %77 = load i32, i32* @RT1308_SEL_PLL_SRC_MASK, align 4
  %78 = load i32, i32* @RT1308_SEL_PLL_SRC_RCCLK, align 4
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %75, i32 %76, i32 %77, i32 %78)
  store i32 25000000, i32* %10, align 4
  br label %88

80:                                               ; preds = %55
  %81 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %82 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %159

88:                                               ; preds = %74, %68, %57
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @rl6231_pll_calc(i32 %89, i32 %90, %struct.rl6231_pll_code* %13)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %96 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %6, align 4
  br label %159

101:                                              ; preds = %88
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %103 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %101
  br label %114

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  br label %114

114:                                              ; preds = %111, %110
  %115 = phi i32 [ 0, %110 ], [ %113, %111 ]
  %116 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %115, i32 %117, i32 %119)
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %122 = load i32, i32* @RT1308_PLL_1, align 4
  %123 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @RT1308_PLL1_K_SFT, align 4
  %126 = shl i32 %124, %125
  %127 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @RT1308_PLL1_M_BYPASS_SFT, align 4
  %130 = shl i32 %128, %129
  %131 = or i32 %126, %130
  %132 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %114
  br label %139

136:                                              ; preds = %114
  %137 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  br label %139

139:                                              ; preds = %136, %135
  %140 = phi i32 [ 0, %135 ], [ %138, %136 ]
  %141 = load i32, i32* @RT1308_PLL1_M_SFT, align 4
  %142 = shl i32 %140, %141
  %143 = or i32 %131, %142
  %144 = getelementptr inbounds %struct.rl6231_pll_code, %struct.rl6231_pll_code* %13, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @RT1308_PLL1_N_SFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %143, %147
  %149 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %121, i32 %122, i32 %148)
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %152 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %155 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.rt1308_priv*, %struct.rt1308_priv** %12, align 8
  %158 = getelementptr inbounds %struct.rt1308_priv, %struct.rt1308_priv* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %139, %94, %80, %41, %34
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local %struct.rt1308_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

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
