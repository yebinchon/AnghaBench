; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_port_fill_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_port_fill_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_bridge_port = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@BR_HAIRPIN_MODE = common dso_local global i32 0, align 4
@IFLA_BRPORT_STATE = common dso_local global i32 0, align 4
@IFLA_BRPORT_PRIORITY = common dso_local global i32 0, align 4
@IFLA_BRPORT_COST = common dso_local global i32 0, align 4
@IFLA_BRPORT_MODE = common dso_local global i32 0, align 4
@IFLA_BRPORT_GUARD = common dso_local global i32 0, align 4
@BR_BPDU_GUARD = common dso_local global i32 0, align 4
@IFLA_BRPORT_PROTECT = common dso_local global i32 0, align 4
@BR_ROOT_BLOCK = common dso_local global i32 0, align 4
@IFLA_BRPORT_FAST_LEAVE = common dso_local global i32 0, align 4
@BR_MULTICAST_FAST_LEAVE = common dso_local global i32 0, align 4
@IFLA_BRPORT_MCAST_TO_UCAST = common dso_local global i32 0, align 4
@BR_MULTICAST_TO_UNICAST = common dso_local global i32 0, align 4
@IFLA_BRPORT_LEARNING = common dso_local global i32 0, align 4
@BR_LEARNING = common dso_local global i32 0, align 4
@IFLA_BRPORT_UNICAST_FLOOD = common dso_local global i32 0, align 4
@BR_FLOOD = common dso_local global i32 0, align 4
@IFLA_BRPORT_MCAST_FLOOD = common dso_local global i32 0, align 4
@BR_MCAST_FLOOD = common dso_local global i32 0, align 4
@IFLA_BRPORT_BCAST_FLOOD = common dso_local global i32 0, align 4
@BR_BCAST_FLOOD = common dso_local global i32 0, align 4
@IFLA_BRPORT_PROXYARP = common dso_local global i32 0, align 4
@BR_PROXYARP = common dso_local global i32 0, align 4
@IFLA_BRPORT_PROXYARP_WIFI = common dso_local global i32 0, align 4
@BR_PROXYARP_WIFI = common dso_local global i32 0, align 4
@IFLA_BRPORT_ROOT_ID = common dso_local global i32 0, align 4
@IFLA_BRPORT_BRIDGE_ID = common dso_local global i32 0, align 4
@IFLA_BRPORT_DESIGNATED_PORT = common dso_local global i32 0, align 4
@IFLA_BRPORT_DESIGNATED_COST = common dso_local global i32 0, align 4
@IFLA_BRPORT_ID = common dso_local global i32 0, align 4
@IFLA_BRPORT_NO = common dso_local global i32 0, align 4
@IFLA_BRPORT_TOPOLOGY_CHANGE_ACK = common dso_local global i32 0, align 4
@IFLA_BRPORT_CONFIG_PENDING = common dso_local global i32 0, align 4
@IFLA_BRPORT_VLAN_TUNNEL = common dso_local global i32 0, align 4
@BR_VLAN_TUNNEL = common dso_local global i32 0, align 4
@IFLA_BRPORT_GROUP_FWD_MASK = common dso_local global i32 0, align 4
@IFLA_BRPORT_NEIGH_SUPPRESS = common dso_local global i32 0, align 4
@BR_NEIGH_SUPPRESS = common dso_local global i32 0, align 4
@IFLA_BRPORT_ISOLATED = common dso_local global i32 0, align 4
@BR_ISOLATED = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IFLA_BRPORT_MESSAGE_AGE_TIMER = common dso_local global i32 0, align 4
@IFLA_BRPORT_PAD = common dso_local global i32 0, align 4
@IFLA_BRPORT_FORWARD_DELAY_TIMER = common dso_local global i32 0, align 4
@IFLA_BRPORT_HOLD_TIMER = common dso_local global i32 0, align 4
@IFLA_BRPORT_BACKUP_PORT = common dso_local global i32 0, align 4
@IFLA_BRPORT_MULTICAST_ROUTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_bridge_port*)* @br_port_fill_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_port_fill_attrs(%struct.sk_buff* %0, %struct.net_bridge_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %5, align 8
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BR_HAIRPIN_MODE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @IFLA_BRPORT_STATE, align 4
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %21 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @nla_put_u8(%struct.sk_buff* %18, i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %299, label %25

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load i32, i32* @IFLA_BRPORT_PRIORITY, align 4
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 18
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @nla_put_u16(%struct.sk_buff* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %299, label %33

33:                                               ; preds = %25
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @IFLA_BRPORT_COST, align 4
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %36, i32 0, i32 17
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nla_put_u32(%struct.sk_buff* %34, i32 %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %299, label %41

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @IFLA_BRPORT_MODE, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @nla_put_u8(%struct.sk_buff* %42, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %299, label %47

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* @IFLA_BRPORT_GUARD, align 4
  %50 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %51 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BR_BPDU_GUARD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @nla_put_u8(%struct.sk_buff* %48, i32 %49, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %299, label %61

61:                                               ; preds = %47
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* @IFLA_BRPORT_PROTECT, align 4
  %64 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %65 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BR_ROOT_BLOCK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @nla_put_u8(%struct.sk_buff* %62, i32 %63, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %299, label %75

75:                                               ; preds = %61
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load i32, i32* @IFLA_BRPORT_FAST_LEAVE, align 4
  %78 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %79 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BR_MULTICAST_FAST_LEAVE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i64 @nla_put_u8(%struct.sk_buff* %76, i32 %77, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %299, label %89

89:                                               ; preds = %75
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load i32, i32* @IFLA_BRPORT_MCAST_TO_UCAST, align 4
  %92 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %93 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @BR_MULTICAST_TO_UNICAST, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @nla_put_u8(%struct.sk_buff* %90, i32 %91, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %299, label %103

103:                                              ; preds = %89
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i32, i32* @IFLA_BRPORT_LEARNING, align 4
  %106 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %107 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @BR_LEARNING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @nla_put_u8(%struct.sk_buff* %104, i32 %105, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %299, label %117

117:                                              ; preds = %103
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load i32, i32* @IFLA_BRPORT_UNICAST_FLOOD, align 4
  %120 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %121 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @BR_FLOOD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i64 @nla_put_u8(%struct.sk_buff* %118, i32 %119, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %299, label %131

131:                                              ; preds = %117
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = load i32, i32* @IFLA_BRPORT_MCAST_FLOOD, align 4
  %134 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %135 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @BR_MCAST_FLOOD, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i64 @nla_put_u8(%struct.sk_buff* %132, i32 %133, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %299, label %145

145:                                              ; preds = %131
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = load i32, i32* @IFLA_BRPORT_BCAST_FLOOD, align 4
  %148 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %149 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @BR_BCAST_FLOOD, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i64 @nla_put_u8(%struct.sk_buff* %146, i32 %147, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %299, label %159

159:                                              ; preds = %145
  %160 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %161 = load i32, i32* @IFLA_BRPORT_PROXYARP, align 4
  %162 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %163 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @BR_PROXYARP, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i64 @nla_put_u8(%struct.sk_buff* %160, i32 %161, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %299, label %173

173:                                              ; preds = %159
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = load i32, i32* @IFLA_BRPORT_PROXYARP_WIFI, align 4
  %176 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %177 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @BR_PROXYARP_WIFI, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i64 @nla_put_u8(%struct.sk_buff* %174, i32 %175, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %299, label %187

187:                                              ; preds = %173
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = load i32, i32* @IFLA_BRPORT_ROOT_ID, align 4
  %190 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %191 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %190, i32 0, i32 16
  %192 = call i64 @nla_put(%struct.sk_buff* %188, i32 %189, i32 4, i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %299, label %194

194:                                              ; preds = %187
  %195 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %196 = load i32, i32* @IFLA_BRPORT_BRIDGE_ID, align 4
  %197 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %198 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %197, i32 0, i32 15
  %199 = call i64 @nla_put(%struct.sk_buff* %195, i32 %196, i32 4, i32* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %299, label %201

201:                                              ; preds = %194
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = load i32, i32* @IFLA_BRPORT_DESIGNATED_PORT, align 4
  %204 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %205 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %204, i32 0, i32 14
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @nla_put_u16(%struct.sk_buff* %202, i32 %203, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %299, label %209

209:                                              ; preds = %201
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = load i32, i32* @IFLA_BRPORT_DESIGNATED_COST, align 4
  %212 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %213 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %212, i32 0, i32 13
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @nla_put_u16(%struct.sk_buff* %210, i32 %211, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %299, label %217

217:                                              ; preds = %209
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = load i32, i32* @IFLA_BRPORT_ID, align 4
  %220 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %221 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %220, i32 0, i32 12
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @nla_put_u16(%struct.sk_buff* %218, i32 %219, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %299, label %225

225:                                              ; preds = %217
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = load i32, i32* @IFLA_BRPORT_NO, align 4
  %228 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %229 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 4
  %231 = call i64 @nla_put_u16(%struct.sk_buff* %226, i32 %227, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %299, label %233

233:                                              ; preds = %225
  %234 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %235 = load i32, i32* @IFLA_BRPORT_TOPOLOGY_CHANGE_ACK, align 4
  %236 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %237 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i64 @nla_put_u8(%struct.sk_buff* %234, i32 %235, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %299, label %241

241:                                              ; preds = %233
  %242 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %243 = load i32, i32* @IFLA_BRPORT_CONFIG_PENDING, align 4
  %244 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %245 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @nla_put_u8(%struct.sk_buff* %242, i32 %243, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %299, label %249

249:                                              ; preds = %241
  %250 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %251 = load i32, i32* @IFLA_BRPORT_VLAN_TUNNEL, align 4
  %252 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %253 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @BR_VLAN_TUNNEL, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  %258 = xor i1 %257, true
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i32
  %261 = call i64 @nla_put_u8(%struct.sk_buff* %250, i32 %251, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %299, label %263

263:                                              ; preds = %249
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = load i32, i32* @IFLA_BRPORT_GROUP_FWD_MASK, align 4
  %266 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %267 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @nla_put_u16(%struct.sk_buff* %264, i32 %265, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %299, label %271

271:                                              ; preds = %263
  %272 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %273 = load i32, i32* @IFLA_BRPORT_NEIGH_SUPPRESS, align 4
  %274 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %275 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @BR_NEIGH_SUPPRESS, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  %280 = xor i1 %279, true
  %281 = xor i1 %280, true
  %282 = zext i1 %281 to i32
  %283 = call i64 @nla_put_u8(%struct.sk_buff* %272, i32 %273, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %299, label %285

285:                                              ; preds = %271
  %286 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %287 = load i32, i32* @IFLA_BRPORT_ISOLATED, align 4
  %288 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %289 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @BR_ISOLATED, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = call i64 @nla_put_u8(%struct.sk_buff* %286, i32 %287, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %285, %271, %263, %249, %241, %233, %225, %217, %209, %201, %194, %187, %173, %159, %145, %131, %117, %103, %89, %75, %61, %47, %41, %33, %25, %2
  %300 = load i32, i32* @EMSGSIZE, align 4
  %301 = sub nsw i32 0, %300
  store i32 %301, i32* %3, align 4
  br label %360

302:                                              ; preds = %285
  %303 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %304 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %303, i32 0, i32 9
  %305 = call i32 @br_timer_value(i32* %304)
  store i32 %305, i32* %8, align 4
  %306 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %307 = load i32, i32* @IFLA_BRPORT_MESSAGE_AGE_TIMER, align 4
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @IFLA_BRPORT_PAD, align 4
  %310 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %306, i32 %307, i32 %308, i32 %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %302
  %313 = load i32, i32* @EMSGSIZE, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %3, align 4
  br label %360

315:                                              ; preds = %302
  %316 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %317 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %316, i32 0, i32 8
  %318 = call i32 @br_timer_value(i32* %317)
  store i32 %318, i32* %8, align 4
  %319 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %320 = load i32, i32* @IFLA_BRPORT_FORWARD_DELAY_TIMER, align 4
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* @IFLA_BRPORT_PAD, align 4
  %323 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %319, i32 %320, i32 %321, i32 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %315
  %326 = load i32, i32* @EMSGSIZE, align 4
  %327 = sub nsw i32 0, %326
  store i32 %327, i32* %3, align 4
  br label %360

328:                                              ; preds = %315
  %329 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %330 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %329, i32 0, i32 7
  %331 = call i32 @br_timer_value(i32* %330)
  store i32 %331, i32* %8, align 4
  %332 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %333 = load i32, i32* @IFLA_BRPORT_HOLD_TIMER, align 4
  %334 = load i32, i32* %8, align 4
  %335 = load i32, i32* @IFLA_BRPORT_PAD, align 4
  %336 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %332, i32 %333, i32 %334, i32 %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %328
  %339 = load i32, i32* @EMSGSIZE, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %3, align 4
  br label %360

341:                                              ; preds = %328
  %342 = call i32 (...) @rcu_read_lock()
  %343 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %344 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %343, i32 0, i32 6
  %345 = load i32, i32* %344, align 8
  %346 = call %struct.net_bridge_port* @rcu_dereference(i32 %345)
  store %struct.net_bridge_port* %346, %struct.net_bridge_port** %7, align 8
  %347 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %348 = icmp ne %struct.net_bridge_port* %347, null
  br i1 %348, label %349, label %358

349:                                              ; preds = %341
  %350 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %351 = load i32, i32* @IFLA_BRPORT_BACKUP_PORT, align 4
  %352 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %353 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %352, i32 0, i32 5
  %354 = load %struct.TYPE_2__*, %struct.TYPE_2__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @nla_put_u32(%struct.sk_buff* %350, i32 %351, i32 %356)
  br label %358

358:                                              ; preds = %349, %341
  %359 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %3, align 4
  br label %360

360:                                              ; preds = %358, %338, %325, %312, %299
  %361 = load i32, i32* %3, align 4
  ret i32 %361
}

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @br_timer_value(i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_bridge_port* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
