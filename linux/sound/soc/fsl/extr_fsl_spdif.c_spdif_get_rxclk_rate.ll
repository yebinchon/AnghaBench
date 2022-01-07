; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_get_rxclk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_get_rxclk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { i32, %struct.platform_device*, %struct.regmap* }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }

@REG_SPDIF_SRFM = common dso_local global i32 0, align 4
@REG_SPDIF_SRPC = common dso_local global i32 0, align 4
@SRPC_CLKSRC_SEL_OFFSET = common dso_local global i32 0, align 4
@srpc_dpll_locked = common dso_local global i64* null, align 8
@SRPC_DPLL_LOCKED = common dso_local global i32 0, align 4
@gainsel_multi = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"FreqMeas: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"BusclkFreq: %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"RxRate: %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_spdif_priv*, i32)* @spdif_get_rxclk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_get_rxclk_rate(%struct.fsl_spdif_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.fsl_spdif_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %3, align 8
  %13 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %12, i32 0, i32 2
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  %15 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %15, i32 0, i32 1
  %17 = load %struct.platform_device*, %struct.platform_device** %16, align 8
  store %struct.platform_device* %17, %struct.platform_device** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.regmap*, %struct.regmap** %5, align 8
  %19 = load i32, i32* @REG_SPDIF_SRFM, align 4
  %20 = call i32 @regmap_read(%struct.regmap* %18, i32 %19, i32* %9)
  %21 = load %struct.regmap*, %struct.regmap** %5, align 8
  %22 = load i32, i32* @REG_SPDIF_SRPC, align 4
  %23 = call i32 @regmap_read(%struct.regmap* %21, i32 %22, i32* %10)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @SRPC_CLKSRC_SEL_OFFSET, align 4
  %26 = ashr i32 %24, %25
  %27 = and i32 %26, 15
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = load i64*, i64** @srpc_dpll_locked, align 8
  %30 = load i64, i64* %11, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @SRPC_DPLL_LOCKED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %3, align 8
  %41 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_get_rate(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %34, %2
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** @gainsel_multi, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 1024
  %55 = call i32 @do_div(i32 %48, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @do_div(i32 %56, i32 131072)
  %58 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
