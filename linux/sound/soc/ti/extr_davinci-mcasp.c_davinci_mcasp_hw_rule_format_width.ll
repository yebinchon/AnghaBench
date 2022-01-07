; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_hw_rule_format_width.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_davinci-mcasp.c_davinci_mcasp_hw_rule_format_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.davinci_mcasp_ruledata* }
%struct.davinci_mcasp_ruledata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_mask = type { i32 }

@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @davinci_mcasp_hw_rule_format_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_mcasp_hw_rule_format_width(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.davinci_mcasp_ruledata*, align 8
  %6 = alloca %struct.snd_mask*, align 8
  %7 = alloca %struct.snd_mask, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %10 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %10, i32 0, i32 0
  %12 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %11, align 8
  store %struct.davinci_mcasp_ruledata* %12, %struct.davinci_mcasp_ruledata** %5, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %15 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %13, i32 %14)
  store %struct.snd_mask* %15, %struct.snd_mask** %6, align 8
  %16 = call i32 @snd_mask_none(%struct.snd_mask* %7)
  %17 = load %struct.davinci_mcasp_ruledata*, %struct.davinci_mcasp_ruledata** %5, align 8
  %18 = getelementptr inbounds %struct.davinci_mcasp_ruledata, %struct.davinci_mcasp_ruledata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %41, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SNDRV_PCM_FORMAT_LAST, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load %struct.snd_mask*, %struct.snd_mask** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @snd_mask_test(%struct.snd_mask* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @snd_pcm_format_width(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @snd_mask_set(%struct.snd_mask* %7, i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.snd_mask*, %struct.snd_mask** %6, align 8
  %46 = call i32 @snd_mask_refine(%struct.snd_mask* %45, %struct.snd_mask* %7)
  ret i32 %46
}

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i64 @snd_mask_test(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @snd_mask_set(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_mask_refine(%struct.snd_mask*, %struct.snd_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
