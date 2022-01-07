; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_playback_pcm_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adav80x.c_adav80x_set_playback_pcm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dai = type { i64 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.adav80x = type { i64*, i32 }

@SND_SOC_DAIFMT_RIGHT_J = common dso_local global i64 0, align 8
@ADAV80X_PLAYBACK_MODE_RIGHT_J_16 = common dso_local global i32 0, align 4
@ADAV80X_PLAYBACK_MODE_RIGHT_J_18 = common dso_local global i32 0, align 4
@ADAV80X_PLAYBACK_MODE_RIGHT_J_20 = common dso_local global i32 0, align 4
@ADAV80X_PLAYBACK_MODE_RIGHT_J_24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@adav80x_port_ctrl_regs = common dso_local global i32** null, align 8
@ADAV80X_PLAYBACK_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @adav80x_set_playback_pcm_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adav80x_set_playback_pcm_format(%struct.snd_soc_component* %0, %struct.snd_soc_dai* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca %struct.adav80x*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %11 = call %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.adav80x* %11, %struct.adav80x** %8, align 8
  %12 = load %struct.adav80x*, %struct.adav80x** %8, align 8
  %13 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SND_SOC_DAIFMT_RIGHT_J, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %25 = call i32 @params_width(%struct.snd_pcm_hw_params* %24)
  switch i32 %25, label %34 [
    i32 16, label %26
    i32 18, label %28
    i32 20, label %30
    i32 24, label %32
  ]

26:                                               ; preds = %23
  %27 = load i32, i32* @ADAV80X_PLAYBACK_MODE_RIGHT_J_16, align 4
  store i32 %27, i32* %9, align 4
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* @ADAV80X_PLAYBACK_MODE_RIGHT_J_18, align 4
  store i32 %29, i32* %9, align 4
  br label %37

30:                                               ; preds = %23
  %31 = load i32, i32* @ADAV80X_PLAYBACK_MODE_RIGHT_J_20, align 4
  store i32 %31, i32* %9, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @ADAV80X_PLAYBACK_MODE_RIGHT_J_24, align 4
  store i32 %33, i32* %9, align 4
  br label %37

34:                                               ; preds = %23
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %32, %30, %28, %26
  %38 = load %struct.adav80x*, %struct.adav80x** %8, align 8
  %39 = getelementptr inbounds %struct.adav80x, %struct.adav80x* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32**, i32*** @adav80x_port_ctrl_regs, align 8
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ADAV80X_PLAYBACK_MODE_MASK, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @regmap_update_bits(i32 %40, i32 %48, i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %37, %34, %22
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.adav80x* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
