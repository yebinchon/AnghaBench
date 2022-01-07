; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/samsung/extr_jive_wm8750.c_jive_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/samsung/extr_jive_wm8750.c_jive_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_soc_pcm_runtime* }
%struct.snd_soc_pcm_runtime = type { %struct.snd_soc_dai*, %struct.snd_soc_dai* }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.s3c_i2sv2_rate_calc = type { i64, i64 }

@WM8750_SYSCLK = common dso_local global i32 0, align 4
@SND_SOC_CLOCK_IN = common dso_local global i32 0, align 4
@S3C2412_DIV_RCLK = common dso_local global i32 0, align 4
@S3C2412_DIV_PRESCALER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @jive_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jive_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_pcm_runtime*, align 8
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.snd_soc_dai*, align 8
  %9 = alloca %struct.s3c_i2sv2_rate_calc, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %22 = call i32 @params_rate(%struct.snd_pcm_hw_params* %21)
  switch i32 %22, label %25 [
    i32 8000, label %23
    i32 16000, label %23
    i32 48000, label %23
    i32 96000, label %23
    i32 11025, label %24
    i32 22050, label %24
    i32 44100, label %24
  ]

23:                                               ; preds = %2, %2, %2, %2
  store i32 12288000, i32* %10, align 4
  br label %25

24:                                               ; preds = %2, %2, %2
  store i32 11289600, i32* %10, align 4
  br label %25

25:                                               ; preds = %2, %24, %23
  %26 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %27 = call i32 @params_rate(%struct.snd_pcm_hw_params* %26)
  %28 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %29 = call i32 @s3c_i2sv2_get_clock(%struct.snd_soc_dai* %28)
  %30 = call i32 @s3c_i2sv2_iis_calc_rate(%struct.s3c_i2sv2_rate_calc* %9, i32* null, i32 %27, i32 %29)
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %32 = load i32, i32* @WM8750_SYSCLK, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @SND_SOC_CLOCK_IN, align 4
  %35 = call i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %25
  %41 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %42 = load i32, i32* @S3C2412_DIV_RCLK, align 4
  %43 = getelementptr inbounds %struct.s3c_i2sv2_rate_calc, %struct.s3c_i2sv2_rate_calc* %9, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %41, i32 %42, i64 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  br label %62

50:                                               ; preds = %40
  %51 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %8, align 8
  %52 = load i32, i32* @S3C2412_DIV_PRESCALER, align 4
  %53 = getelementptr inbounds %struct.s3c_i2sv2_rate_calc, %struct.s3c_i2sv2_rate_calc* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai* %51, i32 %52, i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %48, %38
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @s3c_i2sv2_iis_calc_rate(%struct.s3c_i2sv2_rate_calc*, i32*, i32, i32) #1

declare dso_local i32 @s3c_i2sv2_get_clock(%struct.snd_soc_dai*) #1

declare dso_local i32 @snd_soc_dai_set_sysclk(%struct.snd_soc_dai*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_dai_set_clkdiv(%struct.snd_soc_dai*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
