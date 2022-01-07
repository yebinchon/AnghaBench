; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_tx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_tx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_wr_tx_pend_priv = type { i32 }
%struct.smc_connection = type { i32 }
%struct.smc_cdc_tx_pend = type { %struct.smc_connection* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_wr_tx_pend_priv*, i64)* @smc_cdc_tx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_cdc_tx_filter(%struct.smc_wr_tx_pend_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.smc_wr_tx_pend_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.smc_connection*, align 8
  %6 = alloca %struct.smc_cdc_tx_pend*, align 8
  store %struct.smc_wr_tx_pend_priv* %0, %struct.smc_wr_tx_pend_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.smc_connection*
  store %struct.smc_connection* %8, %struct.smc_connection** %5, align 8
  %9 = load %struct.smc_wr_tx_pend_priv*, %struct.smc_wr_tx_pend_priv** %3, align 8
  %10 = bitcast %struct.smc_wr_tx_pend_priv* %9 to %struct.smc_cdc_tx_pend*
  store %struct.smc_cdc_tx_pend* %10, %struct.smc_cdc_tx_pend** %6, align 8
  %11 = load %struct.smc_cdc_tx_pend*, %struct.smc_cdc_tx_pend** %6, align 8
  %12 = getelementptr inbounds %struct.smc_cdc_tx_pend, %struct.smc_cdc_tx_pend* %11, i32 0, i32 0
  %13 = load %struct.smc_connection*, %struct.smc_connection** %12, align 8
  %14 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %15 = icmp eq %struct.smc_connection* %13, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
