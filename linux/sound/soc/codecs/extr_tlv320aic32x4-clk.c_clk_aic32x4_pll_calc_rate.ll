; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_calc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_calc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_aic32x4_pll_muldiv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_aic32x4_pll_muldiv*, i64)* @clk_aic32x4_pll_calc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_aic32x4_pll_calc_rate(%struct.clk_aic32x4_pll_muldiv* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_aic32x4_pll_muldiv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.clk_aic32x4_pll_muldiv* %0, %struct.clk_aic32x4_pll_muldiv** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %3, align 8
  %9 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  %12 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %3, align 8
  %13 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 10000
  %16 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %3, align 8
  %17 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  %20 = mul nsw i32 %11, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %3, align 8
  %23 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 10000
  %26 = call i64 @DIV_ROUND_UP_ULL(i32 %21, i32 %25)
  ret i64 %26
}

declare dso_local i64 @DIV_ROUND_UP_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
