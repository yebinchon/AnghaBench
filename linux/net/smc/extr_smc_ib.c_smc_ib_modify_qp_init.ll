; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_modify_qp_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_ib.c_smc_ib_modify_qp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i64, i32 }

@IB_QPS_INIT = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@IB_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IB_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IB_QP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*)* @smc_ib_modify_qp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ib_modify_qp_init(%struct.smc_link* %0) #0 {
  %2 = alloca %struct.smc_link*, align 8
  %3 = alloca %struct.ib_qp_attr, align 8
  store %struct.smc_link* %0, %struct.smc_link** %2, align 8
  %4 = call i32 @memset(%struct.ib_qp_attr* %3, i32 0, i32 24)
  %5 = load i32, i32* @IB_QPS_INIT, align 4
  %6 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 3
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %9 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %13 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %17 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IB_QP_STATE, align 4
  %20 = load i32, i32* @IB_QP_PKEY_INDEX, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @IB_QP_ACCESS_FLAGS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IB_QP_PORT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @ib_modify_qp(i32 %18, %struct.ib_qp_attr* %3, i32 %25)
  ret i32 %26
}

declare dso_local i32 @memset(%struct.ib_qp_attr*, i32, i32) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
