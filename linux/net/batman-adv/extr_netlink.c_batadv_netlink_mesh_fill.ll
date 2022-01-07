; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_mesh_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_mesh_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__*, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, %struct.net_device* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.batadv_hard_iface = type { i64, %struct.net_device* }

@batadv_netlink_family = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_VERSION = common dso_local global i32 0, align 4
@BATADV_SOURCE_VERSION = common dso_local global i32 0, align 4
@BATADV_ATTR_ALGO_NAME = common dso_local global i32 0, align 4
@BATADV_ATTR_MESH_IFINDEX = common dso_local global i32 0, align 4
@BATADV_ATTR_MESH_IFNAME = common dso_local global i32 0, align 4
@BATADV_ATTR_MESH_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_TT_TTVN = common dso_local global i32 0, align 4
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@BATADV_ATTR_HARD_IFINDEX = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFNAME = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_ADDRESS = common dso_local global i32 0, align 4
@BATADV_ATTR_AGGREGATED_OGMS_ENABLED = common dso_local global i32 0, align 4
@BATADV_ATTR_ISOLATION_MARK = common dso_local global i32 0, align 4
@BATADV_ATTR_ISOLATION_MASK = common dso_local global i32 0, align 4
@BATADV_ATTR_BONDING_ENABLED = common dso_local global i32 0, align 4
@BATADV_ATTR_FRAGMENTATION_ENABLED = common dso_local global i32 0, align 4
@BATADV_ATTR_GW_BANDWIDTH_DOWN = common dso_local global i32 0, align 4
@BATADV_ATTR_GW_BANDWIDTH_UP = common dso_local global i32 0, align 4
@BATADV_ATTR_GW_MODE = common dso_local global i32 0, align 4
@BATADV_ATTR_GW_SEL_CLASS = common dso_local global i32 0, align 4
@BATADV_ATTR_HOP_PENALTY = common dso_local global i32 0, align 4
@BATADV_ATTR_ORIG_INTERVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@BATADV_ATTR_BLA_CRC = common dso_local global i32 0, align 4
@BATADV_ATTR_BRIDGE_LOOP_AVOIDANCE_ENABLED = common dso_local global i32 0, align 4
@BATADV_ATTR_DISTRIBUTED_ARP_TABLE_ENABLED = common dso_local global i32 0, align 4
@BATADV_ATTR_LOG_LEVEL = common dso_local global i32 0, align 4
@BATADV_ATTR_MULTICAST_FANOUT = common dso_local global i32 0, align 4
@BATADV_ATTR_MULTICAST_FORCEFLOOD_ENABLED = common dso_local global i32 0, align 4
@BATADV_ATTR_NETWORK_CODING_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.batadv_priv*, i32, i32, i32, i32)* @batadv_netlink_mesh_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_netlink_mesh_fill(%struct.sk_buff* %0, %struct.batadv_priv* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.batadv_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.batadv_hard_iface*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.batadv_priv* %1, %struct.batadv_priv** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %19 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %18, i32 0, i32 17
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %14, align 8
  store %struct.batadv_hard_iface* null, %struct.batadv_hard_iface** %15, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i8* @genlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32* @batadv_netlink_family, i32 %24, i32 %25)
  store i8* %26, i8** %17, align 8
  %27 = load i8*, i8** %17, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @ENOBUFS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %290

