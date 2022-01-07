; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_set_rx_clksrc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_set_rx_clksrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { i64, %struct.regmap* }
%struct.regmap = type { i32 }

@SRPC_CLKSRC_MAX = common dso_local global i64 0, align 8
@GAINSEL_MULTI_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_SPDIF_SRPC = common dso_local global i32 0, align 4
@SRPC_CLKSRC_SEL_MASK = common dso_local global i32 0, align 4
@SRPC_GAINSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_spdif_priv*, i32, i32)* @spdif_set_rx_clksrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_set_rx_clksrc(%struct.fsl_spdif_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_spdif_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i64, align 8
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %10, i32 0, i32 1
  %12 = load %struct.regmap*, %struct.regmap** %11, align 8
  store %struct.regmap* %12, %struct.regmap** %8, align 8
  %13 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %14 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @SRPC_CLKSRC_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GAINSEL_MULTI_MAX, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %38

26:                                               ; preds = %19
  %27 = load %struct.regmap*, %struct.regmap** %8, align 8
  %28 = load i32, i32* @REG_SPDIF_SRPC, align 4
  %29 = load i32, i32* @SRPC_CLKSRC_SEL_MASK, align 4
  %30 = load i32, i32* @SRPC_GAINSEL_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @SRPC_CLKSRC_SEL_SET(i64 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @SRPC_GAINSEL_SET(i32 %34)
  %36 = or i32 %33, %35
  %37 = call i32 @regmap_update_bits(%struct.regmap* %27, i32 %28, i32 %31, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %26, %23
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @SRPC_CLKSRC_SEL_SET(i64) #1

declare dso_local i32 @SRPC_GAINSEL_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
