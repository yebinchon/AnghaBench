; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_delete_rkey.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_delete_rkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32 }
%struct.smc_buf_desc = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.smc_llc_msg_delete_rkey = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }
%struct.smc_wr_buf = type { i32 }

@SMC_LLC_DELETE_RKEY = common dso_local global i32 0, align 4
@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*, %struct.smc_buf_desc*)* @smc_llc_send_delete_rkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_llc_send_delete_rkey(%struct.smc_link* %0, %struct.smc_buf_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link*, align 8
  %5 = alloca %struct.smc_buf_desc*, align 8
  %6 = alloca %struct.smc_llc_msg_delete_rkey*, align 8
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
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.smc_wr_buf*, %struct.smc_wr_buf** %8, align 8
  %18 = bitcast %struct.smc_wr_buf* %17 to %struct.smc_llc_msg_delete_rkey*
  store %struct.smc_llc_msg_delete_rkey* %18, %struct.smc_llc_msg_delete_rkey** %6, align 8
  %19 = load %struct.smc_llc_msg_delete_rkey*, %struct.smc_llc_msg_delete_rkey** %6, align 8
  %20 = call i32 @memset(%struct.smc_llc_msg_delete_rkey* %19, i32 0, i32 24)
  %21 = load i32, i32* @SMC_LLC_DELETE_RKEY, align 4
  %22 = load %struct.smc_llc_msg_delete_rkey*, %struct.smc_llc_msg_delete_rkey** %6, align 8
  %23 = getelementptr inbounds %struct.smc_llc_msg_delete_rkey, %struct.smc_llc_msg_delete_rkey* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.smc_llc_msg_delete_rkey*, %struct.smc_llc_msg_delete_rkey** %6, align 8
  %27 = getelementptr inbounds %struct.smc_llc_msg_delete_rkey, %struct.smc_llc_msg_delete_rkey* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 24, i32* %28, align 8
  %29 = load %struct.smc_llc_msg_delete_rkey*, %struct.smc_llc_msg_delete_rkey** %6, align 8
  %30 = getelementptr inbounds %struct.smc_llc_msg_delete_rkey, %struct.smc_llc_msg_delete_rkey* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %5, align 8
  %32 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %32, align 8
  %34 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %33, i64 %34
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htonl(i32 %38)
  %40 = load %struct.smc_llc_msg_delete_rkey*, %struct.smc_llc_msg_delete_rkey** %6, align 8
  %41 = getelementptr inbounds %struct.smc_llc_msg_delete_rkey, %struct.smc_llc_msg_delete_rkey* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %45 = load %struct.smc_wr_tx_pend_priv*, %struct.smc_wr_tx_pend_priv** %7, align 8
  %46 = call i32 @smc_wr_tx_send(%struct.smc_link* %44, %struct.smc_wr_tx_pend_priv* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %16, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @smc_llc_add_pending_send(%struct.smc_link*, %struct.smc_wr_buf**, %struct.smc_wr_tx_pend_priv**) #1

declare dso_local i32 @memset(%struct.smc_llc_msg_delete_rkey*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @smc_wr_tx_send(%struct.smc_link*, %struct.smc_wr_tx_pend_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
