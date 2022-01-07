; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_disable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_afe_disable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32 }

@ASYS_TOP_CON = common dso_local global i32 0, align 4
@ASYS_TOP_CON_ASYS_TIMING_ON = common dso_local global i32 0, align 4
@AFE_DAC_CON0 = common dso_local global i32 0, align 4
@AFE_DAC_CON0_AFE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt2701_afe_disable_clock(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca %struct.mtk_base_afe*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %2, align 8
  %3 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ASYS_TOP_CON, align 4
  %7 = load i32, i32* @ASYS_TOP_CON_ASYS_TIMING_ON, align 4
  %8 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 0)
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AFE_DAC_CON0, align 4
  %13 = load i32, i32* @AFE_DAC_CON0_AFE_ON, align 4
  %14 = call i32 @regmap_update_bits(i32 %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %16 = call i32 @mt2701_afe_disable_audsys(%struct.mtk_base_afe* %15)
  ret i32 0
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mt2701_afe_disable_audsys(%struct.mtk_base_afe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
