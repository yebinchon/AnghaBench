; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_enable_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_enable_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)* }
%struct.net_device.0 = type opaque
%struct.tc_cbs_qopt_offload = type { i32, i32, i32, i32, i32, i32 }
%struct.cbs_sched_data = type { i32, i32, i32 }
%struct.tc_cbs_qopt = type { i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Specified device does not support cbs offload\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_CBS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Specified device failed to setup cbs hardware offload\00", align 1
@cbs_enqueue_offload = common dso_local global i32 0, align 4
@cbs_dequeue_offload = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.cbs_sched_data*, %struct.tc_cbs_qopt*, %struct.netlink_ext_ack*)* @cbs_enable_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_enable_offload(%struct.net_device* %0, %struct.cbs_sched_data* %1, %struct.tc_cbs_qopt* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cbs_sched_data*, align 8
  %8 = alloca %struct.tc_cbs_qopt*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.net_device_ops*, align 8
  %11 = alloca %struct.tc_cbs_qopt_offload, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.cbs_sched_data* %1, %struct.cbs_sched_data** %7, align 8
  store %struct.tc_cbs_qopt* %2, %struct.tc_cbs_qopt** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %14, align 8
  store %struct.net_device_ops* %15, %struct.net_device_ops** %10, align 8
  %16 = bitcast %struct.tc_cbs_qopt_offload* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 24, i1 false)
  %17 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %18 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)** %18, align 8
  %20 = icmp ne i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %23 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %68

26:                                               ; preds = %4
  %27 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %7, align 8
  %28 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %11, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %11, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.tc_cbs_qopt*, %struct.tc_cbs_qopt** %8, align 8
  %33 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %11, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load %struct.tc_cbs_qopt*, %struct.tc_cbs_qopt** %8, align 8
  %37 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %11, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load %struct.tc_cbs_qopt*, %struct.tc_cbs_qopt** %8, align 8
  %41 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %11, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  %44 = load %struct.tc_cbs_qopt*, %struct.tc_cbs_qopt** %8, align 8
  %45 = getelementptr inbounds %struct.tc_cbs_qopt, %struct.tc_cbs_qopt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.tc_cbs_qopt_offload, %struct.tc_cbs_qopt_offload* %11, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %49 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %48, i32 0, i32 0
  %50 = load i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_cbs_qopt_offload*)** %49, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = bitcast %struct.net_device* %51 to %struct.net_device.0*
  %53 = load i32, i32* @TC_SETUP_QDISC_CBS, align 4
  %54 = call i32 %50(%struct.net_device.0* %52, i32 %53, %struct.tc_cbs_qopt_offload* %11)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %26
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %26
  %62 = load i32, i32* @cbs_enqueue_offload, align 4
  %63 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %7, align 8
  %64 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @cbs_dequeue_offload, align 4
  %66 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %7, align 8
  %67 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %57, %21
  %69 = load i32, i32* %5, align 4
  ret i32 %69
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
