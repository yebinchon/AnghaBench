; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_digital_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_digital_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CS42L42_OSC_SWITCH = common dso_local global i32 0, align 4
@CS42L42_SCLK_PRESENT_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_CTL1 = common dso_local global i32 0, align 4
@CS42L42_PLL_START_MASK = common dso_local global i32 0, align 4
@CS42L42_PLL_START_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HP_CTL = common dso_local global i32 0, align 4
@CS42L42_HP_ANA_AMUTE_MASK = common dso_local global i32 0, align 4
@CS42L42_HP_ANA_BMUTE_MASK = common dso_local global i32 0, align 4
@CS42L42_LOAD_DET_RCSTAT = common dso_local global i32 0, align 4
@CS42L42_RLA_STAT_MASK = common dso_local global i32 0, align 4
@CS42L42_RLA_STAT_SHIFT = common dso_local global i32 0, align 4
@CS42L42_RLA_STAT_15_OHM = common dso_local global i32 0, align 4
@CS42L42_HP_FULL_SCALE_VOL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @cs42l42_digital_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l42_digital_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = load i32, i32* @CS42L42_OSC_SWITCH, align 4
  %16 = load i32, i32* @CS42L42_SCLK_PRESENT_MASK, align 4
  %17 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %14, i32 %15, i32 %16, i32 0)
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = load i32, i32* @CS42L42_PLL_CTL1, align 4
  %20 = load i32, i32* @CS42L42_PLL_START_MASK, align 4
  %21 = load i32, i32* @CS42L42_PLL_START_SHIFT, align 4
  %22 = shl i32 0, %21
  %23 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %20, i32 %22)
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %25 = load i32, i32* @CS42L42_HP_CTL, align 4
  %26 = load i32, i32* @CS42L42_HP_ANA_AMUTE_MASK, align 4
  %27 = load i32, i32* @CS42L42_HP_ANA_BMUTE_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CS42L42_HP_ANA_AMUTE_MASK, align 4
  %30 = load i32, i32* @CS42L42_HP_ANA_BMUTE_MASK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %24, i32 %25, i32 %28, i32 %31)
  br label %68

33:                                               ; preds = %2
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %35 = load i32, i32* @CS42L42_PLL_CTL1, align 4
  %36 = load i32, i32* @CS42L42_PLL_START_MASK, align 4
  %37 = load i32, i32* @CS42L42_PLL_START_SHIFT, align 4
  %38 = shl i32 1, %37
  %39 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %38)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %41 = load i32, i32* @CS42L42_LOAD_DET_RCSTAT, align 4
  %42 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @CS42L42_RLA_STAT_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @CS42L42_RLA_STAT_SHIFT, align 4
  %47 = lshr i32 %45, %46
  %48 = load i32, i32* @CS42L42_RLA_STAT_15_OHM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* @CS42L42_HP_FULL_SCALE_VOL_MASK, align 4
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %52, %50
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %55 = load i32, i32* @CS42L42_HP_CTL, align 4
  %56 = load i32, i32* @CS42L42_HP_ANA_AMUTE_MASK, align 4
  %57 = load i32, i32* @CS42L42_HP_ANA_BMUTE_MASK, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CS42L42_HP_FULL_SCALE_VOL_MASK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %54, i32 %55, i32 %60, i32 %61)
  %63 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %64 = load i32, i32* @CS42L42_OSC_SWITCH, align 4
  %65 = load i32, i32* @CS42L42_SCLK_PRESENT_MASK, align 4
  %66 = load i32, i32* @CS42L42_SCLK_PRESENT_MASK, align 4
  %67 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %53, %13
  ret i32 0
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
