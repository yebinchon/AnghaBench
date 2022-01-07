; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_modify_qp_rtr.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_modify_qp_rtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_AV = common dso_local global i32 0, align 4
@IB_QP_PATH_MTU = common dso_local global i32 0, align 4
@IB_QP_DEST_QPN = common dso_local global i32 0, align 4
@IB_QP_RQ_PSN = common dso_local global i32 0, align 4
@IB_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IB_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IB_QPS_RTR = common dso_local global i32 0, align 4
@RDMA_AH_ATTR_TYPE_ROCE = common dso_local global i32 0, align 4
@SMC_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*)* @smc_ib_modify_qp_rtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ib_modify_qp_rtr(%struct.smc_link* %0) #0 {
  %2 = alloca %struct.smc_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_qp_attr, align 4
  store %struct.smc_link* %0, %struct.smc_link** %2, align 8
  %5 = load i32, i32* @IB_QP_STATE, align 4
  %6 = load i32, i32* @IB_QP_AV, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IB_QP_PATH_MTU, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IB_QP_DEST_QPN, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IB_QP_RQ_PSN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IB_QP_MAX_DEST_RD_ATOMIC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IB_QP_MIN_RNR_TIMER, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  %18 = call i32 @memset(%struct.ib_qp_attr* %4, i32 0, i32 32)
  %19 = load i32, i32* @IB_QPS_RTR, align 4
  %20 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %22 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %25 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @min(i32 %23, i32 %26)
  %28 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 5
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @RDMA_AH_ATTR_TYPE_ROCE, align 4
  %30 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 4
  %33 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %34 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rdma_ah_set_port_num(%struct.TYPE_6__* %32, i32 %35)
  %37 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 4
  %38 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %39 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rdma_ah_set_grh(%struct.TYPE_6__* %37, i32* null, i32 0, i32 %40, i32 1, i32 0)
  %42 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 4
  %43 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %44 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rdma_ah_set_dgid_raw(%struct.TYPE_6__* %42, i32 %45)
  %47 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %51 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32* %49, i32 %52, i32 4)
  %54 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %55 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %59 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 2
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load i32, i32* @SMC_QP_MIN_RNR_TIMER, align 4
  %64 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %4, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %66 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @ib_modify_qp(i32 %67, %struct.ib_qp_attr* %4, i32 %68)
  ret i32 %69
}

declare dso_local i32 @memset(%struct.ib_qp_attr*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rdma_ah_set_port_num(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @rdma_ah_set_grh(%struct.TYPE_6__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @rdma_ah_set_dgid_raw(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
