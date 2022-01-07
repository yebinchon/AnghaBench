; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_get_free_slot.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_get_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smc_link* }
%struct.smc_link = type { i32 }
%struct.smc_wr_buf = type { i32 }
%struct.smc_rdma_wr = type { i32 }
%struct.smc_cdc_tx_pend = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@smc_cdc_tx_handler = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_cdc_get_free_slot(%struct.smc_connection* %0, %struct.smc_wr_buf** %1, %struct.smc_rdma_wr** %2, %struct.smc_cdc_tx_pend** %3) #0 {
  %5 = alloca %struct.smc_connection*, align 8
  %6 = alloca %struct.smc_wr_buf**, align 8
  %7 = alloca %struct.smc_rdma_wr**, align 8
  %8 = alloca %struct.smc_cdc_tx_pend**, align 8
  %9 = alloca %struct.smc_link*, align 8
  %10 = alloca i32, align 4
  store %struct.smc_connection* %0, %struct.smc_connection** %5, align 8
  store %struct.smc_wr_buf** %1, %struct.smc_wr_buf*** %6, align 8
  store %struct.smc_rdma_wr** %2, %struct.smc_rdma_wr*** %7, align 8
  store %struct.smc_cdc_tx_pend** %3, %struct.smc_cdc_tx_pend*** %8, align 8
  %11 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %12 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.smc_link*, %struct.smc_link** %14, align 8
  %16 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %17 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %15, i64 %16
  store %struct.smc_link* %17, %struct.smc_link** %9, align 8
  %18 = load %struct.smc_link*, %struct.smc_link** %9, align 8
  %19 = load i32, i32* @smc_cdc_tx_handler, align 4
  %20 = load %struct.smc_wr_buf**, %struct.smc_wr_buf*** %6, align 8
  %21 = load %struct.smc_rdma_wr**, %struct.smc_rdma_wr*** %7, align 8
  %22 = load %struct.smc_cdc_tx_pend**, %struct.smc_cdc_tx_pend*** %8, align 8
  %23 = bitcast %struct.smc_cdc_tx_pend** %22 to %struct.smc_wr_tx_pend_priv**
  %24 = call i32 @smc_wr_tx_get_free_slot(%struct.smc_link* %18, i32 %19, %struct.smc_wr_buf** %20, %struct.smc_rdma_wr** %21, %struct.smc_wr_tx_pend_priv** %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.smc_connection*, %struct.smc_connection** %5, align 8
  %26 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EPIPE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %29, %4
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local i32 @smc_wr_tx_get_free_slot(%struct.smc_link*, i32, %struct.smc_wr_buf**, %struct.smc_rdma_wr**, %struct.smc_wr_tx_pend_priv**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
