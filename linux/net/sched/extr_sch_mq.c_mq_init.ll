; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_mq.c_mq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_device = type { i32 }
%struct.mq_sched = type { %struct.Qdisc** }
%struct.netdev_queue = type { i32 }

@TC_H_ROOT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TCQ_F_ONETXQUEUE = common dso_local global i32 0, align 4
@TCQ_F_NOPARENT = common dso_local global i32 0, align 4
@TCQ_F_MQROOT = common dso_local global i32 0, align 4
@TC_MQ_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @mq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mq_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.mq_sched*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %13)
  store %struct.net_device* %14, %struct.net_device** %8, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call %struct.mq_sched* @qdisc_priv(%struct.Qdisc* %15)
  store %struct.mq_sched* %16, %struct.mq_sched** %9, align 8
  %17 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TC_H_ROOT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %3
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call i32 @netif_is_multiqueue(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %104

32:                                               ; preds = %25
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.Qdisc** @kcalloc(i32 %35, i32 8, i32 %36)
  %38 = load %struct.mq_sched*, %struct.mq_sched** %9, align 8
  %39 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %38, i32 0, i32 0
  store %struct.Qdisc** %37, %struct.Qdisc*** %39, align 8
  %40 = load %struct.mq_sched*, %struct.mq_sched** %9, align 8
  %41 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %40, i32 0, i32 0
  %42 = load %struct.Qdisc**, %struct.Qdisc*** %41, align 8
  %43 = icmp ne %struct.Qdisc** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %104

47:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %92, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %95

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %55, i32 %56)
  store %struct.netdev_queue* %57, %struct.netdev_queue** %10, align 8
  %58 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @get_default_qdisc_ops(%struct.net_device* %59, i32 %60)
  %62 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @TC_H_MAJ(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  %68 = call i32 @TC_H_MIN(i32 %67)
  %69 = call i32 @TC_H_MAKE(i32 %65, i32 %68)
  %70 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %71 = call %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue* %58, i32 %61, i32 %69, %struct.netlink_ext_ack* %70)
  store %struct.Qdisc* %71, %struct.Qdisc** %11, align 8
  %72 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %73 = icmp ne %struct.Qdisc* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %54
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %104

77:                                               ; preds = %54
  %78 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %79 = load %struct.mq_sched*, %struct.mq_sched** %9, align 8
  %80 = getelementptr inbounds %struct.mq_sched, %struct.mq_sched* %79, i32 0, i32 0
  %81 = load %struct.Qdisc**, %struct.Qdisc*** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %81, i64 %83
  store %struct.Qdisc* %78, %struct.Qdisc** %84, align 8
  %85 = load i32, i32* @TCQ_F_ONETXQUEUE, align 4
  %86 = load i32, i32* @TCQ_F_NOPARENT, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %89 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %48

95:                                               ; preds = %48
  %96 = load i32, i32* @TCQ_F_MQROOT, align 4
  %97 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %98 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %102 = load i32, i32* @TC_MQ_CREATE, align 4
  %103 = call i32 @mq_offload(%struct.Qdisc* %101, i32 %102)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %95, %74, %44, %29, %22
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local %struct.mq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @netif_is_multiqueue(%struct.net_device*) #1

declare dso_local %struct.Qdisc** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @get_default_qdisc_ops(%struct.net_device*, i32) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local i32 @mq_offload(%struct.Qdisc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
