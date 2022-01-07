; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8173/extr_mt8173-afe-pcm.c_mt8173_afe_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_base_afe = type { i32, %struct.mt8173_afe_private* }
%struct.mt8173_afe_private = type { i32* }

@AFE_DAC_CON0 = common dso_local global i32 0, align 4
@AUDIO_TOP_CON0 = common dso_local global i32 0, align 4
@AUD_TCON0_PDN_AFE = common dso_local global i32 0, align 4
@MT8173_CLK_I2S1_M = common dso_local global i64 0, align 8
@MT8173_CLK_I2S2_M = common dso_local global i64 0, align 8
@MT8173_CLK_BCK0 = common dso_local global i64 0, align 8
@MT8173_CLK_BCK1 = common dso_local global i64 0, align 8
@MT8173_CLK_TOP_PDN_AUD = common dso_local global i64 0, align 8
@MT8173_CLK_TOP_PDN_AUD_BUS = common dso_local global i64 0, align 8
@MT8173_CLK_INFRASYS_AUD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mt8173_afe_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt8173_afe_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca %struct.mt8173_afe_private*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.mtk_base_afe* @dev_get_drvdata(%struct.device* %5)
  store %struct.mtk_base_afe* %6, %struct.mtk_base_afe** %3, align 8
  %7 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %7, i32 0, i32 1
  %9 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %8, align 8
  store %struct.mt8173_afe_private* %9, %struct.mt8173_afe_private** %4, align 8
  %10 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AFE_DAC_CON0, align 4
  %14 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 1, i32 0)
  %15 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %16 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AUDIO_TOP_CON0, align 4
  %19 = load i32, i32* @AUD_TCON0_PDN_AFE, align 4
  %20 = load i32, i32* @AUD_TCON0_PDN_AFE, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %4, align 8
  %23 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @MT8173_CLK_I2S1_M, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %4, align 8
  %30 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @MT8173_CLK_I2S2_M, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  %36 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %4, align 8
  %37 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @MT8173_CLK_BCK0, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_disable_unprepare(i32 %41)
  %43 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %4, align 8
  %44 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @MT8173_CLK_BCK1, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %4, align 8
  %51 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @MT8173_CLK_TOP_PDN_AUD, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_disable_unprepare(i32 %55)
  %57 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %4, align 8
  %58 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* @MT8173_CLK_TOP_PDN_AUD_BUS, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_disable_unprepare(i32 %62)
  %64 = load %struct.mt8173_afe_private*, %struct.mt8173_afe_private** %4, align 8
  %65 = getelementptr inbounds %struct.mt8173_afe_private, %struct.mt8173_afe_private* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @MT8173_CLK_INFRASYS_AUD, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clk_disable_unprepare(i32 %69)
  ret i32 0
}

declare dso_local %struct.mtk_base_afe* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
