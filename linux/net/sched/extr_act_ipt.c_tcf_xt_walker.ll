; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_xt_walker.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ipt.c_tcf_xt_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.tc_action_ops = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.tc_action_net = type { i32 }

@xt_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.netlink_callback*, i32, %struct.tc_action_ops*, %struct.netlink_ext_ack*)* @tcf_xt_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_xt_walker(%struct.net* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2, i32 %3, %struct.tc_action_ops* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.netlink_callback*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tc_action_ops*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca %struct.tc_action_net*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.tc_action_ops* %4, %struct.tc_action_ops** %11, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %12, align 8
  %14 = load %struct.net*, %struct.net** %7, align 8
  %15 = load i32, i32* @xt_net_id, align 4
  %16 = call %struct.tc_action_net* @net_generic(%struct.net* %14, i32 %15)
  store %struct.tc_action_net* %16, %struct.tc_action_net** %13, align 8
  %17 = load %struct.tc_action_net*, %struct.tc_action_net** %13, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.tc_action_ops*, %struct.tc_action_ops** %11, align 8
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  %23 = call i32 @tcf_generic_walker(%struct.tc_action_net* %17, %struct.sk_buff* %18, %struct.netlink_callback* %19, i32 %20, %struct.tc_action_ops* %21, %struct.netlink_ext_ack* %22)
  ret i32 %23
}

declare dso_local %struct.tc_action_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @tcf_generic_walker(%struct.tc_action_net*, %struct.sk_buff*, %struct.netlink_callback*, i32, %struct.tc_action_ops*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
