; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8540.c_nau8540_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8540 = type { %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8540_REG_VMID_CTRL = common dso_local global i32 0, align 4
@NAU8540_VMID_EN = common dso_local global i32 0, align 4
@NAU8540_VMID_SEL_MASK = common dso_local global i32 0, align 4
@NAU8540_VMID_SEL_SFT = common dso_local global i32 0, align 4
@NAU8540_REG_REFERENCE = common dso_local global i32 0, align 4
@NAU8540_PRECHARGE_DIS = common dso_local global i32 0, align 4
@NAU8540_GLOBAL_BIAS_EN = common dso_local global i32 0, align 4
@NAU8540_REG_MIC_BIAS = common dso_local global i32 0, align 4
@NAU8540_PU_PRE = common dso_local global i32 0, align 4
@NAU8540_REG_CLOCK_CTRL = common dso_local global i32 0, align 4
@NAU8540_CLK_ADC_EN = common dso_local global i32 0, align 4
@NAU8540_CLK_I2S_EN = common dso_local global i32 0, align 4
@NAU8540_REG_ADC_SAMPLE_RATE = common dso_local global i32 0, align 4
@NAU8540_CH_SYNC = common dso_local global i32 0, align 4
@NAU8540_ADC_OSR_MASK = common dso_local global i32 0, align 4
@NAU8540_ADC_OSR_64 = common dso_local global i32 0, align 4
@NAU8540_REG_FEPGA1 = common dso_local global i32 0, align 4
@NAU8540_FEPGA1_MODCH2_SHT = common dso_local global i32 0, align 4
@NAU8540_FEPGA1_MODCH1_SHT = common dso_local global i32 0, align 4
@NAU8540_REG_FEPGA2 = common dso_local global i32 0, align 4
@NAU8540_FEPGA2_MODCH4_SHT = common dso_local global i32 0, align 4
@NAU8540_FEPGA2_MODCH3_SHT = common dso_local global i32 0, align 4
@NAU8540_REG_PCM_CTRL1 = common dso_local global i32 0, align 4
@NAU8540_I2S_DO12_TRI = common dso_local global i32 0, align 4
@NAU8540_REG_PCM_CTRL2 = common dso_local global i32 0, align 4
@NAU8540_I2S_DO34_TRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8540*)* @nau8540_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8540_init_regs(%struct.nau8540* %0) #0 {
  %2 = alloca %struct.nau8540*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.nau8540* %0, %struct.nau8540** %2, align 8
  %4 = load %struct.nau8540*, %struct.nau8540** %2, align 8
  %5 = getelementptr inbounds %struct.nau8540, %struct.nau8540* %4, i32 0, i32 0
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @NAU8540_REG_VMID_CTRL, align 4
  %9 = load i32, i32* @NAU8540_VMID_EN, align 4
  %10 = load i32, i32* @NAU8540_VMID_SEL_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @NAU8540_VMID_EN, align 4
  %13 = load i32, i32* @NAU8540_VMID_SEL_SFT, align 4
  %14 = shl i32 2, %13
  %15 = or i32 %12, %14
  %16 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %11, i32 %15)
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = load i32, i32* @NAU8540_REG_REFERENCE, align 4
  %19 = load i32, i32* @NAU8540_PRECHARGE_DIS, align 4
  %20 = load i32, i32* @NAU8540_GLOBAL_BIAS_EN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NAU8540_PRECHARGE_DIS, align 4
  %23 = load i32, i32* @NAU8540_GLOBAL_BIAS_EN, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @regmap_update_bits(%struct.regmap* %17, i32 %18, i32 %21, i32 %24)
  %26 = call i32 @mdelay(i32 2)
  %27 = load %struct.regmap*, %struct.regmap** %3, align 8
  %28 = load i32, i32* @NAU8540_REG_MIC_BIAS, align 4
  %29 = load i32, i32* @NAU8540_PU_PRE, align 4
  %30 = load i32, i32* @NAU8540_PU_PRE, align 4
  %31 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = load i32, i32* @NAU8540_REG_CLOCK_CTRL, align 4
  %34 = load i32, i32* @NAU8540_CLK_ADC_EN, align 4
  %35 = load i32, i32* @NAU8540_CLK_I2S_EN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @NAU8540_CLK_ADC_EN, align 4
  %38 = load i32, i32* @NAU8540_CLK_I2S_EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.regmap*, %struct.regmap** %3, align 8
  %42 = load i32, i32* @NAU8540_REG_ADC_SAMPLE_RATE, align 4
  %43 = load i32, i32* @NAU8540_CH_SYNC, align 4
  %44 = load i32, i32* @NAU8540_ADC_OSR_MASK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NAU8540_CH_SYNC, align 4
  %47 = load i32, i32* @NAU8540_ADC_OSR_64, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @regmap_update_bits(%struct.regmap* %41, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.regmap*, %struct.regmap** %3, align 8
  %51 = load i32, i32* @NAU8540_REG_FEPGA1, align 4
  %52 = load i32, i32* @NAU8540_FEPGA1_MODCH2_SHT, align 4
  %53 = load i32, i32* @NAU8540_FEPGA1_MODCH1_SHT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NAU8540_FEPGA1_MODCH2_SHT, align 4
  %56 = load i32, i32* @NAU8540_FEPGA1_MODCH1_SHT, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @regmap_update_bits(%struct.regmap* %50, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.regmap*, %struct.regmap** %3, align 8
  %60 = load i32, i32* @NAU8540_REG_FEPGA2, align 4
  %61 = load i32, i32* @NAU8540_FEPGA2_MODCH4_SHT, align 4
  %62 = load i32, i32* @NAU8540_FEPGA2_MODCH3_SHT, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @NAU8540_FEPGA2_MODCH4_SHT, align 4
  %65 = load i32, i32* @NAU8540_FEPGA2_MODCH3_SHT, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @regmap_update_bits(%struct.regmap* %59, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.regmap*, %struct.regmap** %3, align 8
  %69 = load i32, i32* @NAU8540_REG_PCM_CTRL1, align 4
  %70 = load i32, i32* @NAU8540_I2S_DO12_TRI, align 4
  %71 = load i32, i32* @NAU8540_I2S_DO12_TRI, align 4
  %72 = call i32 @regmap_update_bits(%struct.regmap* %68, i32 %69, i32 %70, i32 %71)
  %73 = load %struct.regmap*, %struct.regmap** %3, align 8
  %74 = load i32, i32* @NAU8540_REG_PCM_CTRL2, align 4
  %75 = load i32, i32* @NAU8540_I2S_DO34_TRI, align 4
  %76 = load i32, i32* @NAU8540_I2S_DO34_TRI, align 4
  %77 = call i32 @regmap_update_bits(%struct.regmap* %73, i32 %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
