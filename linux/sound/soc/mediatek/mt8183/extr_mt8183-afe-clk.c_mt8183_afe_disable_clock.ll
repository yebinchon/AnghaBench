; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-clk.c_mt8183_afe_disable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt8183/extr_mt8183-afe-clk.c_mt8183_afe_disable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { %struct.mt8183_afe_private* }
%struct.mt8183_afe_private = type { i32* }

@CLK_I2S4_BCLK_SW = common dso_local global i64 0, align 8
@CLK_I2S3_BCLK_SW = common dso_local global i64 0, align 8
@CLK_I2S2_BCLK_SW = common dso_local global i64 0, align 8
@CLK_I2S1_BCLK_SW = common dso_local global i64 0, align 8
@CLK_AFE = common dso_local global i64 0, align 8
@CLK_MUX_AUDIOINTBUS = common dso_local global i64 0, align 8
@CLK_MUX_AUDIO = common dso_local global i64 0, align 8
@CLK_INFRA_SYS_AUDIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt8183_afe_disable_clock(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca %struct.mtk_base_afe*, align 8
  %3 = alloca %struct.mt8183_afe_private*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %2, align 8
  %4 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %4, i32 0, i32 0
  %6 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %5, align 8
  store %struct.mt8183_afe_private* %6, %struct.mt8183_afe_private** %3, align 8
  %7 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %8 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @CLK_I2S4_BCLK_SW, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %15 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @CLK_I2S3_BCLK_SW, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %22 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @CLK_I2S2_BCLK_SW, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  %28 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %29 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @CLK_I2S1_BCLK_SW, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  %35 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %36 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @CLK_AFE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_disable_unprepare(i32 %40)
  %42 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %43 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @CLK_MUX_AUDIOINTBUS, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clk_disable_unprepare(i32 %47)
  %49 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %50 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @CLK_MUX_AUDIO, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_disable_unprepare(i32 %54)
  %56 = load %struct.mt8183_afe_private*, %struct.mt8183_afe_private** %3, align 8
  %57 = getelementptr inbounds %struct.mt8183_afe_private, %struct.mt8183_afe_private* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @CLK_INFRA_SYS_AUDIO, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @clk_disable_unprepare(i32 %61)
  ret i32 0
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
