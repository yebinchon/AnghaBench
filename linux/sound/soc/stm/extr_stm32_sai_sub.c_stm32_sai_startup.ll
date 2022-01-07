; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i64, i32, i32, %struct.snd_pcm_substream* }

@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_FMTBIT_S32_LE = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to enable clock: %d\0A\00", align 1
@STM_SAI_CLRFR_REGX = common dso_local global i32 0, align 4
@SAI_XCLRFR_MASK = common dso_local global i32 0, align 4
@SAI_XIMR_OVRUDRIE = common dso_local global i32 0, align 4
@STM_SAI_CR2_REGX = common dso_local global i32 0, align 4
@SAI_XCR2_MUTECNT_MASK = common dso_local global i32 0, align 4
@SAI_XIMR_MUTEDETIE = common dso_local global i32 0, align 4
@SAI_XIMR_WCKCFGIE = common dso_local global i32 0, align 4
@SAI_XIMR_AFSDETIE = common dso_local global i32 0, align 4
@SAI_XIMR_LFSDETIE = common dso_local global i32 0, align 4
@STM_SAI_IMR_REGX = common dso_local global i32 0, align 4
@SAI_XIMR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @stm32_sai_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_sai_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.stm32_sai_sub_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.stm32_sai_sub_data* %12, %struct.stm32_sai_sub_data** %6, align 8
  %13 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %14 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %13, i32 0, i32 3
  %15 = load i64, i64* %10, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %19 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %18, i32 0, i32 4
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %19, align 8
  %20 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %21 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %20, i32 0, i32 3
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %25 = call i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %32 = load i32, i32* @SNDRV_PCM_FMTBIT_S32_LE, align 4
  %33 = call i32 @snd_pcm_hw_constraint_mask64(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %38 = call i32 @snd_pcm_hw_constraint_single(i32 %36, i32 %37, i32 2)
  br label %39

39:                                               ; preds = %27, %2
  %40 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %41 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_prepare_enable(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %103

53:                                               ; preds = %39
  %54 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %55 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @STM_SAI_CLRFR_REGX, align 4
  %58 = load i32, i32* @SAI_XCLRFR_MASK, align 4
  %59 = load i32, i32* @SAI_XCLRFR_MASK, align 4
  %60 = call i32 @regmap_write_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @SAI_XIMR_OVRUDRIE, align 4
  store i32 %61, i32* %7, align 4
  %62 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %63 = call i64 @STM_SAI_IS_CAPTURE(%struct.stm32_sai_sub_data* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %53
  %66 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %67 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @STM_SAI_CR2_REGX, align 4
  %70 = call i32 @regmap_read(i32 %68, i32 %69, i32* %8)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @SAI_XCR2_MUTECNT_MASK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @SAI_XIMR_MUTEDETIE, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %65
  br label %80

80:                                               ; preds = %79, %53
  %81 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %82 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @SAI_XIMR_WCKCFGIE, align 4
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %95

89:                                               ; preds = %80
  %90 = load i32, i32* @SAI_XIMR_AFSDETIE, align 4
  %91 = load i32, i32* @SAI_XIMR_LFSDETIE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %89, %85
  %96 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %6, align 8
  %97 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @STM_SAI_IMR_REGX, align 4
  %100 = load i32, i32* @SAI_XIMR_MASK, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %100, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %95, %46
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @STM_SAI_PROTOCOL_IS_SPDIF(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @snd_pcm_hw_constraint_mask64(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_single(i32, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i64 @STM_SAI_IS_CAPTURE(%struct.stm32_sai_sub_data*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
