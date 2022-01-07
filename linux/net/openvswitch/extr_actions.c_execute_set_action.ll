; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_execute_set_action.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_execute_set_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.nlattr = type { i32 }
%struct.ovs_tunnel_info = type { i64 }
%struct.dst_entry = type { i32 }

@OVS_KEY_ATTR_TUNNEL_INFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*)* @execute_set_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_set_action(%struct.sk_buff* %0, %struct.sw_flow_key* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sw_flow_key*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.ovs_tunnel_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %10 = call i64 @nla_type(%struct.nlattr* %9)
  %11 = load i64, i64* @OVS_KEY_ATTR_TUNNEL_INFO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %15 = call %struct.ovs_tunnel_info* @nla_data(%struct.nlattr* %14)
  store %struct.ovs_tunnel_info* %15, %struct.ovs_tunnel_info** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @skb_dst_drop(%struct.sk_buff* %16)
  %18 = load %struct.ovs_tunnel_info*, %struct.ovs_tunnel_info** %8, align 8
  %19 = getelementptr inbounds %struct.ovs_tunnel_info, %struct.ovs_tunnel_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dst_entry*
  %22 = call i32 @dst_hold(%struct.dst_entry* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.ovs_tunnel_info*, %struct.ovs_tunnel_info** %8, align 8
  %25 = getelementptr inbounds %struct.ovs_tunnel_info, %struct.ovs_tunnel_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.dst_entry*
  %28 = call i32 @skb_dst_set(%struct.sk_buff* %23, %struct.dst_entry* %27)
  store i32 0, i32* %4, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %29, %13
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @nla_type(%struct.nlattr*) #1

declare dso_local %struct.ovs_tunnel_info* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
