; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_nau8824.c_nau8824_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.nau8824 = type { i32 }

@NAU8824_REG_INTERRUPT_SETTING = common dso_local global i32 0, align 4
@NAU8824_REG_INTERRUPT_SETTING_1 = common dso_local global i32 0, align 4
@NAU8824_IRQ_EJECT_EN = common dso_local global i32 0, align 4
@NAU8824_IRQ_INSERT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @nau8824_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nau8824_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nau8824*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %7 = call %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.nau8824* %7, %struct.nau8824** %5, align 8
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %33 [
    i32 130, label %9
    i32 129, label %10
    i32 128, label %11
    i32 131, label %19
  ]

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %13 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %12)
  %14 = icmp eq i32 %13, 131
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %17 = call i32 @nau8824_resume_setup(%struct.nau8824* %16)
  br label %18

18:                                               ; preds = %15, %11
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %21 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING, align 4
  %24 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 1023, i32 1023)
  %25 = load %struct.nau8824*, %struct.nau8824** %5, align 8
  %26 = getelementptr inbounds %struct.nau8824, %struct.nau8824* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NAU8824_REG_INTERRUPT_SETTING_1, align 4
  %29 = load i32, i32* @NAU8824_IRQ_EJECT_EN, align 4
  %30 = load i32, i32* @NAU8824_IRQ_INSERT_EN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %2, %19, %18, %10, %9
  ret i32 0
}

declare dso_local %struct.nau8824* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @nau8824_resume_setup(%struct.nau8824*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
