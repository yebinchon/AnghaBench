; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt6797/extr_mt6797-afe-clk.c_mt6797_afe_disable_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt6797/extr_mt6797-afe-clk.c_mt6797_afe_disable_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { %struct.mt6797_afe_private* }
%struct.mt6797_afe_private = type { i32* }

@CLK_TOP_MUX_AUD_BUS = common dso_local global i64 0, align 8
@CLK_TOP_MUX_AUD = common dso_local global i64 0, align 8
@CLK_INFRA_SYS_AUD_26M = common dso_local global i64 0, align 8
@CLK_INFRA_SYS_AUD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt6797_afe_disable_clock(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca %struct.mtk_base_afe*, align 8
  %3 = alloca %struct.mt6797_afe_private*, align 8
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %2, align 8
  %4 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %2, align 8
  %5 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %4, i32 0, i32 0
  %6 = load %struct.mt6797_afe_private*, %struct.mt6797_afe_private** %5, align 8
  store %struct.mt6797_afe_private* %6, %struct.mt6797_afe_private** %3, align 8
  %7 = load %struct.mt6797_afe_private*, %struct.mt6797_afe_private** %3, align 8
  %8 = getelementptr inbounds %struct.mt6797_afe_private, %struct.mt6797_afe_private* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @CLK_TOP_MUX_AUD_BUS, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_disable_unprepare(i32 %12)
  %14 = load %struct.mt6797_afe_private*, %struct.mt6797_afe_private** %3, align 8
  %15 = getelementptr inbounds %struct.mt6797_afe_private, %struct.mt6797_afe_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @CLK_TOP_MUX_AUD, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.mt6797_afe_private*, %struct.mt6797_afe_private** %3, align 8
  %22 = getelementptr inbounds %struct.mt6797_afe_private, %struct.mt6797_afe_private* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @CLK_INFRA_SYS_AUD_26M, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  %28 = load %struct.mt6797_afe_private*, %struct.mt6797_afe_private** %3, align 8
  %29 = getelementptr inbounds %struct.mt6797_afe_private, %struct.mt6797_afe_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @CLK_INFRA_SYS_AUD, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @clk_disable_unprepare(i32 %33)
  ret i32 0
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
