; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_dpll_lock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_irq_dpll_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { i32, %struct.platform_device*, %struct.regmap* }
%struct.platform_device = type { i32 }
%struct.regmap = type { i32 }

@REG_SPDIF_SRPC = common dso_local global i32 0, align 4
@SRPC_DPLL_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"isr: Rx dpll %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"loss lock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_spdif_priv*)* @spdif_irq_dpll_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spdif_irq_dpll_lock(%struct.fsl_spdif_priv* %0) #0 {
  %2 = alloca %struct.fsl_spdif_priv*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.fsl_spdif_priv* %0, %struct.fsl_spdif_priv** %2, align 8
  %6 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %7 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %6, i32 0, i32 2
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %3, align 8
  %9 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %10 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %9, i32 0, i32 1
  %11 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %11, %struct.platform_device** %4, align 8
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = load i32, i32* @REG_SPDIF_SRPC, align 4
  %14 = call i32 @regmap_read(%struct.regmap* %12, i32 %13, i32* %5)
  %15 = load i32, i32* @SRPC_DPLL_LOCKED, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %2, align 8
  %30 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  ret void
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
