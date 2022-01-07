; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_spdifrx.c_stm32_spdifrx_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.stm32_spdifrx_data = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@STM32_SPDIFRX_DR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @stm32_spdifrx_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_spdifrx_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.stm32_spdifrx_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %4 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %5 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.stm32_spdifrx_data* @dev_get_drvdata(i32 %6)
  store %struct.stm32_spdifrx_data* %7, %struct.stm32_spdifrx_data** %3, align 8
  %8 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %9 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @STM32_SPDIFRX_DR, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %14 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 %12, i64* %15, align 8
  %16 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %17 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %20 = load %struct.stm32_spdifrx_data*, %struct.stm32_spdifrx_data** %3, align 8
  %21 = getelementptr inbounds %struct.stm32_spdifrx_data, %struct.stm32_spdifrx_data* %20, i32 0, i32 0
  %22 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %19, i32* null, %struct.TYPE_2__* %21)
  %23 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %24 = call i32 @stm32_spdifrx_dai_register_ctrls(%struct.snd_soc_dai* %23)
  ret i32 %24
}

declare dso_local %struct.stm32_spdifrx_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @stm32_spdifrx_dai_register_ctrls(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
