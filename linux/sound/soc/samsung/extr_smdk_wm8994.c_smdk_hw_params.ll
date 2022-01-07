; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smdk_wm8994.c_smdk_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_smdk_wm8994.c_smdk_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@WM8994_FLL1 = common dso_local global i32 0, align 4
@WM8994_FLL_SRC_MCLK1 = common dso_local global i32 0, align 4
@SMDK_WM8994_FREQ = common dso_local global i32 0, align 4
@WM8994_SYSCLK_FLL1 = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @smdk_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smdk_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %11, align 8
  store %struct.snd_soc_pcm_runtime* %12, %struct.snd_soc_pcm_runtime** %6, align 8
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %13, i32 0, i32 0
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %14, align 8
  store %struct.snd_soc_dai* %15, %struct.snd_soc_dai** %7, align 8
  %16 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %17 = call i32 @params_width(%struct.snd_pcm_hw_params* %16)
  %18 = icmp eq i32 %17, 24
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  %22 = mul nsw i32 %21, 384
  store i32 %22, i32* %8, align 4
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  %26 = icmp eq i32 %25, 8000
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %29 = call i32 @params_rate(%struct.snd_pcm_hw_params* %28)
  %30 = icmp eq i32 %29, 11025
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %23
  %32 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %33 = call i32 @params_rate(%struct.snd_pcm_hw_params* %32)
  %34 = mul nsw i32 %33, 512
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = call i32 @params_rate(%struct.snd_pcm_hw_params* %36)
  %38 = mul nsw i32 %37, 256
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %42 = load i32, i32* @WM8994_FLL1, align 4
  %43 = load i32, i32* @WM8994_FLL_SRC_MCLK1, align 4
  %44 = load i32, i32* @SMDK_WM8994_FREQ, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %62

51:                                               ; preds = %40
  %52 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %53 = load i32, i32* @WM8994_SYSCLK_FLL1, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %56 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %49
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @params_width(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
