; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Enable DMA and SAI\0A\00", align 1
@STM_SAI_CR1_REGX = common dso_local global i32 0, align 4
@SAI_XCR1_DMAEN = common dso_local global i32 0, align 4
@SAI_XCR1_SAIEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to update CR1 register\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Disable DMA and SAI\0A\00", align 1
@STM_SAI_IMR_REGX = common dso_local global i32 0, align 4
@SAI_XIMR_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @stm32_sai_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.stm32_sai_sub_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.stm32_sai_sub_data* %11, %struct.stm32_sai_sub_data** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %82 [
    i32 130, label %13
    i32 131, label %13
    i32 132, label %13
    i32 128, label %40
    i32 133, label %40
    i32 129, label %40
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %19 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %22 = load i32, i32* @SAI_XCR1_DMAEN, align 4
  %23 = load i32, i32* @SAI_XCR1_DMAEN, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %26 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %29 = load i32, i32* @SAI_XCR1_SAIEN, align 4
  %30 = load i32, i32* @SAI_XCR1_SAIEN, align 4
  %31 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %13
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %13
  br label %85

40:                                               ; preds = %3, %3, %3
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %42 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %46 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STM_SAI_IMR_REGX, align 4
  %49 = load i32, i32* @SAI_XIMR_MASK, align 4
  %50 = call i32 @regmap_update_bits(i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %52 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %55 = load i32, i32* @SAI_XCR1_SAIEN, align 4
  %56 = load i32, i32* @SAI_XCR1_SAIEN, align 4
  %57 = xor i32 %56, -1
  %58 = call i32 @regmap_update_bits(i32 %53, i32 %54, i32 %55, i32 %57)
  %59 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %60 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @STM_SAI_CR1_REGX, align 4
  %63 = load i32, i32* @SAI_XCR1_DMAEN, align 4
  %64 = load i32, i32* @SAI_XCR1_DMAEN, align 4
  %65 = xor i32 %64, -1
  %66 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %40
  %70 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %71 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %40
  %75 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %76 = call i32 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %8, align 8
  %80 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %74
  br label %85

82:                                               ; preds = %3
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %87

85:                                               ; preds = %81, %39
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
