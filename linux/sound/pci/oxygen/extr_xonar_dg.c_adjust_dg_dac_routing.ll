; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_adjust_dg_dac_routing.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg.c_adjust_dg_dac_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i32 }

@OXYGEN_PLAY_ROUTING = common dso_local global i32 0, align 4
@OXYGEN_PLAY_MUTE23 = common dso_local global i32 0, align 4
@OXYGEN_PLAY_MUTE45 = common dso_local global i32 0, align 4
@OXYGEN_PLAY_MUTE67 = common dso_local global i32 0, align 4
@OXYGEN_PLAY_MUTE_MASK = common dso_local global i32 0, align 4
@OXYGEN_PLAY_MUTE01 = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC0_SOURCE_MASK = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC2_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC1_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC1_SOURCE_MASK = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC2_SOURCE_MASK = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC0_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC3_SOURCE_SHIFT = common dso_local global i32 0, align 4
@OXYGEN_PLAY_DAC3_SOURCE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adjust_dg_dac_routing(%struct.oxygen* %0, i32 %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dg*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %7 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %6, i32 0, i32 0
  %8 = load %struct.dg*, %struct.dg** %7, align 8
  store %struct.dg* %8, %struct.dg** %5, align 8
  %9 = load %struct.dg*, %struct.dg** %5, align 8
  %10 = getelementptr inbounds %struct.dg, %struct.dg* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %28 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %22
  ]

12:                                               ; preds = %2, %2
  %13 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %14 = load i32, i32* @OXYGEN_PLAY_ROUTING, align 4
  %15 = load i32, i32* @OXYGEN_PLAY_MUTE23, align 4
  %16 = load i32, i32* @OXYGEN_PLAY_MUTE45, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @OXYGEN_PLAY_MUTE67, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @OXYGEN_PLAY_MUTE_MASK, align 4
  %21 = call i32 @oxygen_write8_masked(%struct.oxygen* %13, i32 %14, i32 %19, i32 %20)
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %24 = load i32, i32* @OXYGEN_PLAY_ROUTING, align 4
  %25 = load i32, i32* @OXYGEN_PLAY_MUTE01, align 4
  %26 = load i32, i32* @OXYGEN_PLAY_MUTE_MASK, align 4
  %27 = call i32 @oxygen_write8_masked(%struct.oxygen* %23, i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %2, %22, %12
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @OXYGEN_PLAY_DAC0_SOURCE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @OXYGEN_PLAY_DAC2_SOURCE_SHIFT, align 4
  %34 = load i32, i32* @OXYGEN_PLAY_DAC1_SOURCE_SHIFT, align 4
  %35 = load i32, i32* @OXYGEN_PLAY_DAC1_SOURCE_MASK, align 4
  %36 = call i32 @shift_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = or i32 %31, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @OXYGEN_PLAY_DAC1_SOURCE_SHIFT, align 4
  %40 = load i32, i32* @OXYGEN_PLAY_DAC2_SOURCE_SHIFT, align 4
  %41 = load i32, i32* @OXYGEN_PLAY_DAC2_SOURCE_MASK, align 4
  %42 = call i32 @shift_bits(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = or i32 %37, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @OXYGEN_PLAY_DAC0_SOURCE_SHIFT, align 4
  %46 = load i32, i32* @OXYGEN_PLAY_DAC3_SOURCE_SHIFT, align 4
  %47 = load i32, i32* @OXYGEN_PLAY_DAC3_SOURCE_MASK, align 4
  %48 = call i32 @shift_bits(i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = or i32 %43, %48
  ret i32 %49
}

declare dso_local i32 @oxygen_write8_masked(%struct.oxygen*, i32, i32, i32) #1

declare dso_local i32 @shift_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
