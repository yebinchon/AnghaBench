; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514.c_rt5514_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt5514_priv = type { i32, i32 }

@RT5514_ANA_CTRL_PLL3 = common dso_local global i32 0, align 4
@RT5514_PLL_SOURCE_CTRL = common dso_local global i32 0, align 4
@RT5514_PWR_ANA1 = common dso_local global i32 0, align 4
@RT5514_PLL3_CALIB_CTRL4 = common dso_local global i32 0, align 4
@RT5514_PLL3_CALIB_CTRL1 = common dso_local global i32 0, align 4
@RT5514_PLL3_CALIB_CTRL5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt5514_priv*, i32)* @rt5514_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5514_calibration(%struct.rt5514_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.rt5514_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.rt5514_priv* %0, %struct.rt5514_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %2
  %8 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RT5514_ANA_CTRL_PLL3, align 4
  %12 = call i32 @regmap_write(i32 %10, i32 %11, i32 10)
  %13 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %14 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RT5514_PLL_SOURCE_CTRL, align 4
  %17 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 15, i32 10)
  %18 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RT5514_PWR_ANA1, align 4
  %22 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 769, i32 769)
  %23 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RT5514_PLL3_CALIB_CTRL4, align 4
  %27 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %28 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 -2147483648, %29
  %31 = call i32 @regmap_write(i32 %25, i32 %26, i32 %30)
  %32 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %33 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RT5514_PLL3_CALIB_CTRL1, align 4
  %36 = call i32 @regmap_write(i32 %34, i32 %35, i32 -1950873600)
  %37 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RT5514_PLL3_CALIB_CTRL5, align 4
  %41 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 -1073741824, i32 -2147483648)
  %42 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %43 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RT5514_PLL3_CALIB_CTRL5, align 4
  %46 = call i32 @regmap_update_bits(i32 %44, i32 %45, i32 -1073741824, i32 -1073741824)
  br label %63

47:                                               ; preds = %2
  %48 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RT5514_PLL3_CALIB_CTRL5, align 4
  %52 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 -1073741824, i32 1073741824)
  %53 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @RT5514_PWR_ANA1, align 4
  %57 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 769, i32 0)
  %58 = load %struct.rt5514_priv*, %struct.rt5514_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rt5514_priv, %struct.rt5514_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @RT5514_PLL_SOURCE_CTRL, align 4
  %62 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 15, i32 4)
  br label %63

63:                                               ; preds = %47, %7
  ret i32 0
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
