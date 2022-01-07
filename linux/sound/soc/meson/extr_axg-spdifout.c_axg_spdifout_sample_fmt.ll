; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifout.c_axg_spdifout_sample_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-spdifout.c_axg_spdifout_sample_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axg_spdifout = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"too many channels for spdif dai: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0 = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_MASK_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unsupported physical width: %u\0A\00", align 1
@SPDIFOUT_CTRL1 = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL1_MSB_POS_MASK = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL1_TYPE_MASK = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_MSB_FIRST = common dso_local global i32 0, align 4
@SPDIFOUT_CTRL0_DATA_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @axg_spdifout_sample_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_spdifout_sample_fmt(%struct.snd_pcm_hw_params* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.axg_spdifout*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = call %struct.axg_spdifout* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.axg_spdifout* %9, %struct.axg_spdifout** %6, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %11 = call i32 @params_channels(%struct.snd_pcm_hw_params* %10)
  switch i32 %11, label %16 [
    i32 1, label %12
    i32 2, label %14
  ]

12:                                               ; preds = %2
  %13 = call i32 @SPDIFOUT_CTRL0_MASK(i32 1)
  store i32 %13, i32* %7, align 4
  br label %25

14:                                               ; preds = %2
  %15 = call i32 @SPDIFOUT_CTRL0_MASK(i32 3)
  store i32 %15, i32* %7, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %21 = call i32 @params_channels(%struct.snd_pcm_hw_params* %20)
  %22 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %74

25:                                               ; preds = %14, %12
  %26 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %27 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SPDIFOUT_CTRL0, align 4
  %30 = load i32, i32* @SPDIFOUT_CTRL0_MASK_MASK, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %34 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %33)
  switch i32 %34, label %41 [
    i32 8, label %35
    i32 16, label %37
    i32 32, label %39
  ]

35:                                               ; preds = %25
  %36 = call i32 @SPDIFOUT_CTRL1_TYPE(i32 0)
  store i32 %36, i32* %7, align 4
  br label %50

37:                                               ; preds = %25
  %38 = call i32 @SPDIFOUT_CTRL1_TYPE(i32 2)
  store i32 %38, i32* %7, align 4
  br label %50

39:                                               ; preds = %25
  %40 = call i32 @SPDIFOUT_CTRL1_TYPE(i32 4)
  store i32 %40, i32* %7, align 4
  br label %50

41:                                               ; preds = %25
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %46 = call i32 @params_physical_width(%struct.snd_pcm_hw_params* %45)
  %47 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %74

50:                                               ; preds = %39, %37, %35
  %51 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %52 = call i64 @params_width(%struct.snd_pcm_hw_params* %51)
  %53 = sub nsw i64 %52, 1
  %54 = call i32 @SPDIFOUT_CTRL1_MSB_POS(i64 %53)
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %58 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SPDIFOUT_CTRL1, align 4
  %61 = load i32, i32* @SPDIFOUT_CTRL1_MSB_POS_MASK, align 4
  %62 = load i32, i32* @SPDIFOUT_CTRL1_TYPE_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %63, i32 %64)
  %66 = load %struct.axg_spdifout*, %struct.axg_spdifout** %6, align 8
  %67 = getelementptr inbounds %struct.axg_spdifout, %struct.axg_spdifout* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SPDIFOUT_CTRL0, align 4
  %70 = load i32, i32* @SPDIFOUT_CTRL0_MSB_FIRST, align 4
  %71 = load i32, i32* @SPDIFOUT_CTRL0_DATA_SEL, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @regmap_update_bits(i32 %68, i32 %69, i32 %72, i32 0)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %50, %41, %16
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.axg_spdifout* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SPDIFOUT_CTRL0_MASK(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @params_physical_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SPDIFOUT_CTRL1_TYPE(i32) #1

declare dso_local i32 @SPDIFOUT_CTRL1_MSB_POS(i64) #1

declare dso_local i64 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
