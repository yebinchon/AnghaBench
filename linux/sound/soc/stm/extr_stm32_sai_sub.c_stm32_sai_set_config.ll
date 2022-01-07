; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i32, i64 }

@STM_SAI_CR2_REGX = common dso_local global i32 0, align 4
@SAI_XCR2_FFLUSH = common dso_local global i32 0, align 4
@SAI_XCR2_FTH_MASK = common dso_local global i32 0, align 4
@STM_SAI_FIFO_TH_HALF = common dso_local global i32 0, align 4
@SAI_XCR1_DS_MASK = common dso_local global i32 0, align 4
@SAI_DATASIZE_8 = common dso_local global i32 0, align 4
@SAI_DATASIZE_16 = common dso_local global i32 0, align 4
@SAI_DATASIZE_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Data format not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SAI_XCR1_MONO = common dso_local global i32 0, align 4
@STM_SAI_CR1_REGX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to update CR1 register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @stm32_sai_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_set_config(%struct.snd_soc_dai* %0, %struct.snd_pcm_substream* %1, %struct.snd_pcm_hw_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.snd_pcm_substream*, align 8
  %7 = alloca %struct.snd_pcm_hw_params*, align 8
  %8 = alloca %struct.stm32_sai_sub_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %6, align 8
  store %struct.snd_pcm_hw_params* %2, %struct.snd_pcm_hw_params** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %13 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.stm32_sai_sub_data* %13, %struct.stm32_sai_sub_data** %8, align 8
  %14 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %15 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STM_SAI_CR2_REGX, align 4
  %18 = load i32, i32* @SAI_XCR2_FFLUSH, align 4
  %19 = load i32, i32* @SAI_XCR2_FTH_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SAI_XCR2_FFLUSH, align 4
  %22 = load i32, i32* @STM_SAI_FIFO_TH_HALF, align 4
  %23 = call i32 @SAI_XCR2_FTH_SET(i32 %22)
  %24 = or i32 %21, %23
  %25 = call i32 @regmap_write_bits(i32 %16, i32 %17, i32 %20, i32 %24)
  %26 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %27 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %31 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  store i32 0, i32* %4, align 4
  br label %85

32:                                               ; preds = %3
  %33 = load i32, i32* @SAI_XCR1_DS_MASK, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %35 = call i32 @params_format(%struct.snd_pcm_hw_params* %34)
  switch i32 %35, label %45 [
    i32 128, label %36
    i32 130, label %39
    i32 129, label %42
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @SAI_DATASIZE_8, align 4
  %38 = call i32 @SAI_XCR1_DS_SET(i32 %37)
  store i32 %38, i32* %9, align 4
  br label %52

39:                                               ; preds = %32
  %40 = load i32, i32* @SAI_DATASIZE_16, align 4
  %41 = call i32 @SAI_XCR1_DS_SET(i32 %40)
  store i32 %41, i32* %9, align 4
  br label %52

42:                                               ; preds = %32
  %43 = load i32, i32* @SAI_DATASIZE_32, align 4
  %44 = call i32 @SAI_XCR1_DS_SET(i32 %43)
  store i32 %44, i32* %9, align 4
  br label %52

45:                                               ; preds = %32
  %46 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %47 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %85

52:                                               ; preds = %42, %39, %36
  %53 = load i32, i32* @SAI_XCR1_MONO, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %57 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %7, align 8
  %62 = call i32 @params_channels(%struct.snd_pcm_hw_params* %61)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @SAI_XCR1_MONO, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %64, %60, %52
  %69 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %70 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %68
  %79 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %85

84:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %78, %45, %29
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SAI_XCR2_FTH_SET(i32) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @SAI_XCR1_DS_SET(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
