; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_enable_power_depop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5632.c_enable_power_depop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@ALC5632_PWR_MANAG_ADD1 = common dso_local global i32 0, align 4
@ALC5632_PWR_ADD1_SOFTGEN_EN = common dso_local global i32 0, align 4
@ALC5632_PWR_MANAG_ADD3 = common dso_local global i32 0, align 4
@ALC5632_ADD3_POWER_EN = common dso_local global i32 0, align 4
@ALC5632_MISC_CTRL = common dso_local global i32 0, align 4
@ALC5632_MISC_HP_DEPOP_MODE2_EN = common dso_local global i32 0, align 4
@ALC5632_PWR_DOWN_CTRL_STATUS = common dso_local global i32 0, align 4
@ALC5632_PWR_DOWN_CTRL_STATUS_MASK = common dso_local global i32 0, align 4
@ALC5632_PWR_MANAG_ADD2 = common dso_local global i32 0, align 4
@ALC5632_ADD2_POWER_EN = common dso_local global i32 0, align 4
@ALC5632_ADD1_POWER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @enable_power_depop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_power_depop(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %3 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %4 = load i32, i32* @ALC5632_PWR_MANAG_ADD1, align 4
  %5 = load i32, i32* @ALC5632_PWR_ADD1_SOFTGEN_EN, align 4
  %6 = load i32, i32* @ALC5632_PWR_ADD1_SOFTGEN_EN, align 4
  %7 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %9 = load i32, i32* @ALC5632_PWR_MANAG_ADD3, align 4
  %10 = load i32, i32* @ALC5632_ADD3_POWER_EN, align 4
  %11 = load i32, i32* @ALC5632_ADD3_POWER_EN, align 4
  %12 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %14 = load i32, i32* @ALC5632_MISC_CTRL, align 4
  %15 = load i32, i32* @ALC5632_MISC_HP_DEPOP_MODE2_EN, align 4
  %16 = load i32, i32* @ALC5632_MISC_HP_DEPOP_MODE2_EN, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %19 = load i32, i32* @ALC5632_PWR_DOWN_CTRL_STATUS, align 4
  %20 = load i32, i32* @ALC5632_PWR_DOWN_CTRL_STATUS_MASK, align 4
  %21 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %20, i32 0)
  %22 = call i32 @msleep(i32 500)
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %24 = load i32, i32* @ALC5632_PWR_MANAG_ADD2, align 4
  %25 = load i32, i32* @ALC5632_ADD2_POWER_EN, align 4
  %26 = load i32, i32* @ALC5632_ADD2_POWER_EN, align 4
  %27 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %29 = load i32, i32* @ALC5632_PWR_MANAG_ADD1, align 4
  %30 = load i32, i32* @ALC5632_ADD1_POWER_EN, align 4
  %31 = load i32, i32* @ALC5632_ADD1_POWER_EN, align 4
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %34 = load i32, i32* @ALC5632_MISC_CTRL, align 4
  %35 = load i32, i32* @ALC5632_MISC_HP_DEPOP_MODE2_EN, align 4
  %36 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %33, i32 %34, i32 %35, i32 0)
  ret void
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
