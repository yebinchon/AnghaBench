; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_auto_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_auto_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.adau = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADAU17X1_PLL = common dso_local global i32 0, align 4
@ADAU17X1_PLL_SRC_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, %struct.snd_pcm_hw_params*)* @adau17x1_auto_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_auto_pll(%struct.snd_soc_dai* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.adau*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %9 = call %struct.adau* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %8)
  store %struct.adau* %9, %struct.adau** %6, align 8
  %10 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %11 = call i32 @params_rate(%struct.snd_pcm_hw_params* %10)
  switch i32 %11, label %14 [
    i32 48000, label %12
    i32 8000, label %12
    i32 12000, label %12
    i32 16000, label %12
    i32 24000, label %12
    i32 32000, label %12
    i32 96000, label %12
    i32 44100, label %13
    i32 7350, label %13
    i32 11025, label %13
    i32 14700, label %13
    i32 22050, label %13
    i32 29400, label %13
    i32 88200, label %13
  ]

12:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 49152000, i32* %7, align 4
  br label %17

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 45158400, i32* %7, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %13, %12
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %19 = load i32, i32* @ADAU17X1_PLL, align 4
  %20 = load i32, i32* @ADAU17X1_PLL_SRC_MCLK, align 4
  %21 = load %struct.adau*, %struct.adau** %6, align 8
  %22 = getelementptr inbounds %struct.adau, %struct.adau* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_get_rate(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @adau17x1_set_dai_pll(%struct.snd_soc_dai* %18, i32 %19, i32 %20, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.adau* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @adau17x1_set_dai_pll(%struct.snd_soc_dai*, i32, i32, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
