; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_setup_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_setup_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { i32, i32, i32, i32, i32, i32, i32*, %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8825_REG_SAR_CTRL = common dso_local global i32 0, align 4
@NAU8825_SAR_TRACKING_GAIN_MASK = common dso_local global i32 0, align 4
@NAU8825_SAR_TRACKING_GAIN_SFT = common dso_local global i32 0, align 4
@NAU8825_SAR_COMPARE_TIME_MASK = common dso_local global i32 0, align 4
@NAU8825_SAR_COMPARE_TIME_SFT = common dso_local global i32 0, align 4
@NAU8825_SAR_SAMPLING_TIME_MASK = common dso_local global i32 0, align 4
@NAU8825_SAR_SAMPLING_TIME_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_KEYDET_CTRL = common dso_local global i32 0, align 4
@NAU8825_KEYDET_LEVELS_NR_MASK = common dso_local global i32 0, align 4
@NAU8825_KEYDET_LEVELS_NR_SFT = common dso_local global i32 0, align 4
@NAU8825_KEYDET_HYSTERESIS_MASK = common dso_local global i32 0, align 4
@NAU8825_KEYDET_HYSTERESIS_SFT = common dso_local global i32 0, align 4
@NAU8825_KEYDET_SHORTKEY_DEBOUNCE_MASK = common dso_local global i32 0, align 4
@NAU8825_KEYDET_SHORTKEY_DEBOUNCE_SFT = common dso_local global i32 0, align 4
@NAU8825_REG_VDET_THRESHOLD_1 = common dso_local global i32 0, align 4
@NAU8825_REG_VDET_THRESHOLD_2 = common dso_local global i32 0, align 4
@NAU8825_REG_VDET_THRESHOLD_3 = common dso_local global i32 0, align 4
@NAU8825_REG_VDET_THRESHOLD_4 = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_KEY_SHORT_PRESS_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_KEY_RELEASE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8825*)* @nau8825_setup_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8825_setup_buttons(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %4 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %5 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %4, i32 0, i32 7
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = load i32, i32* @NAU8825_REG_SAR_CTRL, align 4
  %9 = load i32, i32* @NAU8825_SAR_TRACKING_GAIN_MASK, align 4
  %10 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %11 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @NAU8825_SAR_TRACKING_GAIN_SFT, align 4
  %14 = shl i32 %12, %13
  %15 = call i32 @regmap_update_bits(%struct.regmap* %7, i32 %8, i32 %9, i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %3, align 8
  %17 = load i32, i32* @NAU8825_REG_SAR_CTRL, align 4
  %18 = load i32, i32* @NAU8825_SAR_COMPARE_TIME_MASK, align 4
  %19 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %20 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NAU8825_SAR_COMPARE_TIME_SFT, align 4
  %23 = shl i32 %21, %22
  %24 = call i32 @regmap_update_bits(%struct.regmap* %16, i32 %17, i32 %18, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %3, align 8
  %26 = load i32, i32* @NAU8825_REG_SAR_CTRL, align 4
  %27 = load i32, i32* @NAU8825_SAR_SAMPLING_TIME_MASK, align 4
  %28 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %29 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @NAU8825_SAR_SAMPLING_TIME_SFT, align 4
  %32 = shl i32 %30, %31
  %33 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 %26, i32 %27, i32 %32)
  %34 = load %struct.regmap*, %struct.regmap** %3, align 8
  %35 = load i32, i32* @NAU8825_REG_KEYDET_CTRL, align 4
  %36 = load i32, i32* @NAU8825_KEYDET_LEVELS_NR_MASK, align 4
  %37 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %38 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* @NAU8825_KEYDET_LEVELS_NR_SFT, align 4
  %42 = shl i32 %40, %41
  %43 = call i32 @regmap_update_bits(%struct.regmap* %34, i32 %35, i32 %36, i32 %42)
  %44 = load %struct.regmap*, %struct.regmap** %3, align 8
  %45 = load i32, i32* @NAU8825_REG_KEYDET_CTRL, align 4
  %46 = load i32, i32* @NAU8825_KEYDET_HYSTERESIS_MASK, align 4
  %47 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %48 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @NAU8825_KEYDET_HYSTERESIS_SFT, align 4
  %51 = shl i32 %49, %50
  %52 = call i32 @regmap_update_bits(%struct.regmap* %44, i32 %45, i32 %46, i32 %51)
  %53 = load %struct.regmap*, %struct.regmap** %3, align 8
  %54 = load i32, i32* @NAU8825_REG_KEYDET_CTRL, align 4
  %55 = load i32, i32* @NAU8825_KEYDET_SHORTKEY_DEBOUNCE_MASK, align 4
  %56 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %57 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NAU8825_KEYDET_SHORTKEY_DEBOUNCE_SFT, align 4
  %60 = shl i32 %58, %59
  %61 = call i32 @regmap_update_bits(%struct.regmap* %53, i32 %54, i32 %55, i32 %60)
  %62 = load %struct.regmap*, %struct.regmap** %3, align 8
  %63 = load i32, i32* @NAU8825_REG_VDET_THRESHOLD_1, align 4
  %64 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %65 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %64, i32 0, i32 6
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %71 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  %76 = call i32 @regmap_write(%struct.regmap* %62, i32 %63, i32 %75)
  %77 = load %struct.regmap*, %struct.regmap** %3, align 8
  %78 = load i32, i32* @NAU8825_REG_VDET_THRESHOLD_2, align 4
  %79 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %80 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %86 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %84, %89
  %91 = call i32 @regmap_write(%struct.regmap* %77, i32 %78, i32 %90)
  %92 = load %struct.regmap*, %struct.regmap** %3, align 8
  %93 = load i32, i32* @NAU8825_REG_VDET_THRESHOLD_3, align 4
  %94 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %95 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  %98 = load i32, i32* %97, align 4
  %99 = shl i32 %98, 8
  %100 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %101 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 5
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %99, %104
  %106 = call i32 @regmap_write(%struct.regmap* %92, i32 %93, i32 %105)
  %107 = load %struct.regmap*, %struct.regmap** %3, align 8
  %108 = load i32, i32* @NAU8825_REG_VDET_THRESHOLD_4, align 4
  %109 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %110 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %109, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %116 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 7
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %114, %119
  %121 = call i32 @regmap_write(%struct.regmap* %107, i32 %108, i32 %120)
  %122 = load %struct.regmap*, %struct.regmap** %3, align 8
  %123 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %124 = load i32, i32* @NAU8825_IRQ_KEY_SHORT_PRESS_EN, align 4
  %125 = load i32, i32* @NAU8825_IRQ_KEY_RELEASE_EN, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @regmap_update_bits(%struct.regmap* %122, i32 %123, i32 %126, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
