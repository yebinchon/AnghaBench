; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_brownstone.c_brownstone_wm8994_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_brownstone.c_brownstone_wm8994_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@MMP_SSPA_CLK_AUDIO = common dso_local global i32 0, align 4
@MMP_SYSCLK = common dso_local global i32 0, align 4
@MMP_SSPA_CLK = common dso_local global i32 0, align 4
@WM8994_SYSCLK_MCLK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @brownstone_wm8994_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brownstone_wm8994_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %12, align 8
  store %struct.snd_soc_pcm_runtime* %13, %struct.snd_soc_pcm_runtime** %5, align 8
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %14, i32 0, i32 1
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %15, align 8
  store %struct.snd_soc_dai* %16, %struct.snd_soc_dai** %6, align 8
  %17 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %5, align 8
  %18 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %17, i32 0, i32 0
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %18, align 8
  store %struct.snd_soc_dai* %19, %struct.snd_soc_dai** %7, align 8
  %20 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %21 = call i32 @params_rate(%struct.snd_pcm_hw_params* %20)
  %22 = icmp sgt i32 %21, 11025
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %25 = call i32 @params_rate(%struct.snd_pcm_hw_params* %24)
  %26 = mul nsw i32 %25, 512
  store i32 %26, i32* %8, align 4
  %27 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %28 = call i32 @params_rate(%struct.snd_pcm_hw_params* %27)
  %29 = mul nsw i32 %28, 256
  store i32 %29, i32* %10, align 4
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %31 = call i32 @params_rate(%struct.snd_pcm_hw_params* %30)
  %32 = mul nsw i32 %31, 64
  store i32 %32, i32* %9, align 4
  br label %43

33:                                               ; preds = %2
  %34 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %35 = call i32 @params_rate(%struct.snd_pcm_hw_params* %34)
  %36 = mul nsw i32 %35, 1024
  store i32 %36, i32* %8, align 4
  %37 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %38 = call i32 @params_rate(%struct.snd_pcm_hw_params* %37)
  %39 = mul nsw i32 %38, 512
  store i32 %39, i32* %10, align 4
  %40 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %41 = call i32 @params_rate(%struct.snd_pcm_hw_params* %40)
  %42 = mul nsw i32 %41, 64
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %33, %23
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %45 = load i32, i32* @MMP_SSPA_CLK_AUDIO, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %44, i32 %45, i32 %46, i32 0)
  %48 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %49 = load i32, i32* @MMP_SYSCLK, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %48, i32 %49, i32 0, i32 %50, i32 %51)
  %53 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %54 = load i32, i32* @MMP_SSPA_CLK, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai* %53, i32 %54, i32 0, i32 %55, i32 %56)
  %58 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %59 = load i32, i32* @WM8994_SYSCLK_MCLK1, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %58, i32 %59, i32 %60, i32 0)
  ret i32 0
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
