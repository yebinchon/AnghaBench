; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_pre_routing_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.nf_bridge_info = type { i32, %struct.net_device*, i64, i32 }
%struct.rtable = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.in_device = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.TYPE_8__ = type { i32 }

@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@NF_BR_PRE_ROUTING = common dso_local global i32 0, align 4
@br_nf_pre_routing_finish_bridge = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@br_handle_frame_finish = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @br_nf_pre_routing_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_pre_routing_finish(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca %struct.nf_bridge_info*, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.in_device*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %17)
  store %struct.iphdr* %18, %struct.iphdr** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff* %19)
  store %struct.nf_bridge_info* %20, %struct.nf_bridge_info** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = call %struct.TYPE_9__* @IPCB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %26 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %28 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load i32, i32* @PACKET_OTHERHOST, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %36 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %31, %3
  %38 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %39 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %42 = call i64 @br_nf_ipv4_daddr_was_changed(%struct.sk_buff* %40, %struct.nf_bridge_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %145

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %47 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %50 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %53 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = call i32 @ip_route_input(%struct.sk_buff* %45, i32 %48, i32 %51, i32 %54, %struct.net_device* %55)
  store i32 %56, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %44
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = call %struct.in_device* @__in_dev_get_rcu(%struct.net_device* %59)
  store %struct.in_device* %60, %struct.in_device** %13, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @EHOSTUNREACH, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.in_device*, %struct.in_device** %13, align 8
  %67 = icmp ne %struct.in_device* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.in_device*, %struct.in_device** %13, align 8
  %70 = call i64 @IN_DEV_FORWARD(%struct.in_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %65, %58
  br label %102

73:                                               ; preds = %68
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %79 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @RT_TOS(i32 %80)
  %82 = call %struct.rtable* @ip_route_output(%struct.net* %74, i32 %77, i32 0, i32 %81, i32 0)
  store %struct.rtable* %82, %struct.rtable** %11, align 8
  %83 = load %struct.rtable*, %struct.rtable** %11, align 8
  %84 = call i32 @IS_ERR(%struct.rtable* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %73
  %87 = load %struct.rtable*, %struct.rtable** %11, align 8
  %88 = getelementptr inbounds %struct.rtable, %struct.rtable* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.net_device*, %struct.net_device** %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %8, align 8
  %92 = icmp eq %struct.net_device* %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = load %struct.rtable*, %struct.rtable** %11, align 8
  %96 = getelementptr inbounds %struct.rtable, %struct.rtable* %95, i32 0, i32 0
  %97 = call i32 @skb_dst_set(%struct.sk_buff* %94, %struct.TYPE_6__* %96)
  br label %113

98:                                               ; preds = %86
  %99 = load %struct.rtable*, %struct.rtable** %11, align 8
  %100 = call i32 @ip_rt_put(%struct.rtable* %99)
  br label %101

101:                                              ; preds = %98, %73
  br label %102

102:                                              ; preds = %101, %72
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  store i32 0, i32* %4, align 4
  br label %179

105:                                              ; preds = %44
  %106 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %107 = call %struct.TYPE_7__* @skb_dst(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.net_device*, %struct.net_device** %108, align 8
  %110 = load %struct.net_device*, %struct.net_device** %8, align 8
  %111 = icmp eq %struct.net_device* %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %112, %93
  %114 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %115 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %114, i32 0, i32 1
  %116 = load %struct.net_device*, %struct.net_device** %115, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  store %struct.net_device* %116, %struct.net_device** %118, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %120 = call i32 @nf_bridge_update_protocol(%struct.sk_buff* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %121)
  %123 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %124 = load %struct.net*, %struct.net** %5, align 8
  %125 = load %struct.sock*, %struct.sock** %6, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load %struct.net_device*, %struct.net_device** %128, align 8
  %130 = load i32, i32* @br_nf_pre_routing_finish_bridge, align 4
  %131 = call i32 @br_nf_hook_thresh(i32 %123, %struct.net* %124, %struct.sock* %125, %struct.sk_buff* %126, %struct.net_device* %129, i32* null, i32 %130)
  store i32 0, i32* %4, align 4
  br label %179

132:                                              ; preds = %105
  %133 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %134 = call %struct.TYPE_8__* @eth_hdr(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.net_device*, %struct.net_device** %8, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @ether_addr_copy(i32 %136, i32 %139)
  %141 = load i32, i32* @PACKET_HOST, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  br label %144

144:                                              ; preds = %132
  br label %160

145:                                              ; preds = %37
  %146 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %147 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %146, i32 0, i32 1
  %148 = load %struct.net_device*, %struct.net_device** %147, align 8
  %149 = call %struct.rtable* @bridge_parent_rtable(%struct.net_device* %148)
  store %struct.rtable* %149, %struct.rtable** %11, align 8
  %150 = load %struct.rtable*, %struct.rtable** %11, align 8
  %151 = icmp ne %struct.rtable* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %145
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %154 = call i32 @kfree_skb(%struct.sk_buff* %153)
  store i32 0, i32* %4, align 4
  br label %179

155:                                              ; preds = %145
  %156 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %157 = load %struct.rtable*, %struct.rtable** %11, align 8
  %158 = getelementptr inbounds %struct.rtable, %struct.rtable* %157, i32 0, i32 0
  %159 = call i32 @skb_dst_set_noref(%struct.sk_buff* %156, %struct.TYPE_6__* %158)
  br label %160

160:                                              ; preds = %155, %144
  %161 = load %struct.nf_bridge_info*, %struct.nf_bridge_info** %10, align 8
  %162 = getelementptr inbounds %struct.nf_bridge_info, %struct.nf_bridge_info* %161, i32 0, i32 1
  %163 = load %struct.net_device*, %struct.net_device** %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 0
  store %struct.net_device* %163, %struct.net_device** %165, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = call i32 @nf_bridge_update_protocol(%struct.sk_buff* %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %169 = call i32 @nf_bridge_push_encap_header(%struct.sk_buff* %168)
  %170 = load i32, i32* @NF_BR_PRE_ROUTING, align 4
  %171 = load %struct.net*, %struct.net** %5, align 8
  %172 = load %struct.sock*, %struct.sock** %6, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load %struct.net_device*, %struct.net_device** %175, align 8
  %177 = load i32, i32* @br_handle_frame_finish, align 4
  %178 = call i32 @br_nf_hook_thresh(i32 %170, %struct.net* %171, %struct.sock* %172, %struct.sk_buff* %173, %struct.net_device* %176, i32* null, i32 %177)
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %160, %152, %113, %102
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.nf_bridge_info* @nf_bridge_info_get(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_9__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @br_nf_ipv4_daddr_was_changed(%struct.sk_buff*, %struct.nf_bridge_info*) #1

declare dso_local i32 @ip_route_input(%struct.sk_buff*, i32, i32, i32, %struct.net_device*) #1

declare dso_local %struct.in_device* @__in_dev_get_rcu(%struct.net_device*) #1

declare dso_local i64 @IN_DEV_FORWARD(%struct.in_device*) #1

declare dso_local %struct.rtable* @ip_route_output(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_6__*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_7__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_update_protocol(%struct.sk_buff*) #1

declare dso_local i32 @nf_bridge_push_encap_header(%struct.sk_buff*) #1

declare dso_local i32 @br_nf_hook_thresh(i32, %struct.net*, %struct.sock*, %struct.sk_buff*, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local %struct.TYPE_8__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.rtable* @bridge_parent_rtable(%struct.net_device*) #1

declare dso_local i32 @skb_dst_set_noref(%struct.sk_buff*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
