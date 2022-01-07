; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_disable_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_disable_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)* }
%struct.net_device.0 = type opaque
%struct.tc_taprio_qopt_offload = type { i64 }
%struct.taprio_sched = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Not enough memory to disable offload mode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_TAPRIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Device failed to disable offload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.taprio_sched*, %struct.netlink_ext_ack*)* @taprio_disable_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_disable_offload(%struct.net_device* %0, %struct.taprio_sched* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.taprio_sched*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  %9 = alloca %struct.tc_taprio_qopt_offload*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.taprio_sched* %1, %struct.taprio_sched** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.net_device_ops*, %struct.net_device_ops** %12, align 8
  store %struct.net_device_ops* %13, %struct.net_device_ops** %8, align 8
  %14 = load %struct.taprio_sched*, %struct.taprio_sched** %6, align 8
  %15 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FULL_OFFLOAD_IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %22 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)** %22, align 8
  %24 = icmp ne i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %20
  %29 = call %struct.tc_taprio_qopt_offload* @taprio_offload_alloc(i32 0)
  store %struct.tc_taprio_qopt_offload* %29, %struct.tc_taprio_qopt_offload** %9, align 8
  %30 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %31 = icmp ne %struct.tc_taprio_qopt_offload* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %34 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %39 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %41 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)*, i32 (%struct.net_device.0*, i32, %struct.tc_taprio_qopt_offload*)** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = bitcast %struct.net_device* %43 to %struct.net_device.0*
  %45 = load i32, i32* @TC_SETUP_QDISC_TAPRIO, align 4
  %46 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %47 = call i32 %42(%struct.net_device.0* %44, i32 %45, %struct.tc_taprio_qopt_offload* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %52 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %54

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %50
  %55 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %56 = call i32 @taprio_offload_free(%struct.tc_taprio_qopt_offload* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %32, %25, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @FULL_OFFLOAD_IS_ENABLED(i32) #1

declare dso_local %struct.tc_taprio_qopt_offload* @taprio_offload_alloc(i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @taprio_offload_free(%struct.tc_taprio_qopt_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
