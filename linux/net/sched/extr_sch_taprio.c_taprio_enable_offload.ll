; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_enable_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_enable_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)* }
%struct.net_device.0 = type opaque
%struct.tc_taprio_qopt_offload = type { i32 }
%struct.tc_mqprio_qopt = type { i32 }
%struct.taprio_sched = type { i32 }
%struct.sched_gate_list = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Device does not support taprio offload\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Not enough memory for enabling offload mode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_TAPRIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Device failed to setup taprio offload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.tc_mqprio_qopt*, %struct.taprio_sched*, %struct.sched_gate_list*, %struct.netlink_ext_ack*)* @taprio_enable_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_enable_offload(%struct.net_device* %0, %struct.tc_mqprio_qopt* %1, %struct.taprio_sched* %2, %struct.sched_gate_list* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.tc_mqprio_qopt*, align 8
  %9 = alloca %struct.taprio_sched*, align 8
  %10 = alloca %struct.sched_gate_list*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_device_ops*, align 8
  %13 = alloca %struct.tc_taprio_qopt_offload*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.tc_mqprio_qopt* %1, %struct.tc_mqprio_qopt** %8, align 8
  store %struct.taprio_sched* %2, %struct.taprio_sched** %9, align 8
  store %struct.sched_gate_list* %3, %struct.sched_gate_list** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.net_device_ops*, %struct.net_device_ops** %16, align 8
  store %struct.net_device_ops* %17, %struct.net_device_ops** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.net_device_ops*, %struct.net_device_ops** %12, align 8
  %19 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %18, i32 0, i32 0
  %20 = load i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)** %19, align 8
  %21 = icmp ne i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %24 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %65

27:                                               ; preds = %5
  %28 = load %struct.sched_gate_list*, %struct.sched_gate_list** %10, align 8
  %29 = getelementptr inbounds %struct.sched_gate_list, %struct.sched_gate_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.tc_taprio_qopt_offload* @taprio_offload_alloc(i32 %30)
  store %struct.tc_taprio_qopt_offload* %31, %struct.tc_taprio_qopt_offload** %13, align 8
  %32 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %13, align 8
  %33 = icmp ne %struct.tc_taprio_qopt_offload* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %36 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %65

39:                                               ; preds = %27
  %40 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %13, align 8
  %41 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load %struct.taprio_sched*, %struct.taprio_sched** %9, align 8
  %43 = load %struct.sched_gate_list*, %struct.sched_gate_list** %10, align 8
  %44 = load %struct.tc_mqprio_qopt*, %struct.tc_mqprio_qopt** %8, align 8
  %45 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %13, align 8
  %46 = call i32 @taprio_sched_to_offload(%struct.taprio_sched* %42, %struct.sched_gate_list* %43, %struct.tc_mqprio_qopt* %44, %struct.tc_taprio_qopt_offload* %45)
  %47 = load %struct.net_device_ops*, %struct.net_device_ops** %12, align 8
  %48 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %47, i32 0, i32 0
  %49 = load i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)** %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = bitcast %struct.net_device* %50 to %struct.net_device.0*
  %52 = load i32, i32* @TC_SETUP_QDISC_TAPRIO, align 4
  %53 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %13, align 8
  %54 = call i32 %49(%struct.net_device.0* %51, i32 %52, %struct.tc_taprio_qopt_offload* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %59 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %61

60:                                               ; preds = %39
  br label %61

61:                                               ; preds = %60, %57
  %62 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %13, align 8
  %63 = call i32 @taprio_offload_free(%struct.tc_taprio_qopt_offload* %62)
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %34, %22
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.tc_taprio_qopt_offload* @taprio_offload_alloc(i32) #1

declare dso_local i32 @taprio_sched_to_offload(%struct.taprio_sched*, %struct.sched_gate_list*, %struct.tc_mqprio_qopt*, %struct.tc_taprio_qopt_offload*) #1

declare dso_local i32 @taprio_offload_free(%struct.tc_taprio_qopt_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
