; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_device.c_br_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_device.c_br_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_fdb_entry = type { i32 }
%struct.net_bridge_mdb_entry = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.nf_br_ops = type { i64 (%struct.sk_buff*)* }
%struct.ethhdr = type { i64, i8* }
%struct.nd_msg = type { i32 }
%struct.TYPE_4__ = type { i64, %struct.net_device* }
%struct.TYPE_3__ = type { i64 }

@nf_br_ops = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@CONFIG_INET = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@BROPT_NEIGH_SUPPRESS_ENABLED = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@BR_PKT_BROADCAST = common dso_local global i32 0, align 4
@BR_PKT_MULTICAST = common dso_local global i32 0, align 4
@BR_PKT_UNICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_dev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_fdb_entry*, align 8
  %8 = alloca %struct.net_bridge_mdb_entry*, align 8
  %9 = alloca %struct.pcpu_sw_netstats*, align 8
  %10 = alloca %struct.nf_br_ops*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nd_msg*, align 8
  %15 = alloca %struct.nd_msg, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.net_bridge* @netdev_priv(%struct.net_device* %16)
  store %struct.net_bridge* %17, %struct.net_bridge** %6, align 8
  %18 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %19 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %20)
  store %struct.pcpu_sw_netstats* %21, %struct.pcpu_sw_netstats** %9, align 8
  store i32 0, i32* %13, align 4
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load i32, i32* @nf_br_ops, align 4
  %24 = call %struct.nf_br_ops* @rcu_dereference(i32 %23)
  store %struct.nf_br_ops* %24, %struct.nf_br_ops** %10, align 8
  %25 = load %struct.nf_br_ops*, %struct.nf_br_ops** %10, align 8
  %26 = icmp ne %struct.nf_br_ops* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.nf_br_ops*, %struct.nf_br_ops** %10, align 8
  %29 = getelementptr inbounds %struct.nf_br_ops, %struct.nf_br_ops* %28, i32 0, i32 0
  %30 = load i64 (%struct.sk_buff*)*, i64 (%struct.sk_buff*)** %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i64 %30(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %234

37:                                               ; preds = %27, %2
  %38 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %39 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %38, i32 0, i32 0
  %40 = call i32 @u64_stats_update_begin(i32* %39)
  %41 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %42 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %49 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %55 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %54, i32 0, i32 0
  %56 = call i32 @u64_stats_update_end(i32* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @br_switchdev_frame_unmark(%struct.sk_buff* %57)
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store %struct.net_device* %59, %struct.net_device** %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @skb_reset_mac_header(%struct.sk_buff* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %68)
  store %struct.ethhdr* %69, %struct.ethhdr** %12, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load i32, i32* @ETH_HLEN, align 4
  %72 = call i32 @skb_pull(%struct.sk_buff* %70, i32 %71)
  %73 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %74 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %75 = call i32 @br_vlan_group_rcu(%struct.net_bridge* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @br_allowed_ingress(%struct.net_bridge* %73, i32 %75, %struct.sk_buff* %76, i32* %13)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %37
  br label %231

80:                                               ; preds = %37
  %81 = load i32, i32* @CONFIG_INET, align 4
  %82 = call i64 @IS_ENABLED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %80
  %85 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %86 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ETH_P_ARP, align 4
  %89 = call i64 @htons(i32 %88)
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %98, label %91

91:                                               ; preds = %84
  %92 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %93 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @ETH_P_RARP, align 4
  %96 = call i64 @htons(i32 %95)
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %91, %84
  %99 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %100 = load i32, i32* @BROPT_NEIGH_SUPPRESS_ENABLED, align 4
  %101 = call i64 @br_opt_get(%struct.net_bridge* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @br_do_proxy_suppress_arp(%struct.sk_buff* %104, %struct.net_bridge* %105, i32 %106, i32* null)
  br label %148

108:                                              ; preds = %98, %91, %80
  %109 = load i32, i32* @CONFIG_IPV6, align 4
  %110 = call i64 @IS_ENABLED(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %108
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @ETH_P_IPV6, align 4
  %117 = call i64 @htons(i32 %116)
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %112
  %120 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %121 = load i32, i32* @BROPT_NEIGH_SUPPRESS_ENABLED, align 4
  %122 = call i64 @br_opt_get(%struct.net_bridge* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %119
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = call i64 @pskb_may_pull(%struct.sk_buff* %125, i32 8)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %128
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = call %struct.nd_msg* @br_is_nd_neigh_msg(%struct.sk_buff* %136, %struct.nd_msg* %15)
  store %struct.nd_msg* %137, %struct.nd_msg** %14, align 8
  %138 = load %struct.nd_msg*, %struct.nd_msg** %14, align 8
  %139 = icmp ne %struct.nd_msg* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.nd_msg*, %struct.nd_msg** %14, align 8
  %145 = call i32 @br_do_suppress_nd(%struct.sk_buff* %141, %struct.net_bridge* %142, i32 %143, i32* null, %struct.nd_msg* %144)
  br label %146

146:                                              ; preds = %140, %135
  br label %147

147:                                              ; preds = %146, %128, %124, %119, %112, %108
  br label %148

148:                                              ; preds = %147, %103
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %149)
  %151 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %11, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = call i64 @is_broadcast_ether_addr(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %148
  %157 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %159 = load i32, i32* @BR_PKT_BROADCAST, align 4
  %160 = call i32 @br_flood(%struct.net_bridge* %157, %struct.sk_buff* %158, i32 %159, i32 0, i32 1)
  br label %230

161:                                              ; preds = %148
  %162 = load i8*, i8** %11, align 8
  %163 = call i64 @is_multicast_ether_addr(i8* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %211

165:                                              ; preds = %161
  %166 = load %struct.net_device*, %struct.net_device** %5, align 8
  %167 = call i32 @netpoll_tx_running(%struct.net_device* %166)
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = load i32, i32* @BR_PKT_MULTICAST, align 4
  %174 = call i32 @br_flood(%struct.net_bridge* %171, %struct.sk_buff* %172, i32 %173, i32 0, i32 1)
  br label %231

175:                                              ; preds = %165
  %176 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = load i32, i32* %13, align 4
  %179 = call i64 @br_multicast_rcv(%struct.net_bridge* %176, i32* null, %struct.sk_buff* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %175
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = call i32 @kfree_skb(%struct.sk_buff* %182)
  br label %231

184:                                              ; preds = %175
  %185 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %187 = load i32, i32* %13, align 4
  %188 = call %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge* %185, %struct.sk_buff* %186, i32 %187)
  store %struct.net_bridge_mdb_entry* %188, %struct.net_bridge_mdb_entry** %8, align 8
  %189 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %190 = icmp ne %struct.net_bridge_mdb_entry* %189, null
  br i1 %190, label %195, label %191

191:                                              ; preds = %184
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = call i64 @BR_INPUT_SKB_CB_MROUTERS_ONLY(%struct.sk_buff* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %191, %184
  %196 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %198 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %197)
  %199 = call i64 @br_multicast_querier_exists(%struct.net_bridge* %196, %struct.ethhdr* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %195
  %202 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %8, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = call i32 @br_multicast_flood(%struct.net_bridge_mdb_entry* %202, %struct.sk_buff* %203, i32 0, i32 1)
  br label %210

205:                                              ; preds = %195, %191
  %206 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %208 = load i32, i32* @BR_PKT_MULTICAST, align 4
  %209 = call i32 @br_flood(%struct.net_bridge* %206, %struct.sk_buff* %207, i32 %208, i32 0, i32 1)
  br label %210

210:                                              ; preds = %205, %201
  br label %229

211:                                              ; preds = %161
  %212 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = load i32, i32* %13, align 4
  %215 = call %struct.net_bridge_fdb_entry* @br_fdb_find_rcu(%struct.net_bridge* %212, i8* %213, i32 %214)
  store %struct.net_bridge_fdb_entry* %215, %struct.net_bridge_fdb_entry** %7, align 8
  %216 = icmp ne %struct.net_bridge_fdb_entry* %215, null
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %7, align 8
  %219 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %222 = call i32 @br_forward(i32 %220, %struct.sk_buff* %221, i32 0, i32 1)
  br label %228

223:                                              ; preds = %211
  %224 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %225 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %226 = load i32, i32* @BR_PKT_UNICAST, align 4
  %227 = call i32 @br_flood(%struct.net_bridge* %224, %struct.sk_buff* %225, i32 %226, i32 0, i32 1)
  br label %228

228:                                              ; preds = %223, %217
  br label %229

229:                                              ; preds = %228, %210
  br label %230

230:                                              ; preds = %229, %156
  br label %231

231:                                              ; preds = %230, %181, %170, %79
  %232 = call i32 (...) @rcu_read_unlock()
  %233 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %231, %34
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local %struct.net_bridge* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_br_ops* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @br_switchdev_frame_unmark(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @br_allowed_ingress(%struct.net_bridge*, i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @br_vlan_group_rcu(%struct.net_bridge*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_do_proxy_suppress_arp(%struct.sk_buff*, %struct.net_bridge*, i32, i32*) #1

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.nd_msg* @br_is_nd_neigh_msg(%struct.sk_buff*, %struct.nd_msg*) #1

declare dso_local i32 @br_do_suppress_nd(%struct.sk_buff*, %struct.net_bridge*, i32, i32*, %struct.nd_msg*) #1

declare dso_local i64 @is_broadcast_ether_addr(i8*) #1

declare dso_local i32 @br_flood(%struct.net_bridge*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netpoll_tx_running(%struct.net_device*) #1

declare dso_local i64 @br_multicast_rcv(%struct.net_bridge*, i32*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge*, %struct.sk_buff*, i32) #1

declare dso_local i64 @BR_INPUT_SKB_CB_MROUTERS_ONLY(%struct.sk_buff*) #1

declare dso_local i64 @br_multicast_querier_exists(%struct.net_bridge*, %struct.ethhdr*) #1

declare dso_local i32 @br_multicast_flood(%struct.net_bridge_mdb_entry*, %struct.sk_buff*, i32, i32) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find_rcu(%struct.net_bridge*, i8*, i32) #1

declare dso_local i32 @br_forward(i32, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
