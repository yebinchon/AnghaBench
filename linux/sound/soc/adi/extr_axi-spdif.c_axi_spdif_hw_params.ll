; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/adi/extr_axi-spdif.c_axi_spdif_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/adi/extr_axi-spdif.c_axi_spdif_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.axi_spdif = type { i32, i32 }

@AXI_SPDIF_FREQ_32000 = common dso_local global i32 0, align 4
@AXI_SPDIF_FREQ_44100 = common dso_local global i32 0, align 4
@AXI_SPDIF_FREQ_48000 = common dso_local global i32 0, align 4
@AXI_SPDIF_FREQ_NA = common dso_local global i32 0, align 4
@AXI_SPDIF_CTRL_CLKDIV_OFFSET = common dso_local global i32 0, align 4
@AXI_SPDIF_REG_STAT = common dso_local global i32 0, align 4
@AXI_SPDIF_REG_CTRL = common dso_local global i32 0, align 4
@AXI_SPDIF_CTRL_CLKDIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, %struct.snd_soc_dai*)* @axi_spdif_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_spdif_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca %struct.axi_spdif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %12 = call %struct.axi_spdif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %11)
  store %struct.axi_spdif* %12, %struct.axi_spdif** %7, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %14 = call i32 @params_rate(%struct.snd_pcm_hw_params* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %16 = call i32 @params_rate(%struct.snd_pcm_hw_params* %15)
  switch i32 %16, label %23 [
    i32 32000, label %17
    i32 44100, label %19
    i32 48000, label %21
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* @AXI_SPDIF_FREQ_32000, align 4
  store i32 %18, i32* %10, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @AXI_SPDIF_FREQ_44100, align 4
  store i32 %20, i32* %10, align 4
  br label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @AXI_SPDIF_FREQ_48000, align 4
  store i32 %22, i32* %10, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @AXI_SPDIF_FREQ_NA, align 4
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %23, %21, %19, %17
  %26 = load %struct.axi_spdif*, %struct.axi_spdif** %7, align 8
  %27 = getelementptr inbounds %struct.axi_spdif, %struct.axi_spdif* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_get_rate(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = mul i32 %30, 64
  %32 = mul i32 %31, 2
  %33 = call i32 @DIV_ROUND_CLOSEST(i32 %29, i32 %32)
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @AXI_SPDIF_CTRL_CLKDIV_OFFSET, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load %struct.axi_spdif*, %struct.axi_spdif** %7, align 8
  %39 = getelementptr inbounds %struct.axi_spdif, %struct.axi_spdif* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AXI_SPDIF_REG_STAT, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @regmap_write(i32 %40, i32 %41, i32 %42)
  %44 = load %struct.axi_spdif*, %struct.axi_spdif** %7, align 8
  %45 = getelementptr inbounds %struct.axi_spdif, %struct.axi_spdif* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AXI_SPDIF_REG_CTRL, align 4
  %48 = load i32, i32* @AXI_SPDIF_CTRL_CLKDIV_MASK, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %48, i32 %49)
  ret i32 0
}

declare dso_local %struct.axi_spdif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
