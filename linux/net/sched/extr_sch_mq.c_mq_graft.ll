; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_graft.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.tc_mq_qopt_offload = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@TCQ_F_ONETXQUEUE = common dso_local global i32 0, align 4
@TCQ_F_NOPARENT = common dso_local global i32 0, align 4
@TC_MQ_GRAFT = common dso_local global i32 0, align 4
@TC_SETUP_QDISC_MQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**, %struct.netlink_ext_ack*)* @mq_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca %struct.tc_mq_qopt_offload, align 8
  %13 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call %struct.netdev_queue* @mq_queue_get(%struct.Qdisc* %14, i64 %15)
  store %struct.netdev_queue* %16, %struct.netdev_queue** %11, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %18 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %17)
  store %struct.net_device* %18, %struct.net_device** %13, align 8
  %19 = load %struct.net_device*, %struct.net_device** %13, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.net_device*, %struct.net_device** %13, align 8
  %27 = call i32 @dev_deactivate(%struct.net_device* %26)
  br label %28

28:                                               ; preds = %25, %5
  %29 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %31 = call %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue* %29, %struct.Qdisc* %30)
  %32 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %31, %struct.Qdisc** %32, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %34 = icmp ne %struct.Qdisc* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i32, i32* @TCQ_F_ONETXQUEUE, align 4
  %37 = load i32, i32* @TCQ_F_NOPARENT, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %40 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35, %28
  %44 = load %struct.net_device*, %struct.net_device** %13, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IFF_UP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.net_device*, %struct.net_device** %13, align 8
  %52 = call i32 @dev_activate(%struct.net_device* %51)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %55 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.tc_mq_qopt_offload, %struct.tc_mq_qopt_offload* %12, i32 0, i32 2
  store i32 %56, i32* %57, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %58, 1
  %60 = getelementptr inbounds %struct.tc_mq_qopt_offload, %struct.tc_mq_qopt_offload* %12, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %63 = icmp ne %struct.Qdisc* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  br label %69

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32 [ %67, %64 ], [ 0, %68 ]
  %71 = getelementptr inbounds %struct.tc_mq_qopt_offload, %struct.tc_mq_qopt_offload* %12, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @TC_MQ_GRAFT, align 4
  %74 = getelementptr inbounds %struct.tc_mq_qopt_offload, %struct.tc_mq_qopt_offload* %12, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %76 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %75)
  %77 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %78 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %79 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %80 = load %struct.Qdisc*, %struct.Qdisc** %79, align 8
  %81 = load i32, i32* @TC_SETUP_QDISC_MQ, align 4
  %82 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %83 = call i32 @qdisc_offload_graft_helper(%struct.net_device* %76, %struct.Qdisc* %77, %struct.Qdisc* %78, %struct.Qdisc* %80, i32 %81, %struct.tc_mq_qopt_offload* %12, %struct.netlink_ext_ack* %82)
  ret i32 0
}

declare dso_local %struct.netdev_queue* @mq_queue_get(%struct.Qdisc*, i64) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @dev_deactivate(%struct.net_device*) #1

declare dso_local %struct.Qdisc* @dev_graft_qdisc(%struct.netdev_queue*, %struct.Qdisc*) #1

declare dso_local i32 @dev_activate(%struct.net_device*) #1

declare dso_local i32 @qdisc_offload_graft_helper(%struct.net_device*, %struct.Qdisc*, %struct.Qdisc*, %struct.Qdisc*, i32, %struct.tc_mq_qopt_offload*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
