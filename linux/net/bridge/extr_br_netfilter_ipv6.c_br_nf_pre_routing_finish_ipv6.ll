; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_nf_pre_routing_finish_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_nf_pre_routing_finish_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.nf_bridge_info = type { i32, %struct.net_device*, i64, i32 }
%struct.rtable = type { i32 }
%struct.nf_ipv6_ops = type { i32 (%struct.sk_buff*)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device*, i64 }
%struct.TYPE_5__ = type { i32 }

@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@NF_BR_PRE_ROUTING = common dso_local global i32 0, align 4
@br_nf_pre_routing_finish_bridge = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@br_handle_frame_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @br_nf_pre_routing_finish_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_pre_routing_finish_ipv6(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nf_bridge_info*, align 8
  %9 = alloca %struct.rtable*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.nf_ipv6_ops*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %12)
  store %struct.nf_bridge_info* %13, %struct.nf_bridge_info** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %10, align 8
  %17 = call %struct.nf_ipv6_ops* (...) @nf_get_ipv6_ops()
  store %struct.nf_ipv6_ops* %17, %struct.nf_ipv6_ops** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.TYPE_6__* @IP6CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %23 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %25 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* @PACKET_OTHERHOST, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %33 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %36 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %39 = call i64 @br_nf_ipv6_daddr_was_changed(%struct.sk_buff* %37, %struct.nf_bridge_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %95

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i32 @skb_dst_drop(%struct.sk_buff* %42)
  %44 = load %struct.nf_ipv6_ops*, %struct.nf_ipv6_ops** %11, align 8
  %45 = getelementptr inbounds %struct.nf_ipv6_ops, %struct.nf_ipv6_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32 %46(%struct.sk_buff* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %50 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call i32 @kfree_skb(%struct.sk_buff* %55)
  store i32 0, i32* %4, align 4
  br label %129

57:                                               ; preds = %41
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.net_device*, %struct.net_device** %60, align 8
  %62 = load %struct.net_device*, %struct.net_device** %10, align 8
  %63 = icmp eq %struct.net_device* %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %57
  %65 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %66 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %65, i32 0, i32 1
  %67 = load %struct.net_device*, %struct.net_device** %66, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store %struct.net_device* %67, %struct.net_device** %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = call i32 @nf_bridge_update_protocol(%struct.sk_buff* %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %73 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %72)
  %74 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %75 = load %struct.net*, %struct.net** %5, align 8
  %76 = load %struct.sock*, %struct.sock** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load %struct.net_device*, %struct.net_device** %79, align 8
  %81 = load i32, i32* @br_nf_pre_routing_finish_bridge, align 4
  %82 = call i32 @br_nf_hook_thresh(i32 %74, %struct.net* %75, %struct.sock* %76, %struct.sk_buff* %77, %struct.net_device* %80, i32* null, i32 %81)
  store i32 0, i32* %4, align 4
  br label %129

83:                                               ; preds = %57
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = call %struct.TYPE_5__* @eth_hdr(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.net_device*, %struct.net_device** %10, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ether_addr_copy(i32 %87, i32 %90)
  %92 = load i32, i32* @PACKET_HOST, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  br label %110

95:                                               ; preds = %34
  %96 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %97 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %96, i32 0, i32 1
  %98 = load %struct.net_device*, %struct.net_device** %97, align 8
  %99 = call %struct.rtable* @bridge_parent_rtable(%struct.net_device* %98)
  store %struct.rtable* %99, %struct.rtable** %9, align 8
  %100 = load %struct.rtable*, %struct.rtable** %9, align 8
  %101 = icmp ne %struct.rtable* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  store i32 0, i32* %4, align 4
  br label %129

105:                                              ; preds = %95
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = load %struct.rtable*, %struct.rtable** %9, align 8
  %108 = getelementptr inbounds %struct.rtable, %struct.rtable* %107, i32 0, i32 0
  %109 = call i32 @skb_dst_set_noref(%struct.sk_buff* %106, i32* %108)
  br label %110

110:                                              ; preds = %105, %83
  %111 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %8, align 8
  %112 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %111, i32 0, i32 1
  %113 = load %struct.net_device*, %struct.net_device** %112, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  store %struct.net_device* %113, %struct.net_device** %115, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = call i32 @nf_bridge_update_protocol(%struct.sk_buff* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %118)
  %120 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %121 = load %struct.net*, %struct.net** %5, align 8
  %122 = load %struct.sock*, %struct.sock** %6, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load %struct.net_device*, %struct.net_device** %125, align 8
  %127 = load i32, i32* @br_handle_frame_finish, align 4
  %128 = call i32 @br_nf_hook_thresh(i32 %120, %struct.net* %121, %struct.sock* %122, %struct.sk_buff* %123, %struct.net_device* %126, i32* null, i32 %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %110, %102, %64, %54
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local %struct.nf_ipv6_ops* @nf_get_ipv6_ops(...) #1

declare dso_local %struct.TYPE_6__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i64 @br_nf_ipv6_daddr_was_changed(%struct.sk_buff*, %struct.nf_bridge_info*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_update_protocol(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @br_nf_hook_thresh(i32, %struct.net*, %struct.sock*, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local %struct.TYPE_5__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @bridge_parent_rtable(%struct.net_device*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
