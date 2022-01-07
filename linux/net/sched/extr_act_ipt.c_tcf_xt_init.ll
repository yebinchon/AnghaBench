; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_xt_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_xt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_action = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@xt_net_id = common dso_local global i32 0, align 4
@act_xt_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32, i32, i32, %struct.tcf_proto*, %struct.netlink_ext_ack*)* @tcf_xt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_xt_init(%struct.net* %0, %struct.nlattr* %1, %struct.nlattr* %2, %struct.tc_action** %3, i32 %4, i32 %5, i32 %6, %struct.tcf_proto* %7, %struct.netlink_ext_ack* %8) #0 {
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.tc_action**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tcf_proto*, align 8
  %18 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.nlattr* %1, %struct.nlattr** %11, align 8
  store %struct.nlattr* %2, %struct.nlattr** %12, align 8
  store %struct.tc_action** %3, %struct.tc_action*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.tcf_proto* %7, %struct.tcf_proto** %17, align 8
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %18, align 8
  %19 = load %struct.net*, %struct.net** %10, align 8
  %20 = load i32, i32* @xt_net_id, align 4
  %21 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %23 = load %struct.tc_action**, %struct.tc_action*** %13, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %17, align 8
  %27 = call i32 @__tcf_ipt_init(%struct.net* %19, i32 %20, %struct.nlattr* %21, %struct.nlattr* %22, %struct.tc_action** %23, i32* @act_xt_ops, i32 %24, i32 %25, %struct.tcf_proto* %26)
  ret i32 %27
}

declare dso_local i32 @__tcf_ipt_init(%struct.net*, i32, %struct.nlattr*, %struct.nlattr*, %struct.tc_action**, i32*, i32, i32, %struct.tcf_proto*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
