; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_confirm_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_confirm_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32 }
%struct.smc_buf_desc = type { %struct.TYPE_10__*, %struct.TYPE_8__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.smc_llc_msg_confirm_rkey = type { %struct.TYPE_9__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }
%struct.smc_wr_buf = type { i32 }

@SMC_LLC_CONFIRM_RKEY = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*, %struct.smc_buf_desc*)* @smc_llc_send_confirm_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_llc_send_confirm_rkey(%struct.smc_link* %0, %struct.smc_buf_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link*, align 8
  %5 = alloca %struct.smc_buf_desc*, align 8
  %6 = alloca %struct.smc_llc_msg_confirm_rkey*, align 8
  %7 = alloca %struct.smc_wr_tx_pend_priv*, align 8
  %8 = alloca %struct.smc_wr_buf*, align 8
  %9 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %4, align 8
  store %struct.smc_buf_desc* %1, %struct.smc_buf_desc** %5, align 8
  %10 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %11 = call i32 @smc_llc_add_pending_send(%struct.smc_link* %10, %struct.smc_wr_buf** %8, %struct.smc_wr_tx_pend_priv** %7)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %62

16:                                               ; preds = %2
  %17 = load %struct.smc_wr_buf*, %struct.smc_wr_buf** %8, align 8
  %18 = bitcast %struct.smc_wr_buf* %17 to %struct.smc_llc_msg_confirm_rkey*
  store %struct.smc_llc_msg_confirm_rkey* %18, %struct.smc_llc_msg_confirm_rkey** %6, align 8
  %19 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %6, align 8
  %20 = call i32 @memset(%struct.smc_llc_msg_confirm_rkey* %19, i32 0, i32 16)
  %21 = load i32, i32* @SMC_LLC_CONFIRM_RKEY, align 4
  %22 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %6, align 8
  %23 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %6, align 8
  %27 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 16, i32* %28, align 8
  %29 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %30 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %30, align 8
  %32 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %31, i64 %32
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @htonl(i32 %36)
  %38 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %6, align 8
  %39 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 4
  %43 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %44 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @sg_dma_address(i32 %49)
  %51 = trunc i64 %50 to i32
  %52 = call i32 @cpu_to_be64(i32 %51)
  %53 = load %struct.smc_llc_msg_confirm_rkey*, %struct.smc_llc_msg_confirm_rkey** %6, align 8
  %54 = getelementptr inbounds %struct.smc_llc_msg_confirm_rkey, %struct.smc_llc_msg_confirm_rkey* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  %58 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %59 = load %struct.smc_wr_tx_pend_priv*, %struct.smc_wr_tx_pend_priv** %7, align 8
  %60 = call i32 @smc_wr_tx_send(%struct.smc_link* %58, %struct.smc_wr_tx_pend_priv* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %16, %14
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @smc_llc_add_pending_send(%struct.smc_link*, %struct.smc_wr_buf**, %struct.smc_wr_tx_pend_priv**) #1

declare dso_local i32 @memset(%struct.smc_llc_msg_confirm_rkey*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @sg_dma_address(i32) #1

declare dso_local i32 @smc_wr_tx_send(%struct.smc_link*, %struct.smc_wr_tx_pend_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
