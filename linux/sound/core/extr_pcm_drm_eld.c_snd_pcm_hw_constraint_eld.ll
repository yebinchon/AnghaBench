; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_drm_eld.c_snd_pcm_hw_constraint_eld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_drm_eld.c_snd_pcm_hw_constraint_eld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_runtime = type { i32 }

@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@eld_limit_rates = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@eld_limit_channels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_constraint_eld(%struct.snd_pcm_runtime* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_runtime* %0, %struct.snd_pcm_runtime** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %8 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %9 = load i32, i32* @eld_limit_rates, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %12 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %7, i32 0, i32 %8, i32 %9, i8* %10, i32 %11, i32 -1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %20 = load i32, i32* @eld_limit_channels, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %23 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %18, i32 0, i32 %19, i32 %20, i8* %21, i32 %22, i32 -1)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %17, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
