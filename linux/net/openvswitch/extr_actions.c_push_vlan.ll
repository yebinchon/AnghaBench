; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_push_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_push_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ovs_action_push_vlan = type { i32, i32 }

@VLAN_CFI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_push_vlan*)* @push_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_vlan(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.ovs_action_push_vlan* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca %struct.ovs_action_push_vlan*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %5, align 8
  store %struct.ovs_action_push_vlan* %2, %struct.ovs_action_push_vlan** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %12 = call i32 @invalidate_flow_key(%struct.sw_flow_key* %11)
  br label %28

13:                                               ; preds = %3
  %14 = load %struct.ovs_action_push_vlan*, %struct.ovs_action_push_vlan** %6, align 8
  %15 = getelementptr inbounds %struct.ovs_action_push_vlan, %struct.ovs_action_push_vlan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %18 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load %struct.ovs_action_push_vlan*, %struct.ovs_action_push_vlan** %6, align 8
  %22 = getelementptr inbounds %struct.ovs_action_push_vlan, %struct.ovs_action_push_vlan* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %25 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %13, %10
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.ovs_action_push_vlan*, %struct.ovs_action_push_vlan** %6, align 8
  %31 = getelementptr inbounds %struct.ovs_action_push_vlan, %struct.ovs_action_push_vlan* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ovs_action_push_vlan*, %struct.ovs_action_push_vlan** %6, align 8
  %34 = getelementptr inbounds %struct.ovs_action_push_vlan, %struct.ovs_action_push_vlan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = load i32, i32* @VLAN_CFI_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = call i32 @skb_vlan_push(%struct.sk_buff* %29, i32 %32, i32 %39)
  ret i32 %40
}

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @invalidate_flow_key(%struct.sw_flow_key*) #1

declare dso_local i32 @skb_vlan_push(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
