; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_imm_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_imm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32 }

@NAU8825_REG_ADC_DGAIN_CTRL = common dso_local global i32 0, align 4
@NAU8825_ADC_DIG_VOL_MASK = common dso_local global i32 0, align 4
@NAU8825_REG_BIAS_ADJ = common dso_local global i32 0, align 4
@NAU8825_BIAS_TESTDACR_EN = common dso_local global i32 0, align 4
@NAU8825_BIAS_TESTDACL_EN = common dso_local global i32 0, align 4
@NAU8825_BIAS_HPR_IMP = common dso_local global i32 0, align 4
@NAU8825_BIAS_HPL_IMP = common dso_local global i32 0, align 4
@NAU8825_REG_IMM_MODE_CTRL = common dso_local global i32 0, align 4
@NAU8825_IMM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*, i32)* @nau8825_xtalk_imm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_imm_start(%struct.nau8825* %0, i32 %1) #0 {
  %3 = alloca %struct.nau8825*, align 8
  %4 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %6 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NAU8825_REG_ADC_DGAIN_CTRL, align 4
  %9 = load i32, i32* @NAU8825_ADC_DIG_VOL_MASK, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %13 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NAU8825_REG_BIAS_ADJ, align 4
  %16 = load i32, i32* @NAU8825_BIAS_TESTDACR_EN, align 4
  %17 = load i32, i32* @NAU8825_BIAS_TESTDACL_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NAU8825_BIAS_TESTDACL_EN, align 4
  %20 = call i32 @regmap_update_bits(i32 %14, i32 %15, i32 %18, i32 %19)
  %21 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %22 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %44 [
    i32 128, label %24
    i32 129, label %34
  ]

24:                                               ; preds = %2
  %25 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %26 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NAU8825_REG_BIAS_ADJ, align 4
  %29 = load i32, i32* @NAU8825_BIAS_HPR_IMP, align 4
  %30 = load i32, i32* @NAU8825_BIAS_HPL_IMP, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NAU8825_BIAS_HPR_IMP, align 4
  %33 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %31, i32 %32)
  br label %45

34:                                               ; preds = %2
  %35 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %36 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NAU8825_REG_BIAS_ADJ, align 4
  %39 = load i32, i32* @NAU8825_BIAS_HPR_IMP, align 4
  %40 = load i32, i32* @NAU8825_BIAS_HPL_IMP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NAU8825_BIAS_HPL_IMP, align 4
  %43 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %41, i32 %42)
  br label %45

44:                                               ; preds = %2
  br label %45

45:                                               ; preds = %44, %34, %24
  %46 = call i32 @msleep(i32 100)
  %47 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %48 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NAU8825_REG_IMM_MODE_CTRL, align 4
  %51 = load i32, i32* @NAU8825_IMM_EN, align 4
  %52 = load i32, i32* @NAU8825_IMM_EN, align 4
  %53 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 %52)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
