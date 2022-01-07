; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_hw_rule_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_hw_rule_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.davinci_mcasp_ruledata* }
%struct.davinci_mcasp_ruledata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@davinci_mcasp_dai_rates = common dso_local global i32* null, align 8
@DAVINCI_MAX_RATE_ERROR_PPM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Frequencies %d-%d -> %d-%d for %d sbits and %d tdm slots\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @davinci_mcasp_hw_rule_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_hw_rule_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.davinci_mcasp_ruledata*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_interval, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %14 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %14, i32 0, i32 1
  %16 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %15, align 8
  store %struct.davinci_mcasp_ruledata* %16, %struct.davinci_mcasp_ruledata** %5, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %19 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %17, i32 %18)
  store %struct.snd_interval* %19, %struct.snd_interval** %6, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %21 = call i32 @params_width(%struct.snd_pcm_hw_params* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %23 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %28 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %35 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %33, %2
  %40 = call i32 @snd_interval_any(%struct.snd_interval* %9)
  %41 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  store i32 1, i32* %41, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %122, %39
  %43 = load i32, i32* %10, align 4
  %44 = load i32*, i32** @davinci_mcasp_dai_rates, align 8
  %45 = call i32 @ARRAY_SIZE(i32* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %125

47:                                               ; preds = %42
  %48 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %49 = load i32*, i32** @davinci_mcasp_dai_rates, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @snd_interval_test(%struct.snd_interval* %48, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %121

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32*, i32** @davinci_mcasp_dai_rates, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %59, %64
  store i32 %65, i32* %11, align 4
  %66 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %67 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %56
  %73 = load i32*, i32** @davinci_mcasp_dai_rates, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %79 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  store i32 %83, i32* %12, align 4
  br label %90

84:                                               ; preds = %56
  %85 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %86 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %84, %72
  %91 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %92 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @davinci_mcasp_calc_clk_div(%struct.TYPE_2__* %93, i32 %94, i32 %95, i32 0)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @abs(i32 %97)
  %99 = load i64, i64* @DAVINCI_MAX_RATE_ERROR_PPM, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32*, i32** @davinci_mcasp_dai_rates, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %105, %101
  %114 = load i32*, i32** @davinci_mcasp_dai_rates, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %90
  br label %121

121:                                              ; preds = %120, %47
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %42

125:                                              ; preds = %42
  %126 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %127 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %132 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %135 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @dev_dbg(i32 %130, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %133, i32 %136, i32 %138, i32 %140, i32 %141, i32 %142)
  %144 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %145 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %144, i32 %147)
  %149 = call i32 @snd_interval_refine(%struct.snd_interval* %148, %struct.snd_interval* %9)
  ret i32 %149
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_interval_any(%struct.snd_interval*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @davinci_mcasp_calc_clk_div(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
