; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_had_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32 }
%struct.snd_intelhad = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.snd_pcm_substream* }

@had_pcm_hardware = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @had_pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @had_pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_intelhad*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_intelhad* %8, %struct.snd_intelhad** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  %12 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %13 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_get_sync(i32 %14)
  %16 = load i32, i32* @had_pcm_hardware, align 4
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %20 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %21 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %57

25:                                               ; preds = %1
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %26, i32 0, i32 0
  %28 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %27, align 8
  %29 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %30 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %28, i32 0, i32 %29, i32 64)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %57

34:                                               ; preds = %25
  %35 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %36 = call i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime* %35, i32 0, i32 32, i32 24)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %57

40:                                               ; preds = %34
  %41 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %42 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_irq(i32* %42)
  %44 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %45 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %46 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store %struct.snd_pcm_substream* %44, %struct.snd_pcm_substream** %47, align 8
  %48 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %49 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %54 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %67

57:                                               ; preds = %39, %33, %24
  %58 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %59 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @pm_runtime_mark_last_busy(i32 %60)
  %62 = load %struct.snd_intelhad*, %struct.snd_intelhad** %4, align 8
  %63 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pm_runtime_put_autosuspend(i32 %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %57, %40
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.snd_intelhad* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_msbits(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
