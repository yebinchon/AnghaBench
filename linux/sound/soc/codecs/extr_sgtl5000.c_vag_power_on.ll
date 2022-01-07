; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_vag_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_vag_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@SGTL5000_CHIP_ANA_POWER = common dso_local global i32 0, align 4
@SGTL5000_VAG_POWERUP = common dso_local global i32 0, align 4
@SGTL5000_HP_SEL_LINE_IN = common dso_local global i64 0, align 8
@HP_POWER_EVENT = common dso_local global i64 0, align 8
@SGTL5000_VAG_POWERUP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i64)* @vag_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vag_power_on(%struct.snd_soc_component* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %6 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %7 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %5, i32 %6)
  %8 = load i32, i32* @SGTL5000_VAG_POWERUP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %29

12:                                               ; preds = %2
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = load i32, i32* @SGTL5000_CHIP_ANA_POWER, align 4
  %15 = load i32, i32* @SGTL5000_VAG_POWERUP, align 4
  %16 = load i32, i32* @SGTL5000_VAG_POWERUP, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = call i64 @hp_sel_input(%struct.snd_soc_component* %18)
  %20 = load i64, i64* @SGTL5000_HP_SEL_LINE_IN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @HP_POWER_EVENT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @SGTL5000_VAG_POWERUP_DELAY, align 4
  %28 = call i32 @msleep(i32 %27)
  br label %29

29:                                               ; preds = %11, %26, %22, %12
  ret void
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i64 @hp_sel_input(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
