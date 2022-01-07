; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_littlemill.c_bbclk_ev.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_littlemill.c_bbclk_ev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_soc_card* }
%struct.snd_soc_card = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }

@WM8994_FLL2 = common dso_local global i32 0, align 4
@WM8994_FLL_SRC_BCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to start FLL: %d\0A\00", align 1
@WM8994_SYSCLK_FLL2 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to set SYSCLK: %d\0A\00", align 1
@WM8994_SYSCLK_MCLK2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to switch away from FLL2: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to stop FLL2: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dapm_widget*, %struct.snd_kcontrol*, i32)* @bbclk_ev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbclk_ev(%struct.snd_soc_dapm_widget* %0, %struct.snd_kcontrol* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_dapm_widget*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_soc_card*, align 8
  %9 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %10 = alloca %struct.snd_soc_dai*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %5, align 8
  store %struct.snd_kcontrol* %1, %struct.snd_kcontrol** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %5, align 8
  %13 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_card*, %struct.snd_soc_card** %15, align 8
  store %struct.snd_soc_card* %16, %struct.snd_soc_card** %8, align 8
  %17 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %18 = load %struct.snd_soc_card*, %struct.snd_soc_card** %8, align 8
  %19 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.snd_soc_pcm_runtime* @snd_soc_get_pcm_runtime(%struct.snd_soc_card* %17, i32 %23)
  store %struct.snd_soc_pcm_runtime* %24, %struct.snd_soc_pcm_runtime** %9, align 8
  %25 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %9, align 8
  %26 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %25, i32 0, i32 0
  %27 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %26, align 8
  store %struct.snd_soc_dai* %27, %struct.snd_soc_dai** %10, align 8
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %74 [
    i32 128, label %29
    i32 129, label %52
  ]

29:                                               ; preds = %3
  %30 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %31 = load i32, i32* @WM8994_FLL2, align 4
  %32 = load i32, i32* @WM8994_FLL_SRC_BCLK, align 4
  %33 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %30, i32 %31, i32 %32, i32 512000, i32 2048000)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %4, align 4
  br label %78

40:                                               ; preds = %29
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %42 = load i32, i32* @WM8994_SYSCLK_FLL2, align 4
  %43 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %44 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %41, i32 %42, i32 2048000, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %78

51:                                               ; preds = %40
  br label %77

52:                                               ; preds = %3
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %54 = load i32, i32* @WM8994_SYSCLK_MCLK2, align 4
  %55 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %56 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %53, i32 %54, i32 32768, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %78

63:                                               ; preds = %52
  %64 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %10, align 8
  %65 = load i32, i32* @WM8994_FLL2, align 4
  %66 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %64, i32 %65, i32 0, i32 0, i32 0)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %78

73:                                               ; preds = %63
  br label %77

74:                                               ; preds = %3
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %78

77:                                               ; preds = %73, %51
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %74, %69, %59, %47, %36
  %79 = load i32, i32* %4, align 4
  ret i32 %79
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
