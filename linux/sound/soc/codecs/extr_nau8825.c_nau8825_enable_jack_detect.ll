; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_enable_jack_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_enable_jack_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_jack = type { i32 }
%struct.nau8825 = type { %struct.snd_soc_jack*, %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8825_REG_HSD_CTRL = common dso_local global i32 0, align 4
@NAU8825_HSD_AUTO_MODE = common dso_local global i32 0, align 4
@NAU8825_SPKR_DWN1R = common dso_local global i32 0, align 4
@NAU8825_SPKR_DWN1L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nau8825_enable_jack_detect(%struct.snd_soc_component* %0, %struct.snd_soc_jack* %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_jack*, align 8
  %5 = alloca %struct.nau8825*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store %struct.snd_soc_jack* %1, %struct.snd_soc_jack** %4, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %8 = call %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.nau8825* %8, %struct.nau8825** %5, align 8
  %9 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %10 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %9, i32 0, i32 1
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %6, align 8
  %12 = load %struct.snd_soc_jack*, %struct.snd_soc_jack** %4, align 8
  %13 = load %struct.nau8825*, %struct.nau8825** %5, align 8
  %14 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %13, i32 0, i32 0
  store %struct.snd_soc_jack* %12, %struct.snd_soc_jack** %14, align 8
  %15 = load %struct.regmap*, %struct.regmap** %6, align 8
  %16 = load i32, i32* @NAU8825_REG_HSD_CTRL, align 4
  %17 = load i32, i32* @NAU8825_HSD_AUTO_MODE, align 4
  %18 = load i32, i32* @NAU8825_SPKR_DWN1R, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @NAU8825_SPKR_DWN1L, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @NAU8825_HSD_AUTO_MODE, align 4
  %23 = load i32, i32* @NAU8825_SPKR_DWN1R, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @NAU8825_SPKR_DWN1L, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @regmap_update_bits(%struct.regmap* %15, i32 %16, i32 %21, i32 %26)
  ret i32 0
}

declare dso_local %struct.nau8825* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
