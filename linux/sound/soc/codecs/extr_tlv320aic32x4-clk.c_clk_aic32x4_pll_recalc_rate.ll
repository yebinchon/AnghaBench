; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_aic32x4 = type { i32 }
%struct.clk_aic32x4_pll_muldiv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_aic32x4_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_aic32x4_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_aic32x4*, align 8
  %7 = alloca %struct.clk_aic32x4_pll_muldiv, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_aic32x4* @to_clk_aic32x4(%struct.clk_hw* %9)
  store %struct.clk_aic32x4* %10, %struct.clk_aic32x4** %6, align 8
  %11 = load %struct.clk_aic32x4*, %struct.clk_aic32x4** %6, align 8
  %12 = call i32 @clk_aic32x4_pll_get_muldiv(%struct.clk_aic32x4* %11, %struct.clk_aic32x4_pll_muldiv* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @clk_aic32x4_pll_calc_rate(%struct.clk_aic32x4_pll_muldiv* %7, i64 %17)
  store i64 %18, i64* %3, align 8
  br label %19

19:                                               ; preds = %16, %15
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local %struct.clk_aic32x4* @to_clk_aic32x4(%struct.clk_hw*) #1

declare dso_local i32 @clk_aic32x4_pll_get_muldiv(%struct.clk_aic32x4*, %struct.clk_aic32x4_pll_muldiv*) #1

declare dso_local i64 @clk_aic32x4_pll_calc_rate(%struct.clk_aic32x4_pll_muldiv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
