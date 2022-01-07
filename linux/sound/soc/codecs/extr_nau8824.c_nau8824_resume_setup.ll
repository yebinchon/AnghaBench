; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_resume_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_resume_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nau8824 = type { i32, i64 }

@NAU8824_CLK_DIS = common dso_local global i32 0, align 4
@NAU8824_REG_ENA_CTRL = common dso_local global i32 0, align 4
@NAU8824_JD_SLEEP_MODE = common dso_local global i32 0, align 4
@NAU8824_REG_INTERRUPT_SETTING_1 = common dso_local global i32 0, align 4
@NAU8824_IRQ_EJECT_EN = common dso_local global i32 0, align 4
@NAU8824_IRQ_INSERT_EN = common dso_local global i32 0, align 4
@NAU8824_REG_INTERRUPT_SETTING = common dso_local global i32 0, align 4
@NAU8824_IRQ_EJECT_DIS = common dso_local global i32 0, align 4
@NAU8824_IRQ_INSERT_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nau8824*)* @nau8824_resume_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nau8824_resume_setup(%struct.nau8824* %0) #0 {
  %2 = alloca %struct.nau8824*, align 8
  store %struct.nau8824* %0, %struct.nau8824** %2, align 8
  %3 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %4 = load i32, i32* @NAU8824_CLK_DIS, align 4
  %5 = call i32 @nau8824_config_sysclk(%struct.nau8824* %3, i32 %4, i32 0)
  %6 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %7 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %12 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @nau8824_int_status_clear_all(i32 %13)
  %15 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %16 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NAU8824_REG_ENA_CTRL, align 4
  %19 = load i32, i32* @NAU8824_JD_SLEEP_MODE, align 4
  %20 = load i32, i32* @NAU8824_JD_SLEEP_MODE, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %23 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING_1, align 4
  %26 = load i32, i32* @NAU8824_IRQ_EJECT_EN, align 4
  %27 = load i32, i32* @NAU8824_IRQ_INSERT_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NAU8824_IRQ_EJECT_EN, align 4
  %30 = load i32, i32* @NAU8824_IRQ_INSERT_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.nau8824*, %struct.nau8824** %2, align 8
  %34 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING, align 4
  %37 = load i32, i32* @NAU8824_IRQ_EJECT_DIS, align 4
  %38 = load i32, i32* @NAU8824_IRQ_INSERT_DIS, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @nau8824_config_sysclk(%struct.nau8824*, i32, i32) #1

declare dso_local i32 @nau8824_int_status_clear_all(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
