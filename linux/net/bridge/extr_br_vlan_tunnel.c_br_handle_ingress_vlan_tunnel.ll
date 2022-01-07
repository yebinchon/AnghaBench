; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_br_handle_ingress_vlan_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_vlan_tunnel.c_br_handle_ingress_vlan_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_bridge_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_bridge_vlan_group = type { i32 }
%struct.ip_tunnel_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_bridge_vlan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_handle_ingress_vlan_tunnel(%struct.sk_buff* %0, %struct.net_bridge_port* %1, %struct.net_bridge_vlan_group* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.net_bridge_vlan_group*, align 8
  %8 = alloca %struct.ip_tunnel_info*, align 8
  %9 = alloca %struct.net_bridge_vlan*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %6, align 8
  store %struct.net_bridge_vlan_group* %2, %struct.net_bridge_vlan_group** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %10)
  store %struct.ip_tunnel_info* %11, %struct.ip_tunnel_info** %8, align 8
  %12 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %7, align 8
  %13 = icmp ne %struct.net_bridge_vlan_group* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %16 = icmp ne %struct.ip_tunnel_info* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %47

18:                                               ; preds = %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i64 @skb_vlan_tagged(%struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %47

23:                                               ; preds = %18
  %24 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %7, align 8
  %25 = getelementptr inbounds %struct.net_bridge_vlan_group, %struct.net_bridge_vlan_group* %24, i32 0, i32 0
  %26 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %8, align 8
  %27 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.net_bridge_vlan* @br_vlan_tunnel_lookup(i32* %25, i32 %29)
  store %struct.net_bridge_vlan* %30, %struct.net_bridge_vlan** %9, align 8
  %31 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %32 = icmp ne %struct.net_bridge_vlan* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %47

34:                                               ; preds = %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i32 @skb_dst_drop(%struct.sk_buff* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %39 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.net_bridge_vlan*, %struct.net_bridge_vlan** %9, align 8
  %44 = getelementptr inbounds %struct.net_bridge_vlan, %struct.net_bridge_vlan* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %37, i32 %42, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %34, %33, %22, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tagged(%struct.sk_buff*) #1

declare dso_local %struct.net_bridge_vlan* @br_vlan_tunnel_lookup(i32*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
