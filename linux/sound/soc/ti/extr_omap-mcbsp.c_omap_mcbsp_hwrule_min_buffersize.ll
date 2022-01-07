; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_hwrule_min_buffersize.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_hwrule_min_buffersize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.omap_mcbsp* }
%struct.omap_mcbsp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_interval = type { i32, i32 }

@SNDRV_PCM_HW_PARAM_BUFFER_SIZE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @omap_mcbsp_hwrule_min_buffersize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_hwrule_min_buffersize(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.omap_mcbsp*, align 8
  %8 = alloca %struct.snd_interval, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %11 = load i32, i32* @SNDRV_PCM_HW_PARAM_BUFFER_SIZE, align 4
  %12 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %10, i32 %11)
  store %struct.snd_interval* %12, %struct.snd_interval** %5, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %15 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %13, i32 %14)
  store %struct.snd_interval* %15, %struct.snd_interval** %6, align 8
  %16 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %16, i32 0, i32 0
  %18 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %17, align 8
  store %struct.omap_mcbsp* %18, %struct.omap_mcbsp** %7, align 8
  %19 = call i32 @snd_interval_any(%struct.snd_interval* %8)
  %20 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %7, align 8
  %21 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %27 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %25, %28
  %30 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %33 = call i32 @snd_interval_refine(%struct.snd_interval* %32, %struct.snd_interval* %8)
  ret i32 %33
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_any(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
