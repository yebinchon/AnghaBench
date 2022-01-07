; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_hw_rule_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_hw_rule_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.davinci_mcasp_ruledata* }
%struct.davinci_mcasp_ruledata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.snd_mask = type { i32 }

@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_LAST = common dso_local global i32 0, align 4
@DAVINCI_MAX_RATE_ERROR_PPM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"%d possible sample format for %d Hz and %d tdm slots\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @davinci_mcasp_hw_rule_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_hw_rule_format(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.davinci_mcasp_ruledata*, align 8
  %6 = alloca %struct.snd_mask*, align 8
  %7 = alloca %struct.snd_mask, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %15 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %16 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %15, i32 0, i32 0
  %17 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %16, align 8
  store %struct.davinci_mcasp_ruledata* %17, %struct.davinci_mcasp_ruledata** %5, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %20 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %18, i32 %19)
  store %struct.snd_mask* %20, %struct.snd_mask** %6, align 8
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %24 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %28 = call i32 @snd_mask_none(%struct.snd_mask* %7)
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %96, %2
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @SNDRV_PCM_FORMAT_LAST, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %99

33:                                               ; preds = %29
  %34 = load %struct.snd_mask*, %struct.snd_mask** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @snd_mask_test(%struct.snd_mask* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %95

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @snd_pcm_format_width(i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %42 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %50 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %48, %53
  store i32 %54, i32* %13, align 4
  br label %61

55:                                               ; preds = %38
  %56 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %57 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %63 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %70 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %76 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %81, %82
  %84 = call i32 @davinci_mcasp_calc_clk_div(%struct.TYPE_2__* %77, i32 %78, i32 %83, i32 0)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i64 @abs(i32 %85)
  %87 = load i64, i64* @DAVINCI_MAX_RATE_ERROR_PPM, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @snd_mask_set(%struct.snd_mask* %7, i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %89, %74
  br label %95

95:                                               ; preds = %94, %33
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %29

99:                                               ; preds = %29
  %100 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %101 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  %109 = load %struct.snd_mask*, %struct.snd_mask** %6, align 8
  %110 = call i32 @snd_mask_refine(%struct.snd_mask* %109, %struct.snd_mask* %7)
  ret i32 %110
}

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i64 @snd_mask_test(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @davinci_mcasp_calc_clk_div(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @snd_mask_set(%struct.snd_mask*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_mask_refine(%struct.snd_mask*, %struct.snd_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
