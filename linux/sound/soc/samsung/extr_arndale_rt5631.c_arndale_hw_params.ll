; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_arndale_rt5631.c_arndale_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_arndale_rt5631.c_arndale_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SAMSUNG_I2S_CDCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@SAMSUNG_I2S_RCLKSRC_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @arndale_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arndale_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 0
  %14 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %13, align 8
  store %struct.snd_soc_pcm_runtime* %14, %struct.snd_soc_pcm_runtime** %6, align 8
  %15 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %15, i32 0, i32 1
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %16, align 8
  store %struct.snd_soc_dai* %17, %struct.snd_soc_dai** %7, align 8
  %18 = load %struct.snd_soc_pcm_runtime*, %struct.snd_soc_pcm_runtime** %6, align 8
  %19 = getelementptr inbounds %struct.snd_soc_pcm_runtime, %struct.snd_soc_pcm_runtime* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %19, align 8
  store %struct.snd_soc_dai* %20, %struct.snd_soc_dai** %8, align 8
  store i32 256, i32* %9, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %27 = load i32, i32* @SAMSUNG_I2S_CDCLK, align 4
  %28 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %29 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %26, i32 %27, i64 0, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %2
  %35 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %36 = load i32, i32* @SAMSUNG_I2S_RCLKSRC_0, align 4
  %37 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %38 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %35, i32 %36, i64 0, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %34
  %44 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %47 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %44, i32 0, i64 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %50, %41, %32
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
