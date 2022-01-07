; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ml26124.c_ml26124_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ml26124.c_ml26124_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.ml26124_priv = type { i32, i32, i64, %struct.snd_pcm_substream* }

@ML26124_CLK_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unsupported MCLKI\0A\00", align 1
@ML26124_SMPLING_RATE = common dso_local global i32 0, align 4
@ML26124_PLLNL = common dso_local global i32 0, align 4
@coeff_div = common dso_local global %struct.TYPE_2__* null, align 8
@ML26124_PLLNH = common dso_local global i32 0, align 4
@ML26124_PLLML = common dso_local global i32 0, align 4
@ML26124_PLLMH = common dso_local global i32 0, align 4
@ML26124_PLLDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @ml26124_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ml26124_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca %struct.snd_pcm_hw_params*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_component*, align 8
  %9 = alloca %struct.ml26124_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %6, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %13, align 8
  store %struct.snd_soc_component* %14, %struct.snd_soc_component** %8, align 8
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %16 = call %struct.ml26124_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %15)
  store %struct.ml26124_priv* %16, %struct.ml26124_priv** %9, align 8
  %17 = load %struct.ml26124_priv*, %struct.ml26124_priv** %9, align 8
  %18 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  %22 = call i32 @get_coeff(i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %4, align 4
  br label %138

27:                                               ; preds = %3
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %29 = load %struct.ml26124_priv*, %struct.ml26124_priv** %9, align 8
  %30 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %29, i32 0, i32 3
  store %struct.snd_pcm_substream* %28, %struct.snd_pcm_substream** %30, align 8
  %31 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %32 = call i32 @params_rate(%struct.snd_pcm_hw_params* %31)
  %33 = load %struct.ml26124_priv*, %struct.ml26124_priv** %9, align 8
  %34 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ml26124_priv*, %struct.ml26124_priv** %9, align 8
  %36 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %27
  %40 = load %struct.ml26124_priv*, %struct.ml26124_priv** %9, align 8
  %41 = getelementptr inbounds %struct.ml26124_priv, %struct.ml26124_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %44 = call i32 @params_rate(%struct.snd_pcm_hw_params* %43)
  %45 = sdiv i32 %42, %44
  switch i32 %45, label %67 [
    i32 256, label %46
    i32 512, label %53
    i32 1024, label %60
  ]

46:                                               ; preds = %39
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %48 = load i32, i32* @ML26124_CLK_CTL, align 4
  %49 = call i32 @BIT(i32 0)
  %50 = call i32 @BIT(i32 1)
  %51 = or i32 %49, %50
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %47, i32 %48, i32 %51, i32 1)
  br label %72

53:                                               ; preds = %39
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %55 = load i32, i32* @ML26124_CLK_CTL, align 4
  %56 = call i32 @BIT(i32 0)
  %57 = call i32 @BIT(i32 1)
  %58 = or i32 %56, %57
  %59 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %58, i32 2)
  br label %72

60:                                               ; preds = %39
  %61 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %62 = load i32, i32* @ML26124_CLK_CTL, align 4
  %63 = call i32 @BIT(i32 0)
  %64 = call i32 @BIT(i32 1)
  %65 = or i32 %63, %64
  %66 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %61, i32 %62, i32 %65, i32 3)
  br label %72

67:                                               ; preds = %39
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %60, %53, %46
  br label %80

73:                                               ; preds = %27
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %75 = load i32, i32* @ML26124_CLK_CTL, align 4
  %76 = call i32 @BIT(i32 0)
  %77 = call i32 @BIT(i32 1)
  %78 = or i32 %76, %77
  %79 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %73, %72
  %81 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %6, align 8
  %82 = call i32 @params_rate(%struct.snd_pcm_hw_params* %81)
  %83 = call i32 @get_srate(i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %138

88:                                               ; preds = %80
  %89 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %90 = load i32, i32* @ML26124_SMPLING_RATE, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %89, i32 %90, i32 15, i32 %91)
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %94 = load i32, i32* @ML26124_PLLNL, align 4
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %93, i32 %94, i32 255, i32 %100)
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %103 = load i32, i32* @ML26124_PLLNH, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %102, i32 %103, i32 1, i32 %109)
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %112 = load i32, i32* @ML26124_PLLML, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %111, i32 %112, i32 255, i32 %118)
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %121 = load i32, i32* @ML26124_PLLMH, align 4
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %120, i32 %121, i32 63, i32 %127)
  %129 = load %struct.snd_soc_component*, %struct.snd_soc_component** %8, align 8
  %130 = load i32, i32* @ML26124_PLLDIV, align 4
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @coeff_div, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %129, i32 %130, i32 31, i32 %136)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %88, %86, %25
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.ml26124_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @get_coeff(i32, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @get_srate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
