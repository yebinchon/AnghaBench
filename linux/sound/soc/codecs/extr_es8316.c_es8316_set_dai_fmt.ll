; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_set_dai_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8316.c_es8316_set_dai_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@SND_SOC_DAIFMT_MASTER_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Codec driver only supports slave mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_I2S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Codec driver only supports I2S format\0A\00", align 1
@SND_SOC_DAIFMT_INV_MASK = common dso_local global i32 0, align 4
@ES8316_SERDATA1_BCLK_INV = common dso_local global i32 0, align 4
@ES8316_SERDATA2_ADCLRP = common dso_local global i32 0, align 4
@ES8316_SERDATA1_MASTER = common dso_local global i32 0, align 4
@ES8316_SERDATA1 = common dso_local global i32 0, align 4
@ES8316_SERDATA2_FMT_MASK = common dso_local global i32 0, align 4
@ES8316_SERDATA_ADC = common dso_local global i32 0, align 4
@ES8316_SERDATA_DAC = common dso_local global i32 0, align 4
@ES8316_CLKMGR_CLKSW_MCLK_ON = common dso_local global i32 0, align 4
@ES8316_CLKMGR_CLKSW_BCLK_ON = common dso_local global i32 0, align 4
@ES8316_CLKMGR_CLKSW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @es8316_set_dai_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8316_set_dai_fmt(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  store %struct.snd_soc_component* %13, %struct.snd_soc_component** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @SND_SOC_DAIFMT_MASTER_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @SND_SOC_DAIFMT_I2S, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %92

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SND_SOC_DAIFMT_INV_MASK, align 4
  %42 = and i32 %40, %41
  switch i32 %42, label %59 [
    i32 128, label %43
    i32 131, label %44
    i32 130, label %51
    i32 129, label %55
  ]

43:                                               ; preds = %39
  br label %62

44:                                               ; preds = %39
  %45 = load i32, i32* @ES8316_SERDATA1_BCLK_INV, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @ES8316_SERDATA2_ADCLRP, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %62

51:                                               ; preds = %39
  %52 = load i32, i32* @ES8316_SERDATA1_BCLK_INV, align 4
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %62

55:                                               ; preds = %39
  %56 = load i32, i32* @ES8316_SERDATA2_ADCLRP, align 4
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %62

59:                                               ; preds = %39
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %92

62:                                               ; preds = %55, %51, %44, %43
  %63 = load i32, i32* @ES8316_SERDATA1_MASTER, align 4
  %64 = load i32, i32* @ES8316_SERDATA1_BCLK_INV, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %67 = load i32, i32* @ES8316_SERDATA1, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @ES8316_SERDATA2_FMT_MASK, align 4
  %72 = load i32, i32* @ES8316_SERDATA2_ADCLRP, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %75 = load i32, i32* @ES8316_SERDATA_ADC, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %80 = load i32, i32* @ES8316_SERDATA_DAC, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %79, i32 %80, i32 %81, i32 %82)
  %84 = load i32, i32* @ES8316_CLKMGR_CLKSW_MCLK_ON, align 4
  %85 = load i32, i32* @ES8316_CLKMGR_CLKSW_BCLK_ON, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %9, align 4
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %88 = load i32, i32* @ES8316_CLKMGR_CLKSW, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %87, i32 %88, i32 %89, i32 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %62, %59, %32, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
