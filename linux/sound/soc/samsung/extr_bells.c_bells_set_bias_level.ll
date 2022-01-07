; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_bells.c_bells_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_bells.c_bells_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_2__*, %struct.bells_drvdata* }
%struct.TYPE_2__ = type { i32 }
%struct.bells_drvdata = type { i32, i32 }
%struct.snd_soc_dapm_context = type { i64, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i64, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@DAI_DSP_CODEC = common dso_local global i64 0, align 8
@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@WM5102_FLL1 = common dso_local global i32 0, align 4
@ARIZONA_FLL_SRC_MCLK1 = common dso_local global i32 0, align 4
@MCLK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to start FLL: %d\0A\00", align 1
@WM5102_FLL2 = common dso_local global i32 0, align 4
@ARIZONA_FLL_SRC_AIF2BCLK = common dso_local global i32 0, align 4
@BCLK2_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dapm_context*, i32)* @bells_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bells_set_bias_level(%struct.snd_soc_card* %0, %struct.snd_soc_dapm_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.snd_soc_component*, align 8
  %11 = alloca %struct.bells_drvdata*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store %struct.snd_soc_dapm_context* %1, %struct.snd_soc_dapm_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %14 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %13, i32 0, i32 1
  %15 = load %struct.bells_drvdata*, %struct.bells_drvdata** %14, align 8
  store %struct.bells_drvdata* %15, %struct.bells_drvdata** %11, align 8
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* @DAI_DSP_CODEC, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %16, i32 %23)
  store %struct.snd_soc_pcm_runtime* %24, %struct.snd_soc_pcm_runtime** %8, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %26, align 8
  store %struct.snd_soc_dai* %27, %struct.snd_soc_dai** %9, align 8
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %29 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %28, i32 0, i32 1
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %29, align 8
  store %struct.snd_soc_component* %30, %struct.snd_soc_component** %10, align 8
  %31 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %35 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %83 [
    i32 128, label %41
  ]

41:                                               ; preds = %39
  %42 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %84

48:                                               ; preds = %41
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %50 = load i32, i32* @WM5102_FLL1, align 4
  %51 = load i32, i32* @ARIZONA_FLL_SRC_MCLK1, align 4
  %52 = load i32, i32* @MCLK_RATE, align 4
  %53 = load %struct.bells_drvdata*, %struct.bells_drvdata** %11, align 8
  %54 = getelementptr inbounds %struct.bells_drvdata, %struct.bells_drvdata* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 %52, i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %48
  %63 = load %struct.bells_drvdata*, %struct.bells_drvdata** %11, align 8
  %64 = getelementptr inbounds %struct.bells_drvdata, %struct.bells_drvdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %10, align 8
  %69 = load i32, i32* @WM5102_FLL2, align 4
  %70 = load i32, i32* @ARIZONA_FLL_SRC_AIF2BCLK, align 4
  %71 = load i32, i32* @BCLK2_RATE, align 4
  %72 = load %struct.bells_drvdata*, %struct.bells_drvdata** %11, align 8
  %73 = getelementptr inbounds %struct.bells_drvdata, %struct.bells_drvdata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snd_soc_component_set_pll(%struct.snd_soc_component* %68, i32 %69, i32 %70, i32 %71, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %67
  br label %82

82:                                               ; preds = %81, %62
  br label %84

83:                                               ; preds = %39
  br label %84

84:                                               ; preds = %83, %82, %47
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %38
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @snd_soc_component_set_pll(%struct.snd_soc_component*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
