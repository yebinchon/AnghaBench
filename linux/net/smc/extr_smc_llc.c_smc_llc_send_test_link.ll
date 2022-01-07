; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_test_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_send_test_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32 }
%struct.smc_llc_msg_test_link = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }
%struct.smc_wr_buf = type { i32 }

@SMC_LLC_TEST_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*, i32*)* @smc_llc_send_test_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_llc_send_test_link(%struct.smc_link* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smc_llc_msg_test_link*, align 8
  %7 = alloca %struct.smc_wr_tx_pend_priv*, align 8
  %8 = alloca %struct.smc_wr_buf*, align 8
  %9 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %11 = call i32 @smc_llc_add_pending_send(%struct.smc_link* %10, %struct.smc_wr_buf** %8, %struct.smc_wr_tx_pend_priv** %7)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.smc_wr_buf*, %struct.smc_wr_buf** %8, align 8
  %18 = bitcast %struct.smc_wr_buf* %17 to %struct.smc_llc_msg_test_link*
  store %struct.smc_llc_msg_test_link* %18, %struct.smc_llc_msg_test_link** %6, align 8
  %19 = load %struct.smc_llc_msg_test_link*, %struct.smc_llc_msg_test_link** %6, align 8
  %20 = call i32 @memset(%struct.smc_llc_msg_test_link* %19, i32 0, i32 12)
  %21 = load i32, i32* @SMC_LLC_TEST_LINK, align 4
  %22 = load %struct.smc_llc_msg_test_link*, %struct.smc_llc_msg_test_link** %6, align 8
  %23 = getelementptr inbounds %struct.smc_llc_msg_test_link, %struct.smc_llc_msg_test_link* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.smc_llc_msg_test_link*, %struct.smc_llc_msg_test_link** %6, align 8
  %27 = getelementptr inbounds %struct.smc_llc_msg_test_link, %struct.smc_llc_msg_test_link* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 12, i32* %28, align 4
  %29 = load %struct.smc_llc_msg_test_link*, %struct.smc_llc_msg_test_link** %6, align 8
  %30 = getelementptr inbounds %struct.smc_llc_msg_test_link, %struct.smc_llc_msg_test_link* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @memcpy(i32 %31, i32* %32, i32 4)
  %34 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %35 = load %struct.smc_wr_tx_pend_priv*, %struct.smc_wr_tx_pend_priv** %7, align 8
  %36 = call i32 @smc_wr_tx_send(%struct.smc_link* %34, %struct.smc_wr_tx_pend_priv* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %16, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @smc_llc_add_pending_send(%struct.smc_link*, %struct.smc_wr_buf**, %struct.smc_wr_tx_pend_priv**) #1

declare dso_local i32 @memset(%struct.smc_llc_msg_test_link*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @smc_wr_tx_send(%struct.smc_link*, %struct.smc_wr_tx_pend_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
