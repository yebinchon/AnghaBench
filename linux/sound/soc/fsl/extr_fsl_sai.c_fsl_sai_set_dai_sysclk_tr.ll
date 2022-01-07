; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_set_dai_sysclk_tr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_sai.c_fsl_sai_set_dai_sysclk_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.fsl_sai = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FSL_FMT_TRANSMITTER = common dso_local global i32 0, align 4
@FSL_SAI_CR2_MSEL_BUS = common dso_local global i32 0, align 4
@FSL_SAI_CR2_MSEL_MCLK1 = common dso_local global i32 0, align 4
@FSL_SAI_CR2_MSEL_MCLK2 = common dso_local global i32 0, align 4
@FSL_SAI_CR2_MSEL_MCLK3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FSL_SAI_CR2_MSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @fsl_sai_set_dai_sysclk_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_sai_set_dai_sysclk_tr(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_sai*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %15 = call %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %14)
  store %struct.fsl_sai* %15, %struct.fsl_sai** %10, align 8
  %16 = load %struct.fsl_sai*, %struct.fsl_sai** %10, align 8
  %17 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @FSL_FMT_TRANSMITTER, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %42 [
    i32 131, label %26
    i32 130, label %30
    i32 129, label %34
    i32 128, label %38
  ]

26:                                               ; preds = %4
  %27 = load i32, i32* @FSL_SAI_CR2_MSEL_BUS, align 4
  %28 = load i32, i32* %13, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %13, align 4
  br label %45

30:                                               ; preds = %4
  %31 = load i32, i32* @FSL_SAI_CR2_MSEL_MCLK1, align 4
  %32 = load i32, i32* %13, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %45

34:                                               ; preds = %4
  %35 = load i32, i32* @FSL_SAI_CR2_MSEL_MCLK2, align 4
  %36 = load i32, i32* %13, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %13, align 4
  br label %45

38:                                               ; preds = %4
  %39 = load i32, i32* @FSL_SAI_CR2_MSEL_MCLK3, align 4
  %40 = load i32, i32* %13, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %38, %34, %30, %26
  %46 = load %struct.fsl_sai*, %struct.fsl_sai** %10, align 8
  %47 = getelementptr inbounds %struct.fsl_sai, %struct.fsl_sai* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @FSL_SAI_xCR2(i32 %49, i32 %50)
  %52 = load i32, i32* @FSL_SAI_CR2_MSEL_MASK, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @regmap_update_bits(i32 %48, i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %45, %42
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.fsl_sai* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FSL_SAI_xCR2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
