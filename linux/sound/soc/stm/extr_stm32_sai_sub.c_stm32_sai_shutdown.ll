; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/stm/extr_stm32_sai_sub.c_stm32_sai_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.stm32_sai_sub_data = type { i32, i32*, i32, i32 }

@STM_SAI_IMR_REGX = common dso_local global i32 0, align 4
@SAI_XIMR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @stm32_sai_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_sai_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.stm32_sai_sub_data*, align 8
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = call %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %7)
  store %struct.stm32_sai_sub_data* %8, %struct.stm32_sai_sub_data** %5, align 8
  %9 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %5, align 8
  %10 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @STM_SAI_IMR_REGX, align 4
  %13 = load i32, i32* @SAI_XIMR_MASK, align 4
  %14 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %5, align 8
  %16 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_disable_unprepare(i32 %17)
  %19 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %5, align 8
  %20 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.stm32_sai_sub_data*, %struct.stm32_sai_sub_data** %5, align 8
  %26 = getelementptr inbounds %struct.stm32_sai_sub_data, %struct.stm32_sai_sub_data* %25, i32 0, i32 0
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local %struct.stm32_sai_sub_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
