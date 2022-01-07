; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_playback_pcm_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_playback_pcm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.adau1701 = type { i64, i32 }

@SND_SOC_DAIFMT_RIGHT_J = common dso_local global i64 0, align 8
@ADAU1701_SERICTL_RIGHTJ_16 = common dso_local global i32 0, align 4
@ADAU1701_SERICTL_RIGHTJ_20 = common dso_local global i32 0, align 4
@ADAU1701_SERICTL_RIGHTJ_24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADAU1701_SERICTL = common dso_local global i32 0, align 4
@ADAU1701_SERICTL_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_pcm_hw_params*)* @adau1701_set_playback_pcm_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_set_playback_pcm_format(%struct.snd_soc_component* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.adau1701*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.adau1701* %9, %struct.adau1701** %6, align 8
  %10 = load %struct.adau1701*, %struct.adau1701** %6, align 8
  %11 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SND_SOC_DAIFMT_RIGHT_J, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %18 = call i32 @params_width(%struct.snd_pcm_hw_params* %17)
  switch i32 %18, label %25 [
    i32 16, label %19
    i32 20, label %21
    i32 24, label %23
  ]

19:                                               ; preds = %16
  %20 = load i32, i32* @ADAU1701_SERICTL_RIGHTJ_16, align 4
  store i32 %20, i32* %7, align 4
  br label %28

21:                                               ; preds = %16
  %22 = load i32, i32* @ADAU1701_SERICTL_RIGHTJ_20, align 4
  store i32 %22, i32* %7, align 4
  br label %28

23:                                               ; preds = %16
  %24 = load i32, i32* @ADAU1701_SERICTL_RIGHTJ_24, align 4
  store i32 %24, i32* %7, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %23, %21, %19
  %29 = load %struct.adau1701*, %struct.adau1701** %6, align 8
  %30 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ADAU1701_SERICTL, align 4
  %33 = load i32, i32* @ADAU1701_SERICTL_MODE_MASK, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 %33, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %25, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
