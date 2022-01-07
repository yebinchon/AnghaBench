; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_modify_qp_rts.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_modify_qp_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32 }

@IB_QPS_RTS = common dso_local global i32 0, align 4
@SMC_QP_TIMEOUT = common dso_local global i32 0, align 4
@SMC_QP_RETRY_CNT = common dso_local global i32 0, align 4
@SMC_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_TIMEOUT = common dso_local global i32 0, align 4
@IB_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IB_QP_SQ_PSN = common dso_local global i32 0, align 4
@IB_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IB_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smc_ib_modify_qp_rts(%struct.smc_link* %0) #0 {
  %2 = alloca %struct.smc_link*, align 8
  %3 = alloca %struct.ib_qp_attr, align 4
  store %struct.smc_link* %0, %struct.smc_link** %2, align 8
  %4 = call i32 @memset(%struct.ib_qp_attr* %3, i32 0, i32 24)
  %5 = load i32, i32* @IB_QPS_RTS, align 4
  %6 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 5
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @SMC_QP_TIMEOUT, align 4
  %8 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 4
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @SMC_QP_RETRY_CNT, align 4
  %10 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 3
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @SMC_QP_RNR_RETRY, align 4
  %12 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %14 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %19 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IB_QP_STATE, align 4
  %22 = load i32, i32* @IB_QP_TIMEOUT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IB_QP_RETRY_CNT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @IB_QP_SQ_PSN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @IB_QP_RNR_RETRY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @IB_QP_MAX_QP_RD_ATOMIC, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @ib_modify_qp(i32 %20, %struct.ib_qp_attr* %3, i32 %31)
  ret i32 %32
}

declare dso_local i32 @memset(%struct.ib_qp_attr*, i32, i32) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
