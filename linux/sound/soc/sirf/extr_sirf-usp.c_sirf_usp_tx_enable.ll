; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_tx_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sirf/extr_sirf-usp.c_sirf_usp_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirf_usp = type { i32 }

@USP_TX_FIFO_OP = common dso_local global i32 0, align 4
@USP_TX_FIFO_RESET = common dso_local global i32 0, align 4
@USP_TX_FIFO_START = common dso_local global i32 0, align 4
@USP_TX_RX_ENABLE = common dso_local global i32 0, align 4
@USP_TX_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sirf_usp*)* @sirf_usp_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirf_usp_tx_enable(%struct.sirf_usp* %0) #0 {
  %2 = alloca %struct.sirf_usp*, align 8
  store %struct.sirf_usp* %0, %struct.sirf_usp** %2, align 8
  %3 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %4 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @USP_TX_FIFO_OP, align 4
  %7 = load i32, i32* @USP_TX_FIFO_RESET, align 4
  %8 = load i32, i32* @USP_TX_FIFO_RESET, align 4
  %9 = call i32 @regmap_update_bits(i32 %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %11 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @USP_TX_FIFO_OP, align 4
  %14 = call i32 @regmap_write(i32 %12, i32 %13, i32 0)
  %15 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %16 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @USP_TX_FIFO_OP, align 4
  %19 = load i32, i32* @USP_TX_FIFO_START, align 4
  %20 = load i32, i32* @USP_TX_FIFO_START, align 4
  %21 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.sirf_usp*, %struct.sirf_usp** %2, align 8
  %23 = getelementptr inbounds %struct.sirf_usp, %struct.sirf_usp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @USP_TX_RX_ENABLE, align 4
  %26 = load i32, i32* @USP_TX_ENA, align 4
  %27 = load i32, i32* @USP_TX_ENA, align 4
  %28 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
