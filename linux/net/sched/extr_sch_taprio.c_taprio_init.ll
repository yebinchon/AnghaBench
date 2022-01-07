; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_taprio.c_taprio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.taprio_sched = type { i32, %struct.Qdisc**, i32, %struct.Qdisc*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@CLOCK_TAI = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@advance_sched = common dso_local global i32 0, align 4
@taprio_dequeue_soft = common dso_local global i32 0, align 4
@taprio_peek_soft = common dso_local global i32 0, align 4
@taprio_list_lock = common dso_local global i32 0, align 4
@taprio_list = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @taprio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @taprio_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.taprio_sched*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = call %struct.taprio_sched* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.taprio_sched* %14, %struct.taprio_sched** %8, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %15)
  store %struct.net_device* %16, %struct.net_device** %9, align 8
  %17 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %18 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %17, i32 0, i32 7
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %21 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %20, i32 0, i32 6
  %22 = load i32, i32* @CLOCK_TAI, align 4
  %23 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %24 = call i32 @hrtimer_init(%struct.TYPE_2__* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @advance_sched, align 4
  %26 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %27 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32, i32* @taprio_dequeue_soft, align 4
  %30 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %31 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @taprio_peek_soft, align 4
  %33 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %34 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %36 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %37 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %36, i32 0, i32 3
  store %struct.Qdisc* %35, %struct.Qdisc** %37, align 8
  %38 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %39 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 8
  %40 = call i32 @spin_lock(i32* @taprio_list_lock)
  %41 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %42 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %41, i32 0, i32 2
  %43 = call i32 @list_add(i32* %42, i32* @taprio_list)
  %44 = call i32 @spin_unlock(i32* @taprio_list_lock)
  %45 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %46 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TC_H_ROOT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %133

53:                                               ; preds = %3
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  %55 = call i32 @netif_is_multiqueue(%struct.net_device* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %133

60:                                               ; preds = %53
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.Qdisc** @kcalloc(i32 %63, i32 8, i32 %64)
  %66 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %67 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %66, i32 0, i32 1
  store %struct.Qdisc** %65, %struct.Qdisc*** %67, align 8
  %68 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %69 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %68, i32 0, i32 1
  %70 = load %struct.Qdisc**, %struct.Qdisc*** %69, align 8
  %71 = icmp ne %struct.Qdisc** %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %133

75:                                               ; preds = %60
  %76 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %77 = icmp ne %struct.nlattr* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %133

81:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %125, %81
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.net_device*, %struct.net_device** %9, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %128

88:                                               ; preds = %82
  %89 = load %struct.net_device*, %struct.net_device** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %89, i32 %90)
  store %struct.netdev_queue* %91, %struct.netdev_queue** %11, align 8
  %92 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %93 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %94 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @TC_H_MAJ(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @TC_H_MIN(i32 %98)
  %100 = call i32 @TC_H_MAKE(i32 %96, i32 %99)
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %102 = call %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue* %92, i32* @pfifo_qdisc_ops, i32 %100, %struct.netlink_ext_ack* %101)
  store %struct.Qdisc* %102, %struct.Qdisc** %12, align 8
  %103 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %104 = icmp ne %struct.Qdisc* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %88
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %133

108:                                              ; preds = %88
  %109 = load i32, i32* %10, align 4
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %116 = call i32 @qdisc_hash_add(%struct.Qdisc* %115, i32 0)
  br label %117

117:                                              ; preds = %114, %108
  %118 = load %struct.Qdisc*, %struct.Qdisc** %12, align 8
  %119 = load %struct.taprio_sched*, %struct.taprio_sched** %8, align 8
  %120 = getelementptr inbounds %struct.taprio_sched, %struct.taprio_sched* %119, i32 0, i32 1
  %121 = load %struct.Qdisc**, %struct.Qdisc*** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.Qdisc*, %struct.Qdisc** %121, i64 %123
  store %struct.Qdisc* %118, %struct.Qdisc** %124, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %82

128:                                              ; preds = %82
  %129 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %130 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %131 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %132 = call i32 @taprio_change(%struct.Qdisc* %129, %struct.nlattr* %130, %struct.netlink_ext_ack* %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %128, %105, %78, %72, %57, %50
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.taprio_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @netif_is_multiqueue(%struct.net_device*) #1

declare dso_local %struct.Qdisc** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(%struct.netdev_queue*, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @TC_H_MIN(i32) #1

declare dso_local i32 @qdisc_hash_add(%struct.Qdisc*, i32) #1

declare dso_local i32 @taprio_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
