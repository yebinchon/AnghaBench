; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_refine.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_refine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32, i64, i64, i64, i64, i64 }

@SNDRV_PCM_HW_PARAM_SAMPLE_BITS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_pcm_hw_refine(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %7 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SNDRV_PCM_HW_PARAM_SAMPLE_BITS, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = call i32 @constrain_mask_params(%struct.snd_pcm_substream* %35, %struct.snd_pcm_hw_params* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %61

42:                                               ; preds = %34
  %43 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %45 = call i32 @constrain_interval_params(%struct.snd_pcm_substream* %43, %struct.snd_pcm_hw_params* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %42
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %53 = call i32 @constrain_params_by_rules(%struct.snd_pcm_substream* %51, %struct.snd_pcm_hw_params* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %61

58:                                               ; preds = %50
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_hw_params, %struct.snd_pcm_hw_params* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %56, %48, %40
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @constrain_mask_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @constrain_interval_params(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @constrain_params_by_rules(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
