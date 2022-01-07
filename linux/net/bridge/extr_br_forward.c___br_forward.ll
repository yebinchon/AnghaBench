; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c___br_forward.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_forward.c___br_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_bridge_vlan_group = type { i32 }
%struct.net = type { i32 }

@NF_BR_FORWARD = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NF_BR_LOCAL_OUT = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@br_forward_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*, %struct.sk_buff*, i32)* @__br_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__br_forward(%struct.net_bridge_port* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_bridge_vlan_group*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %12 = call %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port* %11)
  store %struct.net_bridge_vlan_group* %12, %struct.net_bridge_vlan_group** %7, align 8
  %13 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %14 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %17 = load %struct.net_bridge_vlan_group*, %struct.net_bridge_vlan_group** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.sk_buff* @br_handle_vlan(%struct.TYPE_2__* %15, %struct.net_bridge_port* %16, %struct.net_bridge_vlan_group* %17, %struct.sk_buff* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %91

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load %struct.net_device*, %struct.net_device** %25, align 8
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %28 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %27, i32 0, i32 1
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  store %struct.net_device* %29, %struct.net_device** %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = call i64 @skb_warn_if_lro(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  br label %91

41:                                               ; preds = %34
  %42 = load i32, i32* @NF_BR_FORWARD, align 4
  store i32 %42, i32* %10, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call i32 @skb_forward_csum(%struct.sk_buff* %43)
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = call %struct.net* @dev_net(%struct.net_device* %45)
  store %struct.net* %46, %struct.net** %9, align 8
  br label %80

47:                                               ; preds = %23
  %48 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %49 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netpoll_tx_running(i32 %52)
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %47
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* @ETH_HLEN, align 4
  %59 = call i32 @skb_push(%struct.sk_buff* %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load %struct.net_device*, %struct.net_device** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = call i32 @is_skb_forwardable(%struct.net_device* %62, %struct.sk_buff* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  br label %73

69:                                               ; preds = %56
  %70 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @br_netpoll_send_skb(%struct.net_bridge_port* %70, %struct.sk_buff* %71)
  br label %73

73:                                               ; preds = %69, %66
  br label %91

74:                                               ; preds = %47
  %75 = load i32, i32* @NF_BR_LOCAL_OUT, align 4
  store i32 %75, i32* %10, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load %struct.net_device*, %struct.net_device** %77, align 8
  %79 = call %struct.net* @dev_net(%struct.net_device* %78)
  store %struct.net* %79, %struct.net** %9, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  br label %80

80:                                               ; preds = %74, %41
  %81 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.net*, %struct.net** %9, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = load %struct.net_device*, %struct.net_device** %8, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load %struct.net_device*, %struct.net_device** %87, align 8
  %89 = load i32, i32* @br_forward_finish, align 4
  %90 = call i32 @NF_HOOK(i32 %81, i32 %82, %struct.net* %83, i32* null, %struct.sk_buff* %84, %struct.net_device* %85, %struct.net_device* %88, i32 %89)
  br label %91

91:                                               ; preds = %80, %73, %38, %22
  ret void
}

declare dso_local %struct.net_bridge_vlan_group* @nbp_vlan_group_rcu(%struct.net_bridge_port*) #1

declare dso_local %struct.sk_buff* @br_handle_vlan(%struct.TYPE_2__*, %struct.net_bridge_port*, %struct.net_bridge_vlan_group*, %struct.sk_buff*) #1

declare dso_local i64 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netpoll_tx_running(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @is_skb_forwardable(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @br_netpoll_send_skb(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, i32*, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
