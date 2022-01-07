; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_spdifrx_data = type { i32 }

@STM32_SPDIFRX_IMR = common dso_local global i32 0, align 4
@SPDIFRX_IMR_OVRIE = common dso_local global i32 0, align 4
@STM32_SPDIFRX_CR = common dso_local global i32 0, align 4
@SPDIFRX_CR_RXDMAEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @stm32_spdifrx_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.stm32_spdifrx_data*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %11 = call %struct.stm32_spdifrx_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.stm32_spdifrx_data* %11, %struct.stm32_spdifrx_data** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %33 [
    i32 130, label %13
    i32 131, label %13
    i32 132, label %13
    i32 128, label %30
    i32 133, label %30
    i32 129, label %30
  ]

13:                                               ; preds = %3, %3, %3
  %14 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %15 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @STM32_SPDIFRX_IMR, align 4
  %18 = load i32, i32* @SPDIFRX_IMR_OVRIE, align 4
  %19 = load i32, i32* @SPDIFRX_IMR_OVRIE, align 4
  %20 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %22 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STM32_SPDIFRX_CR, align 4
  %25 = load i32, i32* @SPDIFRX_CR_RXDMAEN, align 4
  %26 = load i32, i32* @SPDIFRX_CR_RXDMAEN, align 4
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %29 = call i32 @stm32_spdifrx_start_sync(%struct.stm32_spdifrx_data* %28)
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %3, %3, %3
  %31 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %8, align 8
  %32 = call i32 @stm32_spdifrx_stop(%struct.stm32_spdifrx_data* %31)
  br label %36

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %30, %13
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.stm32_spdifrx_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @stm32_spdifrx_start_sync(%struct.stm32_spdifrx_data*) #1

declare dso_local i32 @stm32_spdifrx_stop(%struct.stm32_spdifrx_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
