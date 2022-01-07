; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_msg_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_cdc.c_smc_cdc_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { %struct.TYPE_7__, i32, i64, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.smc_link* }
%struct.smc_link = type { i32 }
%struct.smc_wr_buf = type { i32 }
%struct.smc_cdc_tx_pend = type { i32 }
%union.smc_host_cursor = type { i32 }
%struct.smc_cdc_msg = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_cdc_msg_send(%struct.smc_connection* %0, %struct.smc_wr_buf* %1, %struct.smc_cdc_tx_pend* %2) #0 {
  %4 = alloca %struct.smc_connection*, align 8
  %5 = alloca %struct.smc_wr_buf*, align 8
  %6 = alloca %struct.smc_cdc_tx_pend*, align 8
  %7 = alloca %union.smc_host_cursor, align 4
  %8 = alloca %struct.smc_link*, align 8
  %9 = alloca i32, align 4
  store %struct.smc_connection* %0, %struct.smc_connection** %4, align 8
  store %struct.smc_wr_buf* %1, %struct.smc_wr_buf** %5, align 8
  store %struct.smc_cdc_tx_pend* %2, %struct.smc_cdc_tx_pend** %6, align 8
  %10 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %11 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %10, i32 0, i32 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.smc_link*, %struct.smc_link** %13, align 8
  %15 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %16 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %14, i64 %15
  store %struct.smc_link* %16, %struct.smc_link** %8, align 8
  %17 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %18 = load %struct.smc_cdc_tx_pend*, %struct.smc_cdc_tx_pend** %6, align 8
  %19 = call i32 @smc_cdc_add_pending_send(%struct.smc_connection* %17, %struct.smc_cdc_tx_pend* %18)
  %20 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %21 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %25 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %28 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.smc_wr_buf*, %struct.smc_wr_buf** %5, align 8
  %31 = bitcast %struct.smc_wr_buf* %30 to %struct.smc_cdc_msg*
  %32 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %33 = call i32 @smc_host_msg_to_cdc(%struct.smc_cdc_msg* %31, %struct.smc_connection* %32, %union.smc_host_cursor* %7)
  %34 = load %struct.smc_link*, %struct.smc_link** %8, align 8
  %35 = load %struct.smc_cdc_tx_pend*, %struct.smc_cdc_tx_pend** %6, align 8
  %36 = bitcast %struct.smc_cdc_tx_pend* %35 to %struct.smc_wr_tx_pend_priv*
  %37 = call i32 @smc_wr_tx_send(%struct.smc_link* %34, %struct.smc_wr_tx_pend_priv* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %3
  %41 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %42 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %41, i32 0, i32 1
  %43 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %44 = call i32 @smc_curs_copy(i32* %42, %union.smc_host_cursor* %7, %struct.smc_connection* %43)
  %45 = load %struct.smc_connection*, %struct.smc_connection** %4, align 8
  %46 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %40, %3
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @smc_cdc_add_pending_send(%struct.smc_connection*, %struct.smc_cdc_tx_pend*) #1

declare dso_local i32 @smc_host_msg_to_cdc(%struct.smc_cdc_msg*, %struct.smc_connection*, %union.smc_host_cursor*) #1

declare dso_local i32 @smc_wr_tx_send(%struct.smc_link*, %struct.smc_wr_tx_pend_priv*) #1

declare dso_local i32 @smc_curs_copy(i32*, %union.smc_host_cursor*, %struct.smc_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
