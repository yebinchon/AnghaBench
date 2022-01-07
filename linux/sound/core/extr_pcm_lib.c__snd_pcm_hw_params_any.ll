; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c__snd_pcm_hw_params_any.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c__snd_pcm_hw_params_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }

@SNDRV_PCM_HW_PARAM_FIRST_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_LAST_MASK = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FIRST_INTERVAL = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_LAST_INTERVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_snd_pcm_hw_params_any(%struct.snd_pcm_hw_params* %0) #0 {
  %2 = alloca %struct.snd_pcm_hw_params*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %2, align 8
  %4 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %5 = call i32 @memset(%struct.snd_pcm_hw_params* %4, i32 0, i32 4)
  %6 = load i32, i32* @SNDRV_PCM_HW_PARAM_FIRST_MASK, align 4
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_MASK, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @_snd_pcm_hw_param_any(%struct.snd_pcm_hw_params* %12, i32 %13)
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %7

18:                                               ; preds = %7
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_FIRST_INTERVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %28, %18
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SNDRV_PCM_HW_PARAM_LAST_INTERVAL, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @_snd_pcm_hw_param_any(%struct.snd_pcm_hw_params* %25, i32 %26)
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %20

31:                                               ; preds = %20
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %2, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 4
  ret void
}

declare dso_local i32 @memset(%struct.snd_pcm_hw_params*, i32, i32) #1

declare dso_local i32 @_snd_pcm_hw_param_any(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
