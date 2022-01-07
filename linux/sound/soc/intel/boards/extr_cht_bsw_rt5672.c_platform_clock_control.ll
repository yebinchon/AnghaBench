; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5672.c_platform_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5672.c_platform_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.cht_mc_private = type { i64 }

@CHT_CODEC_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Codec dai not found; Unable to set platform clock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not configure MCLK state\00", align 1
@RT5670_PLL1_S_MCLK = common dso_local global i32 0, align 4
@CHT_PLAT_CLK_3_HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"can't set codec pll: %d\0A\00", align 1
@RT5670_SCLK_S_PLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"can't set codec sysclk: %d\0A\00", align 1
@RT5670_SCLK_S_RCCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @platform_clock_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_clock_control(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_dapm_context*, align 8
  %9 = alloca %struct.snd_soc_card*, align 8
  %10 = alloca %struct.snd_soc_dai*, align 8
  %11 = alloca %struct.cht_mc_private*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %14, align 8
  store %struct.snd_soc_dapm_context* %15, %struct.snd_soc_dapm_context** %8, align 8
  %16 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %17, align 8
  store %struct.snd_soc_card* %18, %struct.snd_soc_card** %9, align 8
  %19 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %20 = call %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %19)
  store %struct.cht_mc_private* %20, %struct.cht_mc_private** %11, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %22 = load i32, i32* @CHT_CODEC_DAI, align 4
  %23 = call %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %21, i32 %22)
  store %struct.snd_soc_dai* %23, %struct.snd_soc_dai** %10, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %25 = icmp ne %struct.snd_soc_dai* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %28 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %101

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  %38 = load %struct.cht_mc_private*, %struct.cht_mc_private** %11, align 8
  %39 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.cht_mc_private*, %struct.cht_mc_private** %11, align 8
  %44 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @clk_prepare_enable(i64 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %51 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %101

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %58 = load i32, i32* @RT5670_PLL1_S_MCLK, align 4
  %59 = load i32, i32* @CHT_PLAT_CLK_3_HZ, align 4
  %60 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %57, i32 0, i32 %58, i32 %59, i32 24576000)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %65 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %101

70:                                               ; preds = %56
  %71 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %72 = load i32, i32* @RT5670_SCLK_S_PLL1, align 4
  %73 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %74 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %71, i32 %72, i32 24576000, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %79 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %101

84:                                               ; preds = %70
  br label %100

85:                                               ; preds = %33
  %86 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %87 = load i32, i32* @RT5670_SCLK_S_RCCLK, align 4
  %88 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %89 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %86, i32 %87, i32 24576000, i32 %88)
  %90 = load %struct.cht_mc_private*, %struct.cht_mc_private** %11, align 8
  %91 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.cht_mc_private*, %struct.cht_mc_private** %11, align 8
  %96 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @clk_disable_unprepare(i64 %97)
  br label %99

99:                                               ; preds = %94, %85
  br label %100

100:                                              ; preds = %99, %84
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %77, %63, %49, %26
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
