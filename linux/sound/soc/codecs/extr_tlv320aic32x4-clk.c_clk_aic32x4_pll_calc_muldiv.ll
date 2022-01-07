; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_calc_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic32x4-clk.c_clk_aic32x4_pll_calc_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_aic32x4_pll_muldiv = type { i64, i32, i32, i32 }

@AIC32X4_MAX_PLL_CLKIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_aic32x4_pll_muldiv*, i64, i64)* @clk_aic32x4_pll_calc_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_aic32x4_pll_calc_muldiv(%struct.clk_aic32x4_pll_muldiv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_aic32x4_pll_muldiv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clk_aic32x4_pll_muldiv* %0, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @AIC32X4_MAX_PLL_CLKIN, align 8
  %11 = udiv i64 %9, %10
  %12 = add i64 %11, 1
  %13 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %14 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %16 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %62

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %25 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %23, %26
  %28 = mul i64 %27, 10000
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @do_div(i32 %30, i64 %31)
  %33 = load i32, i32* %8, align 4
  %34 = sdiv i32 %33, 640000
  %35 = add nsw i32 %34, 1
  %36 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %37 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %39 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %62

43:                                               ; preds = %20
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %46 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = call i32 @do_div(i32 %44, i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 10000
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %54, 10000
  %56 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %57 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %8, align 4
  %59 = srem i32 %58, 10000
  %60 = load %struct.clk_aic32x4_pll_muldiv*, %struct.clk_aic32x4_pll_muldiv** %5, align 8
  %61 = getelementptr inbounds %struct.clk_aic32x4_pll_muldiv, %struct.clk_aic32x4_pll_muldiv* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %52, %42, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
