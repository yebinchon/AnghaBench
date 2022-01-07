; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_disable_msp_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_disable_msp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_msp = type { i32, i64 }

@MSP_GCR = common dso_local global i64 0, align 8
@TX_ENABLE = common dso_local global i32 0, align 4
@MSP_DMACR = common dso_local global i64 0, align 8
@TX_DMA_ENABLE = common dso_local global i32 0, align 4
@MSP_IMSC = common dso_local global i64 0, align 8
@TX_SERVICE_INT = common dso_local global i32 0, align 4
@TX_UNDERRUN_ERR_INT = common dso_local global i32 0, align 4
@MSP_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ux500_msp*)* @disable_msp_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_msp_tx(%struct.ux500_msp* %0) #0 {
  %2 = alloca %struct.ux500_msp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ux500_msp* %0, %struct.ux500_msp** %2, align 8
  %6 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %7 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MSP_GCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TX_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %17 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSP_GCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %23 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSP_DMACR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TX_DMA_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %33 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MSP_DMACR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 %31, i64 %36)
  %38 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %39 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MSP_IMSC, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @TX_SERVICE_INT, align 4
  %46 = load i32, i32* @TX_UNDERRUN_ERR_INT, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %44, %48
  %50 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %51 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MSP_IMSC, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load i32, i32* @MSP_DIR_TX, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.ux500_msp*, %struct.ux500_msp** %2, align 8
  %59 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
