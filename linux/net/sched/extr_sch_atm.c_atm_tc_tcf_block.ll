; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_tcf_block.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_atm.c_atm_tc_tcf_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.Qdisc = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.atm_qdisc_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tcf_block* }
%struct.atm_flow_data = type { %struct.tcf_block* }

@.str = private unnamed_addr constant [44 x i8] c"atm_tc_find_tcf(sch %p,[qdisc %p],flow %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.Qdisc*, i64, %struct.netlink_ext_ack*)* @atm_tc_tcf_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @atm_tc_tcf_block(%struct.Qdisc* %0, i64 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.atm_qdisc_data*, align 8
  %8 = alloca %struct.atm_flow_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.atm_qdisc_data* %10, %struct.atm_qdisc_data** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.atm_flow_data*
  store %struct.atm_flow_data* %12, %struct.atm_flow_data** %8, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %7, align 8
  %15 = load %struct.atm_flow_data*, %struct.atm_flow_data** %8, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %13, %struct.atm_qdisc_data* %14, %struct.atm_flow_data* %15)
  %17 = load %struct.atm_flow_data*, %struct.atm_flow_data** %8, align 8
  %18 = icmp ne %struct.atm_flow_data* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.atm_flow_data*, %struct.atm_flow_data** %8, align 8
  %21 = getelementptr inbounds %struct.atm_flow_data, %struct.atm_flow_data* %20, i32 0, i32 0
  %22 = load %struct.tcf_block*, %struct.tcf_block** %21, align 8
  br label %28

23:                                               ; preds = %3
  %24 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %7, align 8
  %25 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.tcf_block*, %struct.tcf_block** %26, align 8
  br label %28

28:                                               ; preds = %23, %19
  %29 = phi %struct.tcf_block* [ %22, %19 ], [ %27, %23 ]
  ret %struct.tcf_block* %29
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, %struct.Qdisc*, %struct.atm_qdisc_data*, %struct.atm_flow_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
