; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_enable_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_etf.c_etf_enable_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)* }
%struct.net_device.0 = type opaque
%struct.tc_etf_qopt_offload = type { i32, i32 }
%struct.etf_sched_data = type { i32, i64 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Specified device does not support ETF offload\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_ETF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Specified device failed to setup ETF hardware offload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.etf_sched_data*, %struct.netlink_ext_ack*)* @etf_enable_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etf_enable_offload(%struct.net_device* %0, %struct.etf_sched_data* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.etf_sched_data*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  %9 = alloca %struct.tc_etf_qopt_offload, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.etf_sched_data* %1, %struct.etf_sched_data** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.net_device_ops*, %struct.net_device_ops** %12, align 8
  store %struct.net_device_ops* %13, %struct.net_device_ops** %8, align 8
  %14 = bitcast %struct.tc_etf_qopt_offload* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %16 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

20:                                               ; preds = %3
  %21 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %22 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)** %22, align 8
  %24 = icmp ne i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %50

30:                                               ; preds = %20
  %31 = load %struct.etf_sched_data*, %struct.etf_sched_data** %6, align 8
  %32 = getelementptr inbounds %struct.etf_sched_data, %struct.etf_sched_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.tc_etf_qopt_offload, %struct.tc_etf_qopt_offload* %9, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %37 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_etf_qopt_offload*)** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = bitcast %struct.net_device* %39 to %struct.net_device.0*
  %41 = load i32, i32* @TC_SETUP_QDISC_ETF, align 4
  %42 = call i32 %38(%struct.net_device.0* %40, i32 %41, %struct.tc_etf_qopt_offload* %9)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %47 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %45, %25, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
