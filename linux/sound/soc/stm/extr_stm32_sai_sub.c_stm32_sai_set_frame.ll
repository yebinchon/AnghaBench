; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_frame.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_set_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i32, i32, i32, i32, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_A = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_DSP_B = common dso_local global i32 0, align 4
@SAI_XFRCR_FRL_MASK = common dso_local global i32 0, align 4
@SAI_XFRCR_FSALL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Frame length %d, frame active %d\0A\00", align 1
@STM_SAI_FRCR_REGX = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_LSB = common dso_local global i32 0, align 4
@STM_SAI_SLOTR_REGX = common dso_local global i32 0, align 4
@SAI_XSLOTR_FBOFF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dai*)* @stm32_sai_set_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_sai_set_frame(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.stm32_sai_sub_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %10 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.stm32_sai_sub_data* %10, %struct.stm32_sai_sub_data** %3, align 8
  %11 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %12 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %17 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %20 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %26 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SND_SOC_DAIFMT_DSP_A, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SND_SOC_DAIFMT_DSP_B, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %1
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %39 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @SAI_XFRCR_FRL_SET(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @SAI_XFRCR_FSALL_SET(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @SAI_XFRCR_FRL_MASK, align 4
  %49 = load i32, i32* @SAI_XFRCR_FSALL_MASK, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %55 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @dev_dbg(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %60 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @STM_SAI_FRCR_REGX, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %67 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @SND_SOC_DAIFMT_LSB, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %37
  %74 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %75 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %78 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %76, %79
  store i32 %80, i32* %5, align 4
  %81 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %3, align 8
  %82 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @STM_SAI_SLOTR_REGX, align 4
  %85 = load i32, i32* @SAI_XSLOTR_FBOFF_MASK, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @SAI_XSLOTR_FBOFF_SET(i32 %86)
  %88 = call i32 @regmap_update_bits(i32 %83, i32 %84, i32 %85, i32 %87)
  br label %89

89:                                               ; preds = %73, %37
  ret void
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @SAI_XFRCR_FRL_SET(i32) #1

declare dso_local i32 @SAI_XFRCR_FSALL_SET(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SAI_XSLOTR_FBOFF_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
