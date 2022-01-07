; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tobermory.c_tobermory_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_tobermory.c_tobermory_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_context = type { i64, i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i64 }

@SND_SOC_BIAS_STANDBY = common dso_local global i32 0, align 4
@WM8962_FLL = common dso_local global i32 0, align 4
@WM8962_FLL_MCLK = common dso_local global i32 0, align 4
@sample_rate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to start FLL: %d\0A\00", align 1
@WM8962_SYSCLK_FLL = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set SYSCLK: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dapm_context*, i32)* @tobermory_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tobermory_set_bias_level(%struct.snd_soc_card* %0, %struct.snd_soc_dapm_context* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_dapm_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %5, align 8
  store %struct.snd_soc_dapm_context* %1, %struct.snd_soc_dapm_context** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %12 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %11, i32 %17)
  store %struct.snd_soc_pcm_runtime* %18, %struct.snd_soc_pcm_runtime** %8, align 8
  %19 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %8, align 8
  %20 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %19, i32 0, i32 0
  %21 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %20, align 8
  store %struct.snd_soc_dai* %21, %struct.snd_soc_dai** %9, align 8
  %22 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %68 [
    i32 128, label %32
  ]

32:                                               ; preds = %30
  %33 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SND_SOC_BIAS_STANDBY, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %40 = load i32, i32* @WM8962_FLL, align 4
  %41 = load i32, i32* @WM8962_FLL_MCLK, align 4
  %42 = load i32, i32* @sample_rate, align 4
  %43 = mul nsw i32 %42, 512
  %44 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %39, i32 %40, i32 %41, i32 32768, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %38
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %52 = load i32, i32* @WM8962_SYSCLK_FLL, align 4
  %53 = load i32, i32* @sample_rate, align 4
  %54 = mul nsw i32 %53, 512
  %55 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %56 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %51, i32 %52, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %63 = load i32, i32* @WM8962_FLL, align 4
  %64 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %62, i32 %63, i32 0, i32 0, i32 0)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %70

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %32
  br label %69

68:                                               ; preds = %30
  br label %69

69:                                               ; preds = %68, %67
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %59, %29
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card*, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
