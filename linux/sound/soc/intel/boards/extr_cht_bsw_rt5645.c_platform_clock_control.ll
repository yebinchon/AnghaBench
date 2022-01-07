; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5645.c_platform_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_cht_bsw_rt5645.c_platform_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.cht_mc_private = type { i32 }

@CHT_CODEC_DAI1 = common dso_local global i32 0, align 4
@CHT_CODEC_DAI2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Codec dai not found; Unable to set platform clock\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"could not configure MCLK state\00", align 1
@RT5645_SCLK_S_RCCLK = common dso_local global i32 0, align 4
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
  %22 = load i32, i32* @CHT_CODEC_DAI1, align 4
  %23 = call %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %21, i32 %22)
  store %struct.snd_soc_dai* %23, %struct.snd_soc_dai** %10, align 8
  %24 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %25 = icmp ne %struct.snd_soc_dai* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %28 = load i32, i32* @CHT_CODEC_DAI2, align 4
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
  br label %78

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.cht_mc_private*, %struct.cht_mc_private** %11, align 8
  %46 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_prepare_enable(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %53 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %78

57:                                               ; preds = %44
  br label %77

58:                                               ; preds = %40
  %59 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %60 = load i32, i32* @RT5645_SCLK_S_RCCLK, align 4
  %61 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %62 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %59, i32 %60, i32 24576000, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %67 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %78

72:                                               ; preds = %58
  %73 = load %struct.cht_mc_private*, %struct.cht_mc_private** %11, align 8
  %74 = getelementptr inbounds %struct.cht_mc_private, %struct.cht_mc_private* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clk_disable_unprepare(i32 %75)
  br label %77

77:                                               ; preds = %72, %57
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %65, %51, %33
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.cht_mc_private* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
