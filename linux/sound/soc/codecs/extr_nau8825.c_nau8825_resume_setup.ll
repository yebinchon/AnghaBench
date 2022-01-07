; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_resume_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8825.c_nau8825_resume_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8825 = type { %struct.regmap* }
%struct.regmap = type { i32 }

@NAU8825_CLK_DIS = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_MASK = common dso_local global i32 0, align 4
@NAU8825_IRQ_OUTPUT_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_HEADSET_COMPLETE_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_EJECT_EN = common dso_local global i32 0, align 4
@NAU8825_IRQ_INSERT_EN = common dso_local global i32 0, align 4
@NAU8825_REG_JACK_DET_CTRL = common dso_local global i32 0, align 4
@NAU8825_JACK_DET_DB_BYPASS = common dso_local global i32 0, align 4
@NAU8825_REG_INTERRUPT_DIS_CTRL = common dso_local global i32 0, align 4
@NAU8825_IRQ_INSERT_DIS = common dso_local global i32 0, align 4
@NAU8825_IRQ_EJECT_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nau8825*)* @nau8825_resume_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8825_resume_setup(%struct.nau8825* %0) #0 {
  %2 = alloca %struct.nau8825*, align 8
  %3 = alloca %struct.regmap*, align 8
  store %struct.nau8825* %0, %struct.nau8825** %2, align 8
  %4 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %5 = getelementptr inbounds %struct.nau8825, %struct.nau8825* %4, i32 0, i32 0
  %6 = load %struct.regmap*, %struct.regmap** %5, align 8
  store %struct.regmap* %6, %struct.regmap** %3, align 8
  %7 = load %struct.nau8825*, %struct.nau8825** %2, align 8
  %8 = load i32, i32* @NAU8825_CLK_DIS, align 4
  %9 = call i32 @nau8825_configure_sysclk(%struct.nau8825* %7, i32 %8, i32 0)
  %10 = load %struct.regmap*, %struct.regmap** %3, align 8
  %11 = call i32 @nau8825_int_status_clear_all(%struct.regmap* %10)
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = load i32, i32* @NAU8825_REG_INTERRUPT_MASK, align 4
  %14 = load i32, i32* @NAU8825_IRQ_OUTPUT_EN, align 4
  %15 = load i32, i32* @NAU8825_IRQ_HEADSET_COMPLETE_EN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NAU8825_IRQ_EJECT_EN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @NAU8825_IRQ_INSERT_EN, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @NAU8825_IRQ_OUTPUT_EN, align 4
  %22 = load i32, i32* @NAU8825_IRQ_HEADSET_COMPLETE_EN, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @regmap_update_bits(%struct.regmap* %12, i32 %13, i32 %20, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %3, align 8
  %26 = load i32, i32* @NAU8825_REG_JACK_DET_CTRL, align 4
  %27 = load i32, i32* @NAU8825_JACK_DET_DB_BYPASS, align 4
  %28 = load i32, i32* @NAU8825_JACK_DET_DB_BYPASS, align 4
  %29 = call i32 @regmap_update_bits(%struct.regmap* %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.regmap*, %struct.regmap** %3, align 8
  %31 = load i32, i32* @NAU8825_REG_INTERRUPT_DIS_CTRL, align 4
  %32 = load i32, i32* @NAU8825_IRQ_INSERT_DIS, align 4
  %33 = load i32, i32* @NAU8825_IRQ_EJECT_DIS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @regmap_update_bits(%struct.regmap* %30, i32 %31, i32 %34, i32 0)
  ret i32 0
}

declare dso_local i32 @nau8825_configure_sysclk(%struct.nau8825*, i32, i32) #1

declare dso_local i32 @nau8825_int_status_clear_all(%struct.regmap*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
