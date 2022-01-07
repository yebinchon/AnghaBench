; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbs.c_cbs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cbs_sched_data = type { i32, i32, i32, i64, i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Missing CBS qdisc options  which are mandatory\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cbs_list_lock = common dso_local global i32 0, align 4
@cbs_list = common dso_local global i32 0, align 4
@cbs_enqueue_soft = common dso_local global i32 0, align 4
@cbs_dequeue_soft = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @cbs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.cbs_sched_data*, align 8
  %9 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %11 = call %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc* %10)
  store %struct.cbs_sched_data* %11, %struct.cbs_sched_data** %8, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %13 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %12)
  store %struct.net_device* %13, %struct.net_device** %9, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %18 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %29 = call i32 @qdisc_create_dflt(i64 %24, i32* @pfifo_qdisc_ops, i32 %27, %struct.netlink_ext_ack* %28)
  %30 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %31 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %33 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %71

39:                                               ; preds = %21
  %40 = call i32 @spin_lock(i32* @cbs_list_lock)
  %41 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %42 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %41, i32 0, i32 5
  %43 = call i32 @list_add(i32* %42, i32* @cbs_list)
  %44 = call i32 @spin_unlock(i32* @cbs_list_lock)
  %45 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %46 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @qdisc_hash_add(i32 %47, i32 0)
  %49 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %9, align 8
  %53 = call i64 @netdev_get_tx_queue(%struct.net_device* %52, i32 0)
  %54 = sub nsw i64 %51, %53
  %55 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %56 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @cbs_enqueue_soft, align 4
  %58 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %59 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @cbs_dequeue_soft, align 4
  %61 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %62 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.cbs_sched_data*, %struct.cbs_sched_data** %8, align 8
  %64 = getelementptr inbounds %struct.cbs_sched_data, %struct.cbs_sched_data* %63, i32 0, i32 0
  %65 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %66 = call i32 @qdisc_watchdog_init(i32* %64, %struct.Qdisc* %65)
  %67 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %69 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %70 = call i32 @cbs_change(%struct.Qdisc* %67, %struct.nlattr* %68, %struct.netlink_ext_ack* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %39, %36, %16
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.cbs_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @qdisc_create_dflt(i64, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qdisc_hash_add(i32, i32) #1

declare dso_local i64 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @cbs_change(%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
