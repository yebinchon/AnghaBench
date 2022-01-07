; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_drm_eld.c_eld_limit_rates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_drm_eld.c_eld_limit_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32*, i32 }
%struct.snd_interval = type { i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@eld_rates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @eld_limit_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eld_limit_rates(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca %struct.snd_interval*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %13 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %12, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %5, align 8
  store i32 7, i32* %7, align 4
  %17 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32* @drm_eld_sad(i32* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %2
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %26 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %27 = call %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params* %25, i32 %26)
  store %struct.snd_interval* %27, %struct.snd_interval** %6, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @drm_eld_sad_count(i32* %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %48, %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @sad_max_channels(i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.snd_interval*, %struct.snd_interval** %6, align 8
  %37 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ule i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %33
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add i32 %49, -1
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32* %52, i32** %9, align 8
  br label %30

53:                                               ; preds = %30
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %56 = load i32, i32* @eld_rates, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = load i32, i32* @eld_rates, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @snd_interval_list(%struct.snd_interval* %55, i32 %57, i32 %58, i32 %59)
  ret i32 %60
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32* @drm_eld_sad(i32*) #1

declare dso_local %struct.snd_interval* @hw_param_interval_c(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @drm_eld_sad_count(i32*) #1

declare dso_local i32 @sad_max_channels(i32*) #1

declare dso_local i32 @snd_interval_list(%struct.snd_interval*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
