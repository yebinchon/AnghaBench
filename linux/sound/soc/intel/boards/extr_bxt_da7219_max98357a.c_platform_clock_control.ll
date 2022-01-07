; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_platform_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bxt_da7219_max98357a.c_platform_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_dai = type { i32 }

@BXT_DIALOG_CODEC_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Codec dai not found; Unable to set/unset codec pll\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DA7219_SYSCLK_MCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to stop PLL: %d\0A\00", align 1
@DA7219_SYSCLK_PLL_SRM = common dso_local global i32 0, align 4
@DA7219_PLL_FREQ_OUT_98304 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to start PLL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @platform_clock_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_clock_control(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_soc_dapm_context*, align 8
  %10 = alloca %struct.snd_soc_card*, align 8
  %11 = alloca %struct.snd_soc_dai*, align 8
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  store %struct.snd_soc_dapm_context* %14, %struct.snd_soc_dapm_context** %9, align 8
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %9, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %16, align 8
  store %struct.snd_soc_card* %17, %struct.snd_soc_card** %10, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  %19 = load i32, i32* @BXT_DIALOG_CODEC_DAI, align 4
  %20 = call %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %18, i32 %19)
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %11, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %22 = icmp ne %struct.snd_soc_dai* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @SND_SOC_DAPM_EVENT_OFF(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %36 = load i32, i32* @DA7219_SYSCLK_MCLK, align 4
  %37 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %35, i32 0, i32 %36, i32 0, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  %42 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  br label %66

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %47
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %11, align 8
  %53 = load i32, i32* @DA7219_SYSCLK_PLL_SRM, align 4
  %54 = load i32, i32* @DA7219_PLL_FREQ_OUT_98304, align 4
  %55 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %52, i32 0, i32 %53, i32 0, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.snd_soc_card*, %struct.snd_soc_card** %10, align 8
  %60 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %65

65:                                               ; preds = %64, %47
  br label %66

66:                                               ; preds = %65, %46
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_OFF(i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
