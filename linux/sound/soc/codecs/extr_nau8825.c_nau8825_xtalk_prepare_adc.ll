; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_prepare_adc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_xtalk_prepare_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32 }

@NAU8825_REG_ANALOG_ADC_2 = common dso_local global i32 0, align 4
@NAU8825_POWERUP_ADCL = common dso_local global i32 0, align 4
@NAU8825_ADC_VREFSEL_MASK = common dso_local global i32 0, align 4
@NAU8825_ADC_VREFSEL_VMID_PLUS_0_5DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_xtalk_prepare_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_xtalk_prepare_adc(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %3 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %4 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NAU8825_REG_ANALOG_ADC_2, align 4
  %7 = load i32, i32* @NAU8825_POWERUP_ADCL, align 4
  %8 = load i32, i32* @NAU8825_ADC_VREFSEL_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @NAU8825_POWERUP_ADCL, align 4
  %11 = load i32, i32* @NAU8825_ADC_VREFSEL_VMID_PLUS_0_5DB, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %9, i32 %12)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
