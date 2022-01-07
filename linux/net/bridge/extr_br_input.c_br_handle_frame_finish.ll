; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_br_handle_frame_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_input.c_br_handle_frame_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.net_bridge_port = type { i64, i32, %struct.net_bridge* }
%struct.net_bridge = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.net_bridge_fdb_entry = type { i64, i32, i64 }
%struct.net_bridge_mdb_entry = type { i32 }
%struct.nd_msg = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@BR_LEARNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@BR_PKT_BROADCAST = common dso_local global i32 0, align 4
@BR_STATE_LEARNING = common dso_local global i64 0, align 8
@BR_ISOLATED = common dso_local global i32 0, align 4
@CONFIG_INET = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@CONFIG_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@BROPT_NEIGH_SUPPRESS_ENABLED = common dso_local global i32 0, align 4
@IPPROTO_ICMPV6 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_handle_frame_finish(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_bridge_fdb_entry*, align 8
  %11 = alloca %struct.net_bridge_mdb_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_bridge*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nd_msg*, align 8
  %17 = alloca %struct.nd_msg, align 4
  %18 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.net_bridge_port* @br_port_get_rcu(i32 %21)
  store %struct.net_bridge_port* %22, %struct.net_bridge_port** %8, align 8
  store i32 128, i32* %9, align 4
  store %struct.net_bridge_fdb_entry* null, %struct.net_bridge_fdb_entry** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %24 = icmp ne %struct.net_bridge_port* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %27 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BR_STATE_DISABLED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %3
  br label %301

32:                                               ; preds = %25
  %33 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %34 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %33, i32 0, i32 2
  %35 = load %struct.net_bridge*, %struct.net_bridge** %34, align 8
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %37 = call i32 @nbp_vlan_group_rcu(%struct.net_bridge_port* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @br_allowed_ingress(%struct.net_bridge* %35, i32 %37, %struct.sk_buff* %38, i32* %15)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  br label %300

42:                                               ; preds = %32
  %43 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @nbp_switchdev_frame_mark(%struct.net_bridge_port* %43, %struct.sk_buff* %44)
  %46 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %47 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %46, i32 0, i32 2
  %48 = load %struct.net_bridge*, %struct.net_bridge** %47, align 8
  store %struct.net_bridge* %48, %struct.net_bridge** %14, align 8
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %50 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BR_LEARNING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call %struct.TYPE_10__* @eth_hdr(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @br_fdb_update(%struct.net_bridge* %56, %struct.net_bridge_port* %57, i32 %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %55, %42
  %65 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %66 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_PROMISC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %12, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = call %struct.TYPE_10__* @eth_hdr(%struct.sk_buff* %76)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @is_multicast_ether_addr(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %64
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = call %struct.TYPE_10__* @eth_hdr(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @is_broadcast_ether_addr(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @BR_PKT_BROADCAST, align 4
  store i32 %90, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %100

91:                                               ; preds = %82
  store i32 129, i32* %9, align 4
  %92 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %93 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = load i32, i32* %15, align 4
  %96 = call i64 @br_multicast_rcv(%struct.net_bridge* %92, %struct.net_bridge_port* %93, %struct.sk_buff* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %301

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %89
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %103 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BR_STATE_LEARNING, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %301

108:                                              ; preds = %101
  %109 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %110 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %113 = call %struct.TYPE_11__* @BR_INPUT_SKB_CB(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %114, align 8
  %115 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %116 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @BR_ISOLATED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = call %struct.TYPE_11__* @BR_INPUT_SKB_CB(%struct.sk_buff* %124)
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* @CONFIG_INET, align 4
  %128 = call i64 @IS_ENABLED(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %108
  %131 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @ETH_P_ARP, align 4
  %135 = call i64 @htons(i32 %134)
  %136 = icmp eq i64 %133, %135
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @ETH_P_RARP, align 4
  %142 = call i64 @htons(i32 %141)
  %143 = icmp eq i64 %140, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %137, %130
  %145 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %146 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %149 = call i32 @br_do_proxy_suppress_arp(%struct.sk_buff* %145, %struct.net_bridge* %146, i32 %147, %struct.net_bridge_port* %148)
  br label %191

150:                                              ; preds = %137, %108
  %151 = load i32, i32* @CONFIG_IPV6, align 4
  %152 = call i64 @IS_ENABLED(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %190

154:                                              ; preds = %150
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @ETH_P_IPV6, align 4
  %159 = call i64 @htons(i32 %158)
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %161, label %190

161:                                              ; preds = %154
  %162 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %163 = load i32, i32* @BROPT_NEIGH_SUPPRESS_ENABLED, align 4
  %164 = call i64 @br_opt_get(%struct.net_bridge* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %190

166:                                              ; preds = %161
  %167 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %168 = call i64 @pskb_may_pull(%struct.sk_buff* %167, i32 8)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %190

170:                                              ; preds = %166
  %171 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %172 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %171)
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IPPROTO_ICMPV6, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %170
  %178 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %179 = call %struct.nd_msg* @br_is_nd_neigh_msg(%struct.sk_buff* %178, %struct.nd_msg* %17)
  store %struct.nd_msg* %179, %struct.nd_msg** %16, align 8
  %180 = load %struct.nd_msg*, %struct.nd_msg** %16, align 8
  %181 = icmp ne %struct.nd_msg* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %184 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %185 = load i32, i32* %15, align 4
  %186 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %187 = load %struct.nd_msg*, %struct.nd_msg** %16, align 8
  %188 = call i32 @br_do_suppress_nd(%struct.sk_buff* %183, %struct.net_bridge* %184, i32 %185, %struct.net_bridge_port* %186, %struct.nd_msg* %187)
  br label %189

189:                                              ; preds = %182, %177
  br label %190

190:                                              ; preds = %189, %170, %166, %161, %154, %150
  br label %191

191:                                              ; preds = %190, %144
  %192 = load i32, i32* %9, align 4
  switch i32 %192, label %248 [
    i32 129, label %193
    i32 128, label %240
  ]

193:                                              ; preds = %191
  %194 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %196 = load i32, i32* %15, align 4
  %197 = call %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge* %194, %struct.sk_buff* %195, i32 %196)
  store %struct.net_bridge_mdb_entry* %197, %struct.net_bridge_mdb_entry** %11, align 8
  %198 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %11, align 8
  %199 = icmp ne %struct.net_bridge_mdb_entry* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %193
  %201 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %202 = call i32 @BR_INPUT_SKB_CB_MROUTERS_ONLY(%struct.sk_buff* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %231

204:                                              ; preds = %200, %193
  %205 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %207 = call %struct.TYPE_10__* @eth_hdr(%struct.sk_buff* %206)
  %208 = call i32 @br_multicast_querier_exists(%struct.net_bridge* %205, %struct.TYPE_10__* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %231

210:                                              ; preds = %204
  %211 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %11, align 8
  %212 = icmp ne %struct.net_bridge_mdb_entry* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %11, align 8
  %215 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %213, %210
  %219 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %220 = call i32 @br_multicast_is_router(%struct.net_bridge* %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %218, %213
  store i32 1, i32* %12, align 4
  %223 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %224 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %223, i32 0, i32 0
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %222, %218
  store i32 1, i32* %13, align 4
  br label %239

231:                                              ; preds = %204, %200
  store i32 1, i32* %12, align 4
  %232 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %233 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %232, i32 0, i32 0
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %231, %230
  br label %249

240:                                              ; preds = %191
  %241 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %242 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %243 = call %struct.TYPE_10__* @eth_hdr(%struct.sk_buff* %242)
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %15, align 4
  %247 = call %struct.net_bridge_fdb_entry* @br_fdb_find_rcu(%struct.net_bridge* %241, i32 %245, i32 %246)
  store %struct.net_bridge_fdb_entry* %247, %struct.net_bridge_fdb_entry** %10, align 8
  br label %248

248:                                              ; preds = %191, %240
  br label %249

249:                                              ; preds = %248, %239
  %250 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %251 = icmp ne %struct.net_bridge_fdb_entry* %250, null
  br i1 %251, label %252, label %278

252:                                              ; preds = %249
  %253 = load i64, i64* @jiffies, align 8
  store i64 %253, i64* %18, align 8
  %254 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %255 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %252
  %259 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %260 = call i32 @br_pass_frame_up(%struct.sk_buff* %259)
  store i32 %260, i32* %4, align 4
  br label %304

261:                                              ; preds = %252
  %262 = load i64, i64* %18, align 8
  %263 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %264 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %262, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %261
  %268 = load i64, i64* %18, align 8
  %269 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %270 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  br label %271

271:                                              ; preds = %267, %261
  %272 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %273 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %276 = load i32, i32* %12, align 4
  %277 = call i32 @br_forward(i32 %274, %struct.sk_buff* %275, i32 %276, i32 0)
  br label %293

278:                                              ; preds = %249
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %287, label %281

281:                                              ; preds = %278
  %282 = load %struct.net_bridge*, %struct.net_bridge** %14, align 8
  %283 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* %12, align 4
  %286 = call i32 @br_flood(%struct.net_bridge* %282, %struct.sk_buff* %283, i32 %284, i32 %285, i32 0)
  br label %292

287:                                              ; preds = %278
  %288 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %11, align 8
  %289 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %290 = load i32, i32* %12, align 4
  %291 = call i32 @br_multicast_flood(%struct.net_bridge_mdb_entry* %288, %struct.sk_buff* %289, i32 %290, i32 0)
  br label %292

292:                                              ; preds = %287, %281
  br label %293

293:                                              ; preds = %292, %271
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %298 = call i32 @br_pass_frame_up(%struct.sk_buff* %297)
  store i32 %298, i32* %4, align 4
  br label %304

299:                                              ; preds = %293
  br label %300

300:                                              ; preds = %301, %299, %41
  store i32 0, i32* %4, align 4
  br label %304

301:                                              ; preds = %107, %98, %31
  %302 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %303 = call i32 @kfree_skb(%struct.sk_buff* %302)
  br label %300

304:                                              ; preds = %300, %296, %258
  %305 = load i32, i32* %4, align 4
  ret i32 %305
}

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(i32) #1

declare dso_local i32 @br_allowed_ingress(%struct.net_bridge*, i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @nbp_vlan_group_rcu(%struct.net_bridge_port*) #1

declare dso_local i32 @nbp_switchdev_frame_mark(%struct.net_bridge_port*, %struct.sk_buff*) #1

declare dso_local i32 @br_fdb_update(%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @is_broadcast_ether_addr(i32) #1

declare dso_local i64 @br_multicast_rcv(%struct.net_bridge*, %struct.net_bridge_port*, %struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_11__* @BR_INPUT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @br_do_proxy_suppress_arp(%struct.sk_buff*, %struct.net_bridge*, i32, %struct.net_bridge_port*) #1

declare dso_local i64 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i64 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.nd_msg* @br_is_nd_neigh_msg(%struct.sk_buff*, %struct.nd_msg*) #1

declare dso_local i32 @br_do_suppress_nd(%struct.sk_buff*, %struct.net_bridge*, i32, %struct.net_bridge_port*, %struct.nd_msg*) #1

declare dso_local %struct.net_bridge_mdb_entry* @br_mdb_get(%struct.net_bridge*, %struct.sk_buff*, i32) #1

declare dso_local i32 @BR_INPUT_SKB_CB_MROUTERS_ONLY(%struct.sk_buff*) #1

declare dso_local i32 @br_multicast_querier_exists(%struct.net_bridge*, %struct.TYPE_10__*) #1

declare dso_local i32 @br_multicast_is_router(%struct.net_bridge*) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find_rcu(%struct.net_bridge*, i32, i32) #1

declare dso_local i32 @br_pass_frame_up(%struct.sk_buff*) #1

declare dso_local i32 @br_forward(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @br_flood(%struct.net_bridge*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @br_multicast_flood(%struct.net_bridge_mdb_entry*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
