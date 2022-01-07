; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_playback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_playback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32 }
%struct.snd_rme9652 = type { %struct.TYPE_5__*, i32, i32, i32, i32, %struct.snd_pcm_substream*, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@snd_rme9652_playback_subinfo = common dso_local global i32 0, align 4
@RME9652_DMA_AREA_BYTES = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@SNDRV_PCM_HW_PARAM_PERIOD_SIZE = common dso_local global i32 0, align 4
@hw_constraints_period_sizes = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@snd_rme9652_hw_rule_channels = common dso_local global i32 0, align 4
@snd_rme9652_hw_rule_channels_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@snd_rme9652_hw_rule_rate_channels = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_INACTIVE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@SNDRV_CTL_EVENT_MASK_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_rme9652_playback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_playback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_rme9652*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_rme9652* %6, %struct.snd_rme9652** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %11 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %10, i32 0, i32 4
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %14 = call i32 @snd_pcm_set_sync(%struct.snd_pcm_substream* %13)
  %15 = load i32, i32* @snd_rme9652_playback_subinfo, align 4
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %19 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %22 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @RME9652_DMA_AREA_BYTES, align 4
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %27 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %26, i32 0, i32 7
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %32 = call i32 @rme9652_stop(%struct.snd_rme9652* %31)
  %33 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %34 = call i32 @rme9652_set_thru(%struct.snd_rme9652* %33, i32 -1, i32 0)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %40 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %42 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %43 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %42, i32 0, i32 5
  store %struct.snd_pcm_substream* %41, %struct.snd_pcm_substream** %43, align 8
  %44 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %45 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %44, i32 0, i32 4
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %48 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %47, i32 0, i32 32, i32 24)
  %49 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %50 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_SIZE, align 4
  %51 = call i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime* %49, i32 0, i32 %50, i32* @hw_constraints_period_sizes)
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %53 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %54 = load i32, i32* @snd_rme9652_hw_rule_channels, align 4
  %55 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %56 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %57 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %52, i32 0, i32 %53, i32 %54, %struct.snd_rme9652* %55, i32 %56, i32 -1)
  %58 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %59 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %60 = load i32, i32* @snd_rme9652_hw_rule_channels_rate, align 4
  %61 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %62 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %63 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %58, i32 0, i32 %59, i32 %60, %struct.snd_rme9652* %61, i32 %62, i32 -1)
  %64 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %65 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %66 = load i32, i32* @snd_rme9652_hw_rule_rate_channels, align 4
  %67 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %68 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %69 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %64, i32 0, i32 %65, i32 %66, %struct.snd_rme9652* %67, i32 %68, i32 -1)
  %70 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %71 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %74 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_INACTIVE, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %78 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %76
  store i32 %85, i32* %83, align 4
  %86 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %87 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %90 = load i32, i32* @SNDRV_CTL_EVENT_MASK_INFO, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.snd_rme9652*, %struct.snd_rme9652** %3, align 8
  %93 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @snd_ctl_notify(i32 %88, i32 %91, i32* %95)
  ret i32 0
}

declare dso_local %struct.snd_rme9652* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @snd_pcm_set_sync(%struct.snd_pcm_substream*) #1

declare dso_local i32 @rme9652_stop(%struct.snd_rme9652*) #1

declare dso_local i32 @rme9652_set_thru(%struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_list(%struct.snd_pcm_runtime*, i32, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.snd_rme9652*, i32, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
