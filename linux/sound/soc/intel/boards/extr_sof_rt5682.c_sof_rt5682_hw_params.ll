; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_rt5682_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_sof_rt5682.c_sof_rt5682_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { i32, %struct.snd_soc_dai*, i32 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.sof_card_private = type { i32 }

@sof_rt5682_quirk = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_EN = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_BYTCHT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not configure MCLK state\00", align 1
@RT5682_PLL1_S_MCLK = common dso_local global i32 0, align 4
@SOF_RT5682_MCLK_24MHZ = common dso_local global i32 0, align 4
@RT5682_PLL1_S_BCLK1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"snd_soc_dai_set_pll err = %d\0A\00", align 1
@RT5682_SCLK_S_PLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"snd_soc_dai_set_sysclk err = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"set TDM slot err:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @sof_rt5682_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_rt5682_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.sof_card_private*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %14, align 8
  store %struct.snd_soc_pcm_runtime* %15, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.sof_card_private* @snd_soc_card_get_drvdata(i32 %18)
  store %struct.sof_card_private* %19, %struct.sof_card_private** %7, align 8
  %20 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %20, i32 0, i32 1
  %22 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %21, align 8
  store %struct.snd_soc_dai* %22, %struct.snd_soc_dai** %8, align 8
  %23 = load i32, i32* @sof_rt5682_quirk, align 4
  %24 = load i32, i32* @SOF_RT5682_MCLK_EN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %2
  %28 = load i32, i32* @sof_rt5682_quirk, align 4
  %29 = load i32, i32* @SOF_RT5682_MCLK_BYTCHT_EN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.sof_card_private*, %struct.sof_card_private** %7, align 8
  %34 = getelementptr inbounds %struct.sof_card_private, %struct.sof_card_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_prepare_enable(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %41 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %107

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %27
  %47 = load i32, i32* @RT5682_PLL1_S_MCLK, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @sof_rt5682_quirk, align 4
  %49 = load i32, i32* @SOF_RT5682_MCLK_24MHZ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 24000000, i32* %10, align 4
  br label %54

53:                                               ; preds = %46
  store i32 19200000, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %60

55:                                               ; preds = %2
  %56 = load i32, i32* @RT5682_PLL1_S_BCLK1, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %58 = call i32 @params_rate(%struct.snd_pcm_hw_params* %57)
  %59 = mul nsw i32 %58, 50
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %54
  %61 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %62 = call i32 @params_rate(%struct.snd_pcm_hw_params* %61)
  %63 = mul nsw i32 %62, 512
  store i32 %63, i32* %11, align 4
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %64, i32 0, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %60
  %72 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %73 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %60
  %78 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %79 = load i32, i32* @RT5682_SCLK_S_PLL1, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %82 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %78, i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %87 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %85, %77
  %92 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %93 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %94 = call i32 @params_width(%struct.snd_pcm_hw_params* %93)
  %95 = call i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai* %92, i32 0, i32 0, i32 2, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %100 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = call i32 (i32, i8*, ...) @dev_err(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %3, align 4
  br label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %98, %39
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.sof_card_private* @snd_soc_card_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_tdm_slot(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
