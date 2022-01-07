; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_platform_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_kbl_da7219_max98927.c_platform_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_dai = type { i32 }

@KBL_DIALOG_CODEC_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Codec dai not found; Unable to set/unset codec pll\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DA7219_CLKSRC_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"can't set codec sysclk configuration\0A\00", align 1
@DA7219_SYSCLK_MCLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to stop PLL: %d\0A\00", align 1
@DA7219_SYSCLK_PLL_SRM = common dso_local global i32 0, align 4
@DA7219_PLL_FREQ_OUT_98304 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to start PLL: %d\0A\00", align 1
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
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  store %struct.snd_soc_dapm_context* %14, %struct.snd_soc_dapm_context** %8, align 8
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %8, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %16, align 8
  store %struct.snd_soc_card* %17, %struct.snd_soc_card** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %19 = load i32, i32* @KBL_DIALOG_CODEC_DAI, align 4
  %20 = call %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %18, i32 %19)
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %10, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %22 = icmp ne %struct.snd_soc_dai* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %81

30:                                               ; preds = %3
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %32 = load i32, i32* @DA7219_CLKSRC_MCLK, align 4
  %33 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %34 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %31, i32 %32, i32 24576000, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %39 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  br label %81

43:                                               ; preds = %30
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %49 = load i32, i32* @DA7219_SYSCLK_MCLK, align 4
  %50 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %48, i32 0, i32 %49, i32 0, i32 0)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %55 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  br label %79

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %66 = load i32, i32* @DA7219_SYSCLK_PLL_SRM, align 4
  %67 = load i32, i32* @DA7219_PLL_FREQ_OUT_98304, align 4
  %68 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %65, i32 0, i32 %66, i32 0, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %73 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 (i32, i8*, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %64
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %59
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %37, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
