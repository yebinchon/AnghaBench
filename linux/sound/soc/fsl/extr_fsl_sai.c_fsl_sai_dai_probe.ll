; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_dai_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_dai_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_sai = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@FSL_SAI_CSR_SR = common dso_local global i32 0, align 4
@FSL_SAI_CR1_RFW_MASK = common dso_local global i32 0, align 4
@FSL_SAI_MAXBURST_TX = common dso_local global i64 0, align 8
@FSL_SAI_MAXBURST_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*)* @fsl_sai_dai_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_dai_probe(%struct.snd_soc_dai* %0) #0 {
  %2 = alloca %struct.snd_soc_dai*, align 8
  %3 = alloca %struct.fsl_sai*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %2, align 8
  %5 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %6 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.fsl_sai* @dev_get_drvdata(i32 %7)
  store %struct.fsl_sai* %8, %struct.fsl_sai** %3, align 8
  %9 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %10 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  %14 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %15 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @FSL_SAI_TCSR(i32 %17)
  %19 = load i32, i32* @FSL_SAI_CSR_SR, align 4
  %20 = call i32 @regmap_write(i32 %16, i32 %18, i32 %19)
  %21 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %22 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @FSL_SAI_RCSR(i32 %24)
  %26 = load i32, i32* @FSL_SAI_CSR_SR, align 4
  %27 = call i32 @regmap_write(i32 %23, i32 %25, i32 %26)
  %28 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %29 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @FSL_SAI_TCSR(i32 %31)
  %33 = call i32 @regmap_write(i32 %30, i32 %32, i32 0)
  %34 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @FSL_SAI_RCSR(i32 %37)
  %39 = call i32 @regmap_write(i32 %36, i32 %38, i32 0)
  %40 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @FSL_SAI_TCR1(i32 %43)
  %45 = load i32, i32* @FSL_SAI_CR1_RFW_MASK, align 4
  %46 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %47 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FSL_SAI_MAXBURST_TX, align 8
  %52 = sub nsw i64 %50, %51
  %53 = call i32 @regmap_update_bits(i32 %42, i32 %44, i32 %45, i64 %52)
  %54 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %55 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @FSL_SAI_RCR1(i32 %57)
  %59 = load i32, i32* @FSL_SAI_CR1_RFW_MASK, align 4
  %60 = load i64, i64* @FSL_SAI_MAXBURST_RX, align 8
  %61 = sub nsw i64 %60, 1
  %62 = call i32 @regmap_update_bits(i32 %56, i32 %58, i32 %59, i64 %61)
  %63 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %64 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %65 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %64, i32 0, i32 1
  %66 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %67 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %66, i32 0, i32 0
  %68 = call i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai* %63, i32* %65, i32* %67)
  %69 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %2, align 8
  %70 = load %struct.fsl_sai*, %struct.fsl_sai** %3, align 8
  %71 = call i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai* %69, %struct.fsl_sai* %70)
  ret i32 0
}

declare dso_local %struct.fsl_sai* @dev_get_drvdata(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @FSL_SAI_TCSR(i32) #1

declare dso_local i32 @FSL_SAI_RCSR(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i64) #1

declare dso_local i32 @FSL_SAI_TCR1(i32) #1

declare dso_local i32 @FSL_SAI_RCR1(i32) #1

declare dso_local i32 @snd_soc_dai_init_dma_data(%struct.snd_soc_dai*, i32*, i32*) #1

declare dso_local i32 @snd_soc_dai_set_drvdata(%struct.snd_soc_dai*, %struct.fsl_sai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
