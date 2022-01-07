; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_setup_auto_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_setup_auto_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_HEADSET_COMPLETE_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_EJECT_EN = common dso_local global i32 0, align 4
@NAU8825_CLK_INTERNAL = common dso_local global i32 0, align 4
@NAU8825_REG_ENA_CTRL = common dso_local global i32 0, align 4
@NAU8825_ENABLE_ADC = common dso_local global i32 0, align 4
@NAU8825_REG_I2S_PCM_CTRL2 = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASK = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_MASTER = common dso_local global i32 0, align 4
@NAU8825_I2S_MS_SLAVE = common dso_local global i32 0, align 4
@NAU8825_REG_JACK_DET_CTRL = common dso_local global i32 0, align 4
@NAU8825_JACK_DET_DB_BYPASS = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_DIS_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_setup_auto_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_setup_auto_irq(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %4 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %5 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %4, i32 0, i32 0
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %9 = load i32, i32* @NAU8825_IRQ_HEADSET_COMPLETE_EN, align 4
  %10 = load i32, i32* @NAU8825_IRQ_EJECT_EN, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %11, i32 0)
  %13 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %14 = load i32, i32* @NAU8825_CLK_INTERNAL, align 4
  %15 = call i32 @nau8825_configure_sysclk(%struct.nau8825* %13, i32 %14, i32 0)
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = load i32, i32* @NAU8825_REG_ENA_CTRL, align 4
  %18 = load i32, i32* @NAU8825_ENABLE_ADC, align 4
  %19 = load i32, i32* @NAU8825_ENABLE_ADC, align 4
  %20 = call i32 @regmap_update_bits(%struct.regmap* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.regmap*, %struct.regmap** %3, align 8
  %22 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL2, align 4
  %23 = load i32, i32* @NAU8825_I2S_MS_MASK, align 4
  %24 = load i32, i32* @NAU8825_I2S_MS_MASTER, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %3, align 8
  %27 = load i32, i32* @NAU8825_REG_I2S_PCM_CTRL2, align 4
  %28 = load i32, i32* @NAU8825_I2S_MS_MASK, align 4
  %29 = load i32, i32* @NAU8825_I2S_MS_SLAVE, align 4
  %30 = call i32 @regmap_update_bits(%struct.regmap* %26, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.regmap*, %struct.regmap** %3, align 8
  %32 = load i32, i32* @NAU8825_REG_JACK_DET_CTRL, align 4
  %33 = load i32, i32* @NAU8825_JACK_DET_DB_BYPASS, align 4
  %34 = call i32 @regmap_update_bits(%struct.regmap* %31, i32 %32, i32 %33, i32 0)
  %35 = load %struct.regmap*, %struct.regmap** %3, align 8
  %36 = load i32, i32* @NAU8825_REG_INTERRUPT_DIS_CTRL, align 4
  %37 = call i32 @regmap_write(%struct.regmap* %35, i32 %36, i32 0)
  %38 = load %struct.regmap*, %struct.regmap** %3, align 8
  %39 = call i32 @nau8825_restart_jack_detection(%struct.regmap* %38)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @nau8825_configure_sysclk(%struct.nau8825*, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @nau8825_restart_jack_detection(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
