; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_rule_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_rule_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32* }
%struct.snd_interval = type { i32, i32 }
%struct.snd_mask = type { i32 }

@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_pcm_hw_rule_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_rule_format(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_mask, align 4
  %8 = alloca %struct.snd_mask*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %11 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %10, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %6, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %19 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %17, i32 %18)
  store %struct.snd_mask* %19, %struct.snd_mask** %8, align 8
  %20 = call i32 @snd_mask_any(%struct.snd_mask* %7)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %53, %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SNDRV_PCM_FORMAT_LAST, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @snd_mask_test(%struct.snd_mask* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %53

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @snd_pcm_format_physical_width(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %53

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %40 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @snd_mask_reset(%struct.snd_mask* %7, i32 %50)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %36, %30
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %21

56:                                               ; preds = %21
  %57 = load %struct.snd_mask*, %struct.snd_mask** %8, align 8
  %58 = call i32 @snd_mask_refine(%struct.snd_mask* %57, %struct.snd_mask* %7)
  ret i32 %58
}

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_mask_any(%struct.snd_mask*) #1

declare dso_local i32 @snd_mask_test(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_mask_reset(%struct.snd_mask*, i32) #1

declare dso_local i32 @snd_mask_refine(%struct.snd_mask*, %struct.snd_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
