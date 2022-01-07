; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_in_channels_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_snd_hdspm_hw_rule_in_channels_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { %struct.hdspm* }
%struct.hdspm = type { i32, i32, i32 }
%struct.snd_interval = type { i32, i32, i32 }

@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_hdspm_hw_rule_in_channels_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdspm_hw_rule_in_channels_rate(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_pcm_hw_rule*, align 8
  %6 = alloca %struct.hdspm*, align 8
  %7 = alloca %struct.snd_interval*, align 8
  %8 = alloca %struct.snd_interval*, align 8
  %9 = alloca %struct.snd_interval, align 4
  %10 = alloca %struct.snd_interval, align 4
  %11 = alloca %struct.snd_interval, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %5, align 8
  %12 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %5, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %12, i32 0, i32 0
  %14 = load %struct.hdspm*, %struct.hdspm** %13, align 8
  store %struct.hdspm* %14, %struct.hdspm** %6, align 8
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %16 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %17 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %15, i32 %16)
  store %struct.snd_interval* %17, %struct.snd_interval** %7, align 8
  %18 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %19 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %20 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %18, i32 %19)
  store %struct.snd_interval* %20, %struct.snd_interval** %8, align 8
  %21 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %22 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 96000
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %27 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sle i32 %28, 192000
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 0
  %32 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %33 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 1
  %36 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %37 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %35, align 4
  %39 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %9, i32 0, i32 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %41 = call i32 @snd_interval_refine(%struct.snd_interval* %40, %struct.snd_interval* %9)
  store i32 %41, i32* %3, align 4
  br label %84

42:                                               ; preds = %25, %2
  %43 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %44 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 48000
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %49 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 96000
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 0
  %54 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %55 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %53, align 4
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 1
  %58 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %59 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %57, align 4
  %61 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %10, i32 0, i32 2
  store i32 1, i32* %61, align 4
  %62 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %63 = call i32 @snd_interval_refine(%struct.snd_interval* %62, %struct.snd_interval* %10)
  store i32 %63, i32* %3, align 4
  br label %84

64:                                               ; preds = %47, %42
  %65 = load %struct.snd_interval*, %struct.snd_interval** %8, align 8
  %66 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 64000
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 0
  %71 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %72 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %70, align 4
  %74 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 1
  %75 = load %struct.hdspm*, %struct.hdspm** %6, align 8
  %76 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %74, align 4
  %78 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %11, i32 0, i32 2
  store i32 1, i32* %78, align 4
  %79 = load %struct.snd_interval*, %struct.snd_interval** %7, align 8
  %80 = call i32 @snd_interval_refine(%struct.snd_interval* %79, %struct.snd_interval* %11)
  store i32 %80, i32* %3, align 4
  br label %84

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %69, %52, %30
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_interval_refine(%struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
