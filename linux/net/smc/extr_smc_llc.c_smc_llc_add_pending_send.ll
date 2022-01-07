; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_add_pending_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_llc.c_smc_llc_add_pending_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32 }
%struct.smc_wr_buf = type { i32 }
%struct.smc_wr_tx_pend_priv = type { i32 }

@smc_llc_tx_handler = common dso_local global i32 0, align 4
@SMC_WR_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"must increase SMC_WR_BUF_SIZE to at least sizeof(struct smc_llc_msg)\00", align 1
@SMC_WR_TX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [214 x i8] c"must adapt SMC_WR_TX_SIZE to sizeof(struct smc_llc_msg); if not all smc_wr upper layer protocols use the same message size any more, must start to set link->wr_tx_sges[i].length on each individual smc_wr_tx_send()\00", align 1
@SMC_WR_TX_PEND_PRIV_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"must increase SMC_WR_TX_PEND_PRIV_SIZE to at least sizeof(struct smc_llc_tx_pend)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*, %struct.smc_wr_buf**, %struct.smc_wr_tx_pend_priv**)* @smc_llc_add_pending_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_llc_add_pending_send(%struct.smc_link* %0, %struct.smc_wr_buf** %1, %struct.smc_wr_tx_pend_priv** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smc_link*, align 8
  %6 = alloca %struct.smc_wr_buf**, align 8
  %7 = alloca %struct.smc_wr_tx_pend_priv**, align 8
  %8 = alloca i32, align 4
  store %struct.smc_link* %0, %struct.smc_link** %5, align 8
  store %struct.smc_wr_buf** %1, %struct.smc_wr_buf*** %6, align 8
  store %struct.smc_wr_tx_pend_priv** %2, %struct.smc_wr_tx_pend_priv*** %7, align 8
  %9 = load %struct.smc_link*, %struct.smc_link** %5, align 8
  %10 = load i32, i32* @smc_llc_tx_handler, align 4
  %11 = load %struct.smc_wr_buf**, %struct.smc_wr_buf*** %6, align 8
  %12 = load %struct.smc_wr_tx_pend_priv**, %struct.smc_wr_tx_pend_priv*** %7, align 8
  %13 = call i32 @smc_wr_tx_get_free_slot(%struct.smc_link* %9, i32 %10, %struct.smc_wr_buf** %11, i32* null, %struct.smc_wr_tx_pend_priv** %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load i32, i32* @SMC_WR_BUF_SIZE, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 4, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON_MSG(i32 %22, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @SMC_WR_TX_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 4, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUILD_BUG_ON_MSG(i32 %27, i8* getelementptr inbounds ([214 x i8], [214 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @SMC_WR_TX_PEND_PRIV_SIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 4, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUILD_BUG_ON_MSG(i32 %32, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %18, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @smc_wr_tx_get_free_slot(%struct.smc_link*, i32, %struct.smc_wr_buf**, i32*, %struct.smc_wr_tx_pend_priv**) #1

declare dso_local i32 @BUILD_BUG_ON_MSG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
