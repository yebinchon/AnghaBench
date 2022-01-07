; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_hw_rule_channels_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_rme9652.c_snd_rme9652_hw_rule_channels_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.snd_rme9652* }
%struct.snd_rme9652 = type { i32, i32 }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_rme9652_hw_rule_channels_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_rme9652_hw_rule_channels_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.snd_rme9652*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval, align 4
  %10 = alloca %struct.snd_interval, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %11 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %11, i32 0, i32 0
  %13 = load %struct.snd_rme9652*, %struct.snd_rme9652** %12, align 8
  store %struct.snd_rme9652* %13, %struct.snd_rme9652** %6, align 8
  %14 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %15 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %16 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %14, i32 %15)
  store %struct.snd_interval* %16, %struct.snd_interval** %7, align 8
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %18 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %19 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %17, i32 %18)
  store %struct.snd_interval* %19, %struct.snd_interval** %8, align 8
  %20 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %21 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 48000
  br i1 %23, label %24, label %36

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  %26 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %27 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 4
  %29 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 1
  %30 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %31 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 4
  %33 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %35 = call i32 @snd_interval_refine(%struct.snd_interval* %34, %struct.snd_interval* %9)
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %2
  %37 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %38 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 88200
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 0
  %43 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %44 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 4
  %46 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 1
  %47 = load %struct.snd_rme9652*, %struct.snd_rme9652** %6, align 8
  %48 = getelementptr inbounds %struct.snd_rme9652, %struct.snd_rme9652* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 2
  store i32 1, i32* %50, align 4
  %51 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %52 = call i32 @snd_interval_refine(%struct.snd_interval* %51, %struct.snd_interval* %10)
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %41, %24
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
