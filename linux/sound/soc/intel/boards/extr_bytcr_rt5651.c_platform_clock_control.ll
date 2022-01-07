; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_platform_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcr_rt5651.c_platform_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.byt_rt5651_private = type { i32 }

@BYT_CODEC_DAI1 = common dso_local global i32 0, align 4
@BYT_CODEC_DAI2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Codec dai not found; Unable to set platform clock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@byt_rt5651_quirk = common dso_local global i32 0, align 4
@BYT_RT5651_MCLK_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not configure MCLK state\00", align 1
@RT5651_SCLK_S_RCCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"can't set codec sysclk: %d\0A\00", align 1
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
  %11 = alloca %struct.byt_rt5651_private*, align 8
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
  %20 = call %struct.byt_rt5651_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %19)
  store %struct.byt_rt5651_private* %20, %struct.byt_rt5651_private** %11, align 8
  %21 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %22 = load i32, i32* @BYT_CODEC_DAI1, align 4
  %23 = call %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %21, i32 %22)
  store %struct.snd_soc_dai* %23, %struct.snd_soc_dai** %10, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %25 = icmp ne %struct.snd_soc_dai* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %28 = load i32, i32* @BYT_CODEC_DAI2, align 4
  %29 = call %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %27, i32 %28)
  store %struct.snd_soc_dai* %29, %struct.snd_soc_dai** %10, align 8
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %32 = icmp ne %struct.snd_soc_dai* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %35 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %96

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i32, i32* @byt_rt5651_quirk, align 4
  %46 = load i32, i32* @BYT_RT5651_MCLK_EN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %11, align 8
  %51 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_prepare_enable(i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %58 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %96

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %65 = call i32 @byt_rt5651_prepare_and_enable_pll1(%struct.snd_soc_dai* %64, i32 48000, i32 50)
  store i32 %65, i32* %12, align 4
  br label %85

66:                                               ; preds = %40
  %67 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %68 = load i32, i32* @RT5651_SCLK_S_RCCLK, align 4
  %69 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %70 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %67, i32 %68, i32 24576000, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @byt_rt5651_quirk, align 4
  %75 = load i32, i32* @BYT_RT5651_MCLK_EN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.byt_rt5651_private*, %struct.byt_rt5651_private** %11, align 8
  %80 = getelementptr inbounds %struct.byt_rt5651_private, %struct.byt_rt5651_private* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @clk_disable_unprepare(i32 %81)
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %66
  br label %85

85:                                               ; preds = %84, %63
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %90 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %96

95:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %88, %56, %33
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.byt_rt5651_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @byt_rt5651_prepare_and_enable_pll1(%struct.snd_soc_dai*, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
