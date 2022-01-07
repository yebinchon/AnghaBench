; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_ingress.c_ingress_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_ingress.c_ingress_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ingress_sched_data = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.net_device = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i32 0, align 4
@clsact_chain_head_change = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @ingress_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingress_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.ingress_sched_data*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.ingress_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.ingress_sched_data* %10, %struct.ingress_sched_data** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %11)
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = call i32 (...) @net_inc_ingress_queue()
  %14 = load %struct.ingress_sched_data*, %struct.ingress_sched_data** %7, align 8
  %15 = getelementptr inbounds %struct.ingress_sched_data, %struct.ingress_sched_data* %14, i32 0, i32 2
  %16 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = call i32 @mini_qdisc_pair_init(i32* %15, %struct.Qdisc* %16, i32* %18)
  %20 = load i32, i32* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 4
  %21 = load %struct.ingress_sched_data*, %struct.ingress_sched_data** %7, align 8
  %22 = getelementptr inbounds %struct.ingress_sched_data, %struct.ingress_sched_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @clsact_chain_head_change, align 4
  %25 = load %struct.ingress_sched_data*, %struct.ingress_sched_data** %7, align 8
  %26 = getelementptr inbounds %struct.ingress_sched_data, %struct.ingress_sched_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 8
  %28 = load %struct.ingress_sched_data*, %struct.ingress_sched_data** %7, align 8
  %29 = getelementptr inbounds %struct.ingress_sched_data, %struct.ingress_sched_data* %28, i32 0, i32 2
  %30 = load %struct.ingress_sched_data*, %struct.ingress_sched_data** %7, align 8
  %31 = getelementptr inbounds %struct.ingress_sched_data, %struct.ingress_sched_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load %struct.ingress_sched_data*, %struct.ingress_sched_data** %7, align 8
  %34 = getelementptr inbounds %struct.ingress_sched_data, %struct.ingress_sched_data* %33, i32 0, i32 1
  %35 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %36 = load %struct.ingress_sched_data*, %struct.ingress_sched_data** %7, align 8
  %37 = getelementptr inbounds %struct.ingress_sched_data, %struct.ingress_sched_data* %36, i32 0, i32 0
  %38 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %39 = call i32 @tcf_block_get_ext(i32* %34, %struct.Qdisc* %35, %struct.TYPE_2__* %37, %struct.netlink_ext_ack* %38)
  ret i32 %39
}

declare dso_local %struct.ingress_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @net_inc_ingress_queue(...) #1

declare dso_local i32 @mini_qdisc_pair_init(i32*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @tcf_block_get_ext(i32*, %struct.Qdisc*, %struct.TYPE_2__*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
