; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_pcm.c_hw_rule_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_pcm.c_hw_rule_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32* }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@freq_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @hw_rule_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_rule_channels(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %11 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %16 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %6, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %19 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %17, i32 %18)
  store %struct.snd_interval* %19, %struct.snd_interval** %7, align 8
  %20 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  %23 = load i32, i32* @UINT_MAX, align 4
  store i32 %23, i32* %22, align 4
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %60, %2
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** @freq_table, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @get_multiplier_mode_with_index(i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %33 = load i32*, i32** @freq_table, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_interval_test(%struct.snd_interval* %32, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  br label %60

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @min(i32 %43, i32 %48)
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @max(i32 %52, i32 %57)
  %59 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %8, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %41, %40
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %24

63:                                               ; preds = %24
  %64 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %65 = call i32 @snd_interval_refine(%struct.snd_interval* %64, %struct.snd_interval* %8)
  ret i32 %65
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @get_multiplier_mode_with_index(i32) #1

declare dso_local i32 @snd_interval_test(%struct.snd_interval*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
