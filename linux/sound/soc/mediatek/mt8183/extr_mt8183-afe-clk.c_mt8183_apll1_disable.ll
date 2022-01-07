; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-clk.c_mt8183_apll1_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-clk.c_mt8183_apll1_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { i32* }

@AFE_HD_ENGEN_ENABLE = common dso_local global i32 0, align 4
@AFE_22M_ON_MASK_SFT = common dso_local global i32 0, align 4
@AFE_22M_ON_SFT = common dso_local global i32 0, align 4
@AFE_APLL1_TUNER_CFG = common dso_local global i32 0, align 4
@CLK_APLL1_TUNER = common dso_local global i64 0, align 8
@CLK_APLL22M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt8183_apll1_disable(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca %struct.mtk_base_afe*, align 8
  %3 = alloca %struct.mt8183_afe_private*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %2, align 8
  %4 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %4, i32 0, i32 1
  %6 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %5, align 8
  store %struct.mt8183_afe_private* %6, %struct.mt8183_afe_private** %3, align 8
  %7 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %8 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AFE_HD_ENGEN_ENABLE, align 4
  %11 = load i32, i32* @AFE_22M_ON_MASK_SFT, align 4
  %12 = load i32, i32* @AFE_22M_ON_SFT, align 4
  %13 = shl i32 0, %12
  %14 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %13)
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %16 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AFE_APLL1_TUNER_CFG, align 4
  %19 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 1, i32 0)
  %20 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %21 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @CLK_APLL1_TUNER, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  %27 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %28 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @CLK_APLL22M, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  %34 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %35 = call i32 @apll1_mux_setting(%struct.mtk_base_afe* %34, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @apll1_mux_setting(%struct.mtk_base_afe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
