; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_nau88l25_ssm4567.c_platform_clock_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_skl_nau88l25_ssm4567.c_platform_clock_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.snd_soc_dapm_context* }
%struct.snd_soc_dapm_context = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_dai = type { i32 }

@SKL_NUVOTON_CODEC_DAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Codec dai not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NAU8825_CLK_MCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"set sysclk err = %d\0A\00", align 1
@NAU8825_CLK_INTERNAL = common dso_local global i32 0, align 4
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
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %19 = load i32, i32* @SKL_NUVOTON_CODEC_DAI, align 4
  %20 = call %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card* %18, i32 %19)
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %10, align 8
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %22 = icmp ne %struct.snd_soc_dai* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %25 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_err(i32 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @SND_SOC_DAPM_EVENT_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %36 = load i32, i32* @NAU8825_CLK_MCLK, align 4
  %37 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %38 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %35, i32 %36, i32 24000000, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %43 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %68

49:                                               ; preds = %34
  br label %66

50:                                               ; preds = %30
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %52 = load i32, i32* @NAU8825_CLK_INTERNAL, align 4
  %53 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %54 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %51, i32 %52, i32 0, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.snd_soc_card*, %struct.snd_soc_card** %9, align 8
  %59 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %68

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %57, %41, %23
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.snd_soc_dai* @snd_soc_card_get_codec_dai(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @SND_SOC_DAPM_EVENT_ON(i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
