; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_clean.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32 }

@NAU8825_CLK_INTERNAL = common dso_local global i32 0, align 4
@NAU8825_REG_IMM_MODE_CTRL = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_RMS_EN = common dso_local global i32 0, align 4
@NAU8825_REG_I2S_PCM_CTRL2 = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_LRC_DIV_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_BLK_DIV_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*, i32)* @nau8825_xtalk_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_clean(%struct.nau8825* %0, i32 %1) #0 {
  %3 = alloca %struct.nau8825*, align 8
  %4 = alloca i32, align 4
  store %struct.nau8825* %0, %struct.nau8825** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %6 = load i32, i32* @NAU8825_CLK_INTERNAL, align 4
  %7 = call i32 @nau8825_configure_sysclk(%struct.nau8825* %5, i32 %6, i32 0)
  %8 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %9 = call i32 @nau8825_xtalk_clean_dac(%struct.nau8825* %8)
  %10 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %11 = call i32 @nau8825_xtalk_clean_adc(%struct.nau8825* %10)
  %12 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %13 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NAU8825_REG_IMM_MODE_CTRL, align 4
  %16 = call i32 @regmap_write(i32 %14, i32 %15, i32 0)
  %17 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %18 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %21 = load i32, i32* @NAU8825_IRQ_RMS_EN, align 4
  %22 = load i32, i32* @NAU8825_IRQ_RMS_EN, align 4
  %23 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %25 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL2, align 4
  %28 = load i32, i32* @NAU8825_I2S_MS_MASK, align 4
  %29 = load i32, i32* @NAU8825_I2S_LRC_DIV_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @NAU8825_I2S_BLK_DIV_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @NAU8825_I2S_MS_SLAVE, align 4
  %34 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %32, i32 %33)
  %35 = load %struct.nau8825*, %struct.nau8825** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @nau8825_xtalk_restore(%struct.nau8825* %35, i32 %36)
  ret void
}

declare dso_local i32 @nau8825_configure_sysclk(%struct.nau8825*, i32, i32) #1

declare dso_local i32 @nau8825_xtalk_clean_dac(%struct.nau8825*) #1

declare dso_local i32 @nau8825_xtalk_clean_adc(%struct.nau8825*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @nau8825_xtalk_restore(%struct.nau8825*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
