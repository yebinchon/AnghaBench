; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_snd_imx_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_imx-pcm-fiq.c_snd_imx_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.imx_pcm_runtime_data* }
%struct.imx_pcm_runtime_data = type { %struct.TYPE_2__, i32, i32, %struct.snd_pcm_substream* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@snd_hrtimer_callback = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@snd_imx_hardware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_imx_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_imx_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.imx_pcm_runtime_data*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %8, align 8
  store %struct.snd_pcm_runtime* %9, %struct.snd_pcm_runtime** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.imx_pcm_runtime_data* @kzalloc(i32 24, i32 %10)
  store %struct.imx_pcm_runtime_data* %11, %struct.imx_pcm_runtime_data** %5, align 8
  %12 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %13 = icmp eq %struct.imx_pcm_runtime_data* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %19, i32 0, i32 0
  store %struct.imx_pcm_runtime_data* %18, %struct.imx_pcm_runtime_data** %20, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %22 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %23 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %22, i32 0, i32 3
  store %struct.snd_pcm_substream* %21, %struct.snd_pcm_substream** %23, align 8
  %24 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %25 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %24, i32 0, i32 2
  %26 = call i32 @atomic_set(i32* %25, i32 0)
  %27 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %28 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %27, i32 0, i32 1
  %29 = call i32 @atomic_set(i32* %28, i32 0)
  %30 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %31 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %30, i32 0, i32 0
  %32 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %33 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %34 = call i32 @hrtimer_init(%struct.TYPE_2__* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @snd_hrtimer_callback, align 4
  %36 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %37 = getelementptr inbounds %struct.imx_pcm_runtime_data, %struct.imx_pcm_runtime_data* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %39, i32 0, i32 0
  %41 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %40, align 8
  %42 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %43 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %17
  %47 = load %struct.imx_pcm_runtime_data*, %struct.imx_pcm_runtime_data** %5, align 8
  %48 = call i32 @kfree(%struct.imx_pcm_runtime_data* %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %17
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %52 = call i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream* %51, i32* @snd_imx_hardware)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %46, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.imx_pcm_runtime_data* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @kfree(%struct.imx_pcm_runtime_data*) #1

declare dso_local i32 @snd_soc_set_runtime_hwparams(%struct.snd_pcm_substream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
