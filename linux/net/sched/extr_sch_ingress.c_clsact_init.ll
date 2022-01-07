; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_ingress.c_clsact_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_ingress.c_clsact_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.clsact_sched_data = type { %struct.TYPE_2__, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, i8*, i32 }
%struct.net_device = type { i32, i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i32 0, align 4
@clsact_chain_head_change = common dso_local global i8* null, align 8
@FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*, %struct.netlink_ext_ack*)* @clsact_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clsact_init(%struct.Qdisc* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.clsact_sched_data*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = call %struct.clsact_sched_data* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.clsact_sched_data* %12, %struct.clsact_sched_data** %8, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = call %struct.net_device* @qdisc_dev(%struct.Qdisc* %13)
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  %15 = call i32 (...) @net_inc_ingress_queue()
  %16 = call i32 (...) @net_inc_egress_queue()
  %17 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %18 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %17, i32 0, i32 5
  %19 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = call i32 @mini_qdisc_pair_init(i32* %18, %struct.Qdisc* %19, i32* %21)
  %23 = load i32, i32* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 4
  %24 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %25 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load i8*, i8** @clsact_chain_head_change, align 8
  %28 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %29 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8* %27, i8** %30, align 8
  %31 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %32 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %31, i32 0, i32 5
  %33 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %34 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* %32, i32** %35, align 8
  %36 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %37 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %36, i32 0, i32 4
  %38 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %39 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %40 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %39, i32 0, i32 3
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %42 = call i32 @tcf_block_get_ext(i32* %37, %struct.Qdisc* %38, %struct.TYPE_2__* %40, %struct.netlink_ext_ack* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %74

47:                                               ; preds = %3
  %48 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %49 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %48, i32 0, i32 2
  %50 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = call i32 @mini_qdisc_pair_init(i32* %49, %struct.Qdisc* %50, i32* %52)
  %54 = load i32, i32* @FLOW_BLOCK_BINDER_TYPE_CLSACT_EGRESS, align 4
  %55 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %56 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i8*, i8** @clsact_chain_head_change, align 8
  %59 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %60 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %63 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %62, i32 0, i32 2
  %64 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %65 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32* %63, i32** %66, align 8
  %67 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %68 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %67, i32 0, i32 1
  %69 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %70 = load %struct.clsact_sched_data*, %struct.clsact_sched_data** %8, align 8
  %71 = getelementptr inbounds %struct.clsact_sched_data, %struct.clsact_sched_data* %70, i32 0, i32 0
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %73 = call i32 @tcf_block_get_ext(i32* %68, %struct.Qdisc* %69, %struct.TYPE_2__* %71, %struct.netlink_ext_ack* %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %47, %45
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.clsact_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.net_device* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @net_inc_ingress_queue(...) #1

declare dso_local i32 @net_inc_egress_queue(...) #1

declare dso_local i32 @mini_qdisc_pair_init(i32*, %struct.Qdisc*, i32*) #1

declare dso_local i32 @tcf_block_get_ext(i32*, %struct.Qdisc*, %struct.TYPE_2__*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
