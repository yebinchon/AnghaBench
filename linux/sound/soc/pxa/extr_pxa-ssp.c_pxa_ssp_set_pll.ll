; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/pxa/extr_pxa-ssp.c_pxa_ssp_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_priv = type { %struct.ssp_device* }
%struct.ssp_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SSACD = common dso_local global i32 0, align 4
@PXA3xx_SSP = common dso_local global i64 0, align 8
@SSACDD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Using SSACDD %x to supply %uHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssp_priv*, i32)* @pxa_ssp_set_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_ssp_set_pll(%struct.ssp_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssp_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ssp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssp_priv* %0, %struct.ssp_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ssp_priv*, %struct.ssp_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ssp_priv, %struct.ssp_priv* %10, i32 0, i32 0
  %12 = load %struct.ssp_device*, %struct.ssp_device** %11, align 8
  store %struct.ssp_device* %12, %struct.ssp_device** %6, align 8
  %13 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %14 = load i32, i32* @SSACD, align 4
  %15 = call i32 @pxa_ssp_read_reg(%struct.ssp_device* %13, i32 %14)
  %16 = and i32 %15, -113
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %18 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PXA3xx_SSP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %24 = load i32, i32* @SSACDD, align 4
  %25 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %23, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %45 [
    i32 5622000, label %28
    i32 11345000, label %29
    i32 12235000, label %32
    i32 14857000, label %35
    i32 32842000, label %38
    i32 48000000, label %41
    i32 0, label %44
  ]

28:                                               ; preds = %26
  br label %77

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, 16
  store i32 %31, i32* %7, align 4
  br label %77

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, 32
  store i32 %34, i32* %7, align 4
  br label %77

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, 48
  store i32 %37, i32* %7, align 4
  br label %77

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, 64
  store i32 %40, i32* %7, align 4
  br label %77

41:                                               ; preds = %26
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 80
  store i32 %43, i32* %7, align 4
  br label %77

44:                                               ; preds = %26
  br label %77

45:                                               ; preds = %26
  %46 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %47 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PXA3xx_SSP, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %45
  store i32 19968, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 1000000
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @do_div(i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %58, 16
  %60 = or i32 %59, 64
  store i32 %60, i32* %8, align 4
  %61 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %62 = load i32, i32* @SSACDD, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %61, i32 %62, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, 96
  store i32 %66, i32* %7, align 4
  %67 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %68 = getelementptr inbounds %struct.ssp_device, %struct.ssp_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %72)
  br label %77

74:                                               ; preds = %45
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %82

77:                                               ; preds = %51, %44, %41, %38, %35, %32, %29, %28
  %78 = load %struct.ssp_device*, %struct.ssp_device** %6, align 8
  %79 = load i32, i32* @SSACD, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @pxa_ssp_write_reg(%struct.ssp_device* %78, i32 %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @pxa_ssp_read_reg(%struct.ssp_device*, i32) #1

declare dso_local i32 @pxa_ssp_write_reg(%struct.ssp_device*, i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
