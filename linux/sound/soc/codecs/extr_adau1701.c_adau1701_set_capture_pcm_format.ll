; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_capture_pcm_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_set_capture_pcm_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.adau1701 = type { i64, i32 }

@ADAU1701_SEROCTL_WORD_LEN_MASK = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_WORD_LEN_16 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_WORD_LEN_20 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_WORD_LEN_24 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_RIGHT_J = common dso_local global i64 0, align 8
@ADAU1701_SEROCTL_MSB_DEALY16 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_MSB_DEALY12 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_MSB_DEALY8 = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL_MSB_DEALY_MASK = common dso_local global i32 0, align 4
@ADAU1701_SEROCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.snd_pcm_hw_params*)* @adau1701_set_capture_pcm_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_set_capture_pcm_format(%struct.snd_soc_component* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.adau1701*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %9 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %10 = call %struct.adau1701* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %9)
  store %struct.adau1701* %10, %struct.adau1701** %6, align 8
  %11 = load i32, i32* @ADAU1701_SEROCTL_WORD_LEN_MASK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %13 = call i32 @params_width(%struct.snd_pcm_hw_params* %12)
  switch i32 %13, label %20 [
    i32 16, label %14
    i32 20, label %16
    i32 24, label %18
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @ADAU1701_SEROCTL_WORD_LEN_16, align 4
  store i32 %15, i32* %8, align 4
  br label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @ADAU1701_SEROCTL_WORD_LEN_20, align 4
  store i32 %17, i32* %8, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @ADAU1701_SEROCTL_WORD_LEN_24, align 4
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %18, %16, %14
  %24 = load %struct.adau1701*, %struct.adau1701** %6, align 8
  %25 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SND_SOC_DAIFMT_RIGHT_J, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = call i32 @params_width(%struct.snd_pcm_hw_params* %30)
  switch i32 %31, label %44 [
    i32 16, label %32
    i32 20, label %36
    i32 24, label %40
  ]

32:                                               ; preds = %29
  %33 = load i32, i32* @ADAU1701_SEROCTL_MSB_DEALY16, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %44

36:                                               ; preds = %29
  %37 = load i32, i32* @ADAU1701_SEROCTL_MSB_DEALY12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @ADAU1701_SEROCTL_MSB_DEALY8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %29, %40, %36, %32
  %45 = load i32, i32* @ADAU1701_SEROCTL_MSB_DEALY_MASK, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %23
  %49 = load %struct.adau1701*, %struct.adau1701** %6, align 8
  %50 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ADAU1701_SEROCTL, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
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