32:                                               ; preds = %6
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load i32, i32* @BATADV_ATTR_VERSION, align 4
  %35 = load i32, i32* @BATADV_SOURCE_VERSION, align 4
  %36 = call i64 @nla_put_string(%struct.sk_buff* %33, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %32
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i32, i32* @BATADV_ATTR_ALGO_NAME, align 4
  %41 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %42 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %41, i32 0, i32 9
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @nla_put_string(%struct.sk_buff* %39, i32 %40, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %82, label %48

48:                                               ; preds = %38
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load i32, i32* @BATADV_ATTR_MESH_IFINDEX, align 4
  %51 = load %struct.net_device*, %struct.net_device** %14, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %48
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @BATADV_ATTR_MESH_IFNAME, align 4
  %59 = load %struct.net_device*, %struct.net_device** %14, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @nla_put_string(%struct.sk_buff* %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %82, label %64

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load i32, i32* @BATADV_ATTR_MESH_ADDRESS, align 4
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = load %struct.net_device*, %struct.net_device** %14, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @nla_put(%struct.sk_buff* %65, i32 %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = load i32, i32* @BATADV_ATTR_TT_TTVN, align 4
  %76 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %77 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %76, i32 0, i32 16
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = call i32 @atomic_read(i32* %78)
  %80 = call i64 @nla_put_u8(%struct.sk_buff* %74, i32 %75, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73, %64, %56, %48, %38, %32
  br label %278

83:                                               ; preds = %73
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %86 = call i64 @batadv_mcast_mesh_info_put(%struct.sk_buff* %84, %struct.batadv_priv* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %278

89:                                               ; preds = %83
  %90 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %91 = call %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv* %90)
  store %struct.batadv_hard_iface* %91, %struct.batadv_hard_iface** %15, align 8
  %92 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %93 = icmp ne %struct.batadv_hard_iface* %92, null
  br i1 %93, label %94, label %130

94:                                               ; preds = %89
  %95 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %96 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %94
  %101 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %102 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %101, i32 0, i32 1
  %103 = load %struct.net_device*, %struct.net_device** %102, align 8
  store %struct.net_device* %103, %struct.net_device** %16, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %105 = load i32, i32* @BATADV_ATTR_HARD_IFINDEX, align 4
  %106 = load %struct.net_device*, %struct.net_device** %16, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @nla_put_u32(%struct.sk_buff* %104, i32 %105, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %100
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load i32, i32* @BATADV_ATTR_HARD_IFNAME, align 4
  %114 = load %struct.net_device*, %struct.net_device** %16, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @nla_put_string(%struct.sk_buff* %112, i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %128, label %119

119:                                              ; preds = %111
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = load i32, i32* @BATADV_ATTR_HARD_ADDRESS, align 4
  %122 = load i32, i32* @ETH_ALEN, align 4
  %123 = load %struct.net_device*, %struct.net_device** %16, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @nla_put(%struct.sk_buff* %120, i32 %121, i32 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119, %111, %100
  br label %278

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %94, %89
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load i32, i32* @BATADV_ATTR_AGGREGATED_OGMS_ENABLED, align 4
  %133 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %134 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %133, i32 0, i32 14
  %135 = call i32 @atomic_read(i32* %134)
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i64 @nla_put_u8(%struct.sk_buff* %131, i32 %132, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %278

143:                                              ; preds = %130
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %146 = call i64 @batadv_netlink_mesh_fill_ap_isolation(%struct.sk_buff* %144, %struct.batadv_priv* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %278

149:                                              ; preds = %143
  %150 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %151 = load i32, i32* @BATADV_ATTR_ISOLATION_MARK, align 4
  %152 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %153 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @nla_put_u32(%struct.sk_buff* %150, i32 %151, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %278

158:                                              ; preds = %149
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = load i32, i32* @BATADV_ATTR_ISOLATION_MASK, align 4
  %161 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %162 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @nla_put_u32(%struct.sk_buff* %159, i32 %160, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %278

167:                                              ; preds = %158
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %169 = load i32, i32* @BATADV_ATTR_BONDING_ENABLED, align 4
  %170 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %171 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %170, i32 0, i32 13
  %172 = call i32 @atomic_read(i32* %171)
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = call i64 @nla_put_u8(%struct.sk_buff* %168, i32 %169, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %167
  br label %278

180:                                              ; preds = %167
  %181 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %182 = load i32, i32* @BATADV_ATTR_FRAGMENTATION_ENABLED, align 4
  %183 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %184 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %183, i32 0, i32 10
  %185 = call i32 @atomic_read(i32* %184)
  %186 = icmp ne i32 %185, 0
  %187 = xor i1 %186, true
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i64 @nla_put_u8(%struct.sk_buff* %181, i32 %182, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %278

193:                                              ; preds = %180
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = load i32, i32* @BATADV_ATTR_GW_BANDWIDTH_DOWN, align 4
  %196 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %197 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  %199 = call i32 @atomic_read(i32* %198)
  %200 = call i64 @nla_put_u32(%struct.sk_buff* %194, i32 %195, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %193
  br label %278

203:                                              ; preds = %193
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = load i32, i32* @BATADV_ATTR_GW_BANDWIDTH_UP, align 4
  %206 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %207 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %206, i32 0, i32 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 2
  %209 = call i32 @atomic_read(i32* %208)
  %210 = call i64 @nla_put_u32(%struct.sk_buff* %204, i32 %205, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  br label %278

213:                                              ; preds = %203
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = load i32, i32* @BATADV_ATTR_GW_MODE, align 4
  %216 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %217 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %216, i32 0, i32 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = call i32 @atomic_read(i32* %218)
  %220 = call i64 @nla_put_u8(%struct.sk_buff* %214, i32 %215, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  br label %278

223:                                              ; preds = %213
  %224 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %225 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %224, i32 0, i32 9
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %250

231:                                              ; preds = %223
  %232 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %233 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %232, i32 0, i32 9
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %231
  %240 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %241 = load i32, i32* @BATADV_ATTR_GW_SEL_CLASS, align 4
  %242 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %243 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %242, i32 0, i32 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 0
  %245 = call i32 @atomic_read(i32* %244)
  %246 = call i64 @nla_put_u32(%struct.sk_buff* %240, i32 %241, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %239
  br label %278

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %249, %231, %223
  %251 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %252 = load i32, i32* @BATADV_ATTR_HOP_PENALTY, align 4
  %253 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %254 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %253, i32 0, i32 7
  %255 = call i32 @atomic_read(i32* %254)
  %256 = call i64 @nla_put_u8(%struct.sk_buff* %251, i32 %252, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %278

259:                                              ; preds = %250
  %260 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %261 = load i32, i32* @BATADV_ATTR_ORIG_INTERVAL, align 4
  %262 = load %struct.batadv_priv*, %struct.batadv_priv** %9, align 8
  %263 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %262, i32 0, i32 2
  %264 = call i32 @atomic_read(i32* %263)
  %265 = call i64 @nla_put_u32(%struct.sk_buff* %260, i32 %261, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %259
  br label %278

268:                                              ; preds = %259
  %269 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %270 = icmp ne %struct.batadv_hard_iface* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %273 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %272)
  br label %274

274:                                              ; preds = %271, %268
  %275 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %276 = load i8*, i8** %17, align 8
  %277 = call i32 @genlmsg_end(%struct.sk_buff* %275, i8* %276)
  store i32 0, i32* %7, align 4
  br label %290

278:                                              ; preds = %267, %258, %248, %222, %212, %202, %192, %179, %166, %157, %148, %142, %128, %88, %82
  %279 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %280 = icmp ne %struct.batadv_hard_iface* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %15, align 8
  %283 = call i32 @batadv_hardif_put(%struct.batadv_hard_iface* %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %286 = load i8*, i8** %17, align 8
  %287 = call i32 @genlmsg_cancel(%struct.sk_buff* %285, i8* %286)
  %288 = load i32, i32* @EMSGSIZE, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %7, align 4
  br label %290

290:                                              ; preds = %284, %274, %29
  %291 = load i32, i32* %7, align 4
  ret i32 %291
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @batadv_mcast_mesh_info_put(%struct.sk_buff*, %struct.batadv_priv*) #1

declare dso_local %struct.batadv_hard_iface* @batadv_primary_if_get_selected(%struct.batadv_priv*) #1

declare dso_local i64 @batadv_netlink_mesh_fill_ap_isolation(%struct.sk_buff*, %struct.batadv_priv*) #1

declare dso_local i32 @batadv_hardif_put(%struct.batadv_hard_iface*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
