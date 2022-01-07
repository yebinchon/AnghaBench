; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.net_device = type { i32 }
%struct.flowi6 = type { %struct.in6_addr, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.ip6_tnl = type { i32, i32, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_11__, %struct.net*, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i32, i64, i32, i32 }
%struct.net = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.ipv6hdr = type { i64, %struct.in6_addr, i32, i32 }
%struct.ipv6_tel_txoption = type { i32 }
%struct.dst_entry = type { i32, %struct.net_device*, i64 }
%struct.neighbour = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_TCLASS = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_FWMARK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: Local routing loop detected!\0A\00", align 1
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@IPV4_MIN_MTU = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IP6TUNNEL_ERR_TIMEO = common dso_local global i64 0, align 8
@TUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_tnl_xmit(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, %struct.flowi6* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.flowi6*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ip6_tnl*, align 8
  %17 = alloca %struct.net*, align 8
  %18 = alloca %struct.net_device_stats*, align 8
  %19 = alloca %struct.ipv6hdr*, align 8
  %20 = alloca %struct.ipv6_tel_txoption, align 4
  %21 = alloca %struct.dst_entry*, align 8
  %22 = alloca %struct.dst_entry*, align 8
  %23 = alloca %struct.net_device*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.in6_addr*, align 8
  %32 = alloca %struct.neighbour*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.flowi6* %3, %struct.flowi6** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %35)
  store %struct.ip6_tnl* %36, %struct.ip6_tnl** %16, align 8
  %37 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %38 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %37, i32 0, i32 7
  %39 = load %struct.net*, %struct.net** %38, align 8
  store %struct.net* %39, %struct.net** %17, align 8
  %40 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %41 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %40, i32 0, i32 9
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store %struct.net_device_stats* %43, %struct.net_device_stats** %18, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %21, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %22, align 8
  %44 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %45 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %44, i32 0, i32 9
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ARPHRD_ETHER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %7
  %52 = load i32, i32* @ETH_HLEN, align 4
  br label %54

53:                                               ; preds = %7
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  store i32 %55, i32* %25, align 4
  %56 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %57 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = add i64 24, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %26, align 4
  %62 = load i32, i32* %26, align 4
  store i32 %62, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 -1, i32* %30, align 4
  %63 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %64 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %54
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = call %struct.TYPE_12__* @skb_tunnel_info(%struct.sk_buff* %69)
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %29, align 8
  br label %166

74:                                               ; preds = %54
  %75 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %76 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %29, align 8
  br label %79

79:                                               ; preds = %74
  %80 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %81 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 5
  %83 = call i64 @ipv6_addr_any(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %79
  %86 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @ETH_P_IPV6, align 4
  %90 = call i64 @htons(i32 %89)
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %127

92:                                               ; preds = %85
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = call i32 @skb_dst(%struct.sk_buff* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  br label %518

97:                                               ; preds = %92
  %98 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %99 = call i32 @skb_dst(%struct.sk_buff* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %101, i32 0, i32 1
  %103 = call %struct.neighbour* @dst_neigh_lookup(i32 %99, %struct.in6_addr* %102)
  store %struct.neighbour* %103, %struct.neighbour** %32, align 8
  %104 = load %struct.neighbour*, %struct.neighbour** %32, align 8
  %105 = icmp ne %struct.neighbour* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  br label %518

107:                                              ; preds = %97
  %108 = load %struct.neighbour*, %struct.neighbour** %32, align 8
  %109 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %108, i32 0, i32 0
  %110 = bitcast i32* %109 to %struct.in6_addr*
  store %struct.in6_addr* %110, %struct.in6_addr** %31, align 8
  %111 = load %struct.in6_addr*, %struct.in6_addr** %31, align 8
  %112 = call i32 @ipv6_addr_type(%struct.in6_addr* %111)
  store i32 %112, i32* %33, align 4
  %113 = load i32, i32* %33, align 4
  %114 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %117)
  %119 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %118, i32 0, i32 1
  store %struct.in6_addr* %119, %struct.in6_addr** %31, align 8
  br label %120

120:                                              ; preds = %116, %107
  %121 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %122 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %121, i32 0, i32 0
  %123 = load %struct.in6_addr*, %struct.in6_addr** %31, align 8
  %124 = call i32 @memcpy(%struct.in6_addr* %122, %struct.in6_addr* %123, i32 4)
  %125 = load %struct.neighbour*, %struct.neighbour** %32, align 8
  %126 = call i32 @neigh_release(%struct.neighbour* %125)
  br label %127

127:                                              ; preds = %120, %85
  br label %146

128:                                              ; preds = %79
  %129 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %130 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %145

134:                                              ; preds = %128
  %135 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %136 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %135, i32 0, i32 6
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @IP6_TNL_F_USE_ORIG_TCLASS, align 4
  %140 = load i32, i32* @IP6_TNL_F_USE_ORIG_FWMARK, align 4
  %141 = or i32 %139, %140
  %142 = and i32 %138, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %134
  store i32 1, i32* %28, align 4
  br label %145

145:                                              ; preds = %144, %134, %128
  br label %146

146:                                              ; preds = %145, %127
  %147 = load i32, i32* %28, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %151 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %150, i32 0, i32 4
  %152 = call %struct.dst_entry* @dst_cache_get(i32* %151)
  store %struct.dst_entry* %152, %struct.dst_entry** %21, align 8
  br label %153

153:                                              ; preds = %149, %146
  %154 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %155 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %156 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %155, i32 0, i32 1
  %157 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %158 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %157, i32 0, i32 0
  %159 = call i32 @ip6_tnl_xmit_ctl(%struct.ip6_tnl* %154, i32* %156, %struct.in6_addr* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %153
  br label %518

162:                                              ; preds = %153
  %163 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %164 = icmp ne %struct.dst_entry* %163, null
  br i1 %164, label %220, label %165

165:                                              ; preds = %162
  br label %166

166:                                              ; preds = %165, %68
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %169 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ip6_make_flowinfo(i32 %167, i32 %170)
  %172 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %173 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.net*, %struct.net** %17, align 8
  %175 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %176 = call %struct.dst_entry* @ip6_route_output(%struct.net* %174, i32* null, %struct.flowi6* %175)
  store %struct.dst_entry* %176, %struct.dst_entry** %21, align 8
  %177 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %178 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %166
  br label %518

182:                                              ; preds = %166
  %183 = load %struct.net*, %struct.net** %17, align 8
  %184 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %185 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %186 = call i32 @flowi6_to_flowi(%struct.flowi6* %185)
  %187 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %183, %struct.dst_entry* %184, i32 %186, i32* null, i32 0)
  store %struct.dst_entry* %187, %struct.dst_entry** %21, align 8
  %188 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %189 = call i64 @IS_ERR(%struct.dst_entry* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %193 = call i32 @PTR_ERR(%struct.dst_entry* %192)
  store i32 %193, i32* %30, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %21, align 8
  br label %518

194:                                              ; preds = %182
  %195 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %196 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %194
  %201 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %202 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %201, i32 0, i32 1
  %203 = call i64 @ipv6_addr_any(i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %200
  %206 = load %struct.net*, %struct.net** %17, align 8
  %207 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %208 = call %struct.TYPE_14__* @ip6_dst_idev(%struct.dst_entry* %207)
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %212 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %211, i32 0, i32 0
  %213 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %214 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %213, i32 0, i32 1
  %215 = call i64 @ipv6_dev_get_saddr(%struct.net* %206, i32 %210, %struct.in6_addr* %212, i32 0, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %205
  br label %518

218:                                              ; preds = %205, %200, %194
  %219 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  store %struct.dst_entry* %219, %struct.dst_entry** %22, align 8
  br label %220

220:                                              ; preds = %218, %162
  %221 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %222 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %221, i32 0, i32 1
  %223 = load %struct.net_device*, %struct.net_device** %222, align 8
  store %struct.net_device* %223, %struct.net_device** %23, align 8
  %224 = load %struct.net_device*, %struct.net_device** %23, align 8
  %225 = load %struct.net_device*, %struct.net_device** %10, align 8
  %226 = icmp eq %struct.net_device* %224, %225
  br i1 %226, label %227, label %237

227:                                              ; preds = %220
  %228 = load %struct.net_device_stats*, %struct.net_device_stats** %18, align 8
  %229 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %233 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %232, i32 0, i32 6
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %235)
  br label %525

237:                                              ; preds = %220
  %238 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %239 = call i32 @dst_mtu(%struct.dst_entry* %238)
  %240 = load i32, i32* %25, align 4
  %241 = sub i32 %239, %240
  %242 = load i32, i32* %26, align 4
  %243 = sub i32 %241, %242
  %244 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %245 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sub i32 %243, %246
  store i32 %247, i32* %24, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp sge i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %237
  %251 = load i32, i32* %27, align 4
  %252 = add i32 %251, 8
  store i32 %252, i32* %27, align 4
  %253 = load i32, i32* %24, align 4
  %254 = sub nsw i32 %253, 8
  store i32 %254, i32* %24, align 4
  br label %255

255:                                              ; preds = %250, %237
  %256 = load i32, i32* %24, align 4
  %257 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %258 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i32, i32* @ETH_P_IPV6, align 4
  %261 = call i64 @htons(i32 %260)
  %262 = icmp eq i64 %259, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = load i32, i32* @IPV6_MIN_MTU, align 4
  br label %267

265:                                              ; preds = %255
  %266 = load i32, i32* @IPV4_MIN_MTU, align 4
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i32 [ %264, %263 ], [ %266, %265 ]
  %269 = call i32 @max(i32 %256, i32 %268)
  store i32 %269, i32* %24, align 4
  %270 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %271 = load i32, i32* %24, align 4
  %272 = call i32 @skb_dst_update_pmtu(%struct.sk_buff* %270, i32 %271)
  %273 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %274 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %277 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = sub i32 %275, %278
  %280 = load i32, i32* %25, align 4
  %281 = sub i32 %279, %280
  %282 = load i32, i32* %24, align 4
  %283 = icmp ugt i32 %281, %282
  br i1 %283, label %284, label %293

284:                                              ; preds = %267
  %285 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %286 = call i32 @skb_is_gso(%struct.sk_buff* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %284
  %289 = load i32, i32* %24, align 4
  %290 = load i32*, i32** %14, align 8
  store i32 %289, i32* %290, align 4
  %291 = load i32, i32* @EMSGSIZE, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %30, align 4
  br label %525

293:                                              ; preds = %284, %267
  %294 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %295 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = icmp sgt i64 %296, 0
  br i1 %297, label %298, label %318

298:                                              ; preds = %293
  %299 = load i32, i32* @jiffies, align 4
  %300 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %301 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %300, i32 0, i32 8
  %302 = load i64, i64* %301, align 8
  %303 = load i64, i64* @IP6TUNNEL_ERR_TIMEO, align 8
  %304 = add nsw i64 %302, %303
  %305 = call i64 @time_before(i32 %299, i64 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %298
  %308 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %309 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, -1
  store i64 %311, i64* %309, align 8
  %312 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %313 = call i32 @dst_link_failure(%struct.sk_buff* %312)
  br label %317

314:                                              ; preds = %298
  %315 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %316 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %315, i32 0, i32 2
  store i64 0, i64* %316, align 8
  br label %317

317:                                              ; preds = %314, %307
  br label %318

318:                                              ; preds = %317, %293
  %319 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %320 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %321 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %320, i32 0, i32 7
  %322 = load %struct.net*, %struct.net** %321, align 8
  %323 = load %struct.net_device*, %struct.net_device** %10, align 8
  %324 = call i32 @dev_net(%struct.net_device* %323)
  %325 = call i32 @net_eq(%struct.net* %322, i32 %324)
  %326 = icmp ne i32 %325, 0
  %327 = xor i1 %326, true
  %328 = zext i1 %327 to i32
  %329 = call i32 @skb_scrub_packet(%struct.sk_buff* %319, i32 %328)
  %330 = load %struct.net_device*, %struct.net_device** %23, align 8
  %331 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %330)
  %332 = load i32, i32* %27, align 4
  %333 = add i32 %332, %331
  store i32 %333, i32* %27, align 4
  %334 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %335 = call i32 @skb_headroom(%struct.sk_buff* %334)
  %336 = load i32, i32* %27, align 4
  %337 = icmp ult i32 %335, %336
  br i1 %337, label %350, label %338

338:                                              ; preds = %318
  %339 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %340 = call i64 @skb_shared(%struct.sk_buff* %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %350, label %342

342:                                              ; preds = %338
  %343 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %344 = call i64 @skb_cloned(%struct.sk_buff* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %372

346:                                              ; preds = %342
  %347 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %348 = call i32 @skb_clone_writable(%struct.sk_buff* %347, i32 0)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %372, label %350

350:                                              ; preds = %346, %338, %318
  %351 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %352 = load i32, i32* %27, align 4
  %353 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %351, i32 %352)
  store %struct.sk_buff* %353, %struct.sk_buff** %34, align 8
  %354 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %355 = icmp ne %struct.sk_buff* %354, null
  br i1 %355, label %357, label %356

356:                                              ; preds = %350
  br label %525

357:                                              ; preds = %350
  %358 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %359 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %357
  %363 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  %364 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %365 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %364, i32 0, i32 2
  %366 = load i64, i64* %365, align 8
  %367 = call i32 @skb_set_owner_w(%struct.sk_buff* %363, i64 %366)
  br label %368

368:                                              ; preds = %362, %357
  %369 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %370 = call i32 @consume_skb(%struct.sk_buff* %369)
  %371 = load %struct.sk_buff*, %struct.sk_buff** %34, align 8
  store %struct.sk_buff* %371, %struct.sk_buff** %9, align 8
  br label %372

372:                                              ; preds = %368, %346, %342
  %373 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %374 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %373, i32 0, i32 6
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %372
  %379 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %380 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = load i64, i64* @TUNNEL_ENCAP_NONE, align 8
  %384 = icmp ne i64 %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %378
  br label %525

386:                                              ; preds = %378
  br label %401

387:                                              ; preds = %372
  %388 = load i32, i32* %28, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %400

390:                                              ; preds = %387
  %391 = load %struct.dst_entry*, %struct.dst_entry** %22, align 8
  %392 = icmp ne %struct.dst_entry* %391, null
  br i1 %392, label %393, label %400

393:                                              ; preds = %390
  %394 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %395 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %394, i32 0, i32 4
  %396 = load %struct.dst_entry*, %struct.dst_entry** %22, align 8
  %397 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %398 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %397, i32 0, i32 1
  %399 = call i32 @dst_cache_set_ip6(i32* %395, %struct.dst_entry* %396, i32* %398)
  br label %400

400:                                              ; preds = %393, %390, %387
  br label %401

401:                                              ; preds = %400, %386
  %402 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %403 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %404 = call i32 @skb_dst_set(%struct.sk_buff* %402, %struct.dst_entry* %403)
  %405 = load i64, i64* %29, align 8
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %436

407:                                              ; preds = %401
  %408 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %409 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i32, i32* @ETH_P_IP, align 4
  %412 = call i64 @htons(i32 %411)
  %413 = icmp eq i64 %410, %412
  br i1 %413, label %414, label %419

414:                                              ; preds = %407
  %415 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %416 = call %struct.TYPE_13__* @ip_hdr(%struct.sk_buff* %415)
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %29, align 8
  br label %435

419:                                              ; preds = %407
  %420 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %421 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load i32, i32* @ETH_P_IPV6, align 4
  %424 = call i64 @htons(i32 %423)
  %425 = icmp eq i64 %422, %424
  br i1 %425, label %426, label %431

426:                                              ; preds = %419
  %427 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %428 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %427)
  %429 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %29, align 8
  br label %434

431:                                              ; preds = %419
  %432 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %433 = call i64 @ip6_dst_hoplimit(%struct.dst_entry* %432)
  store i64 %433, i64* %29, align 8
  br label %434

434:                                              ; preds = %431, %426
  br label %435

435:                                              ; preds = %434, %414
  br label %436

436:                                              ; preds = %435, %401
  %437 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %438 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %437, i32 0, i32 1
  %439 = load %struct.net_device*, %struct.net_device** %438, align 8
  %440 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %439)
  %441 = sext i32 %440 to i64
  %442 = add i64 %441, 24
  %443 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %444 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = sext i32 %445 to i64
  %447 = add i64 %442, %446
  %448 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %449 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %448, i32 0, i32 3
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %450 to i64
  %452 = add i64 %447, %451
  %453 = trunc i64 %452 to i32
  store i32 %453, i32* %27, align 4
  %454 = load i32, i32* %27, align 4
  %455 = load %struct.net_device*, %struct.net_device** %10, align 8
  %456 = getelementptr inbounds %struct.net_device, %struct.net_device* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = icmp ugt i32 %454, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %436
  %460 = load i32, i32* %27, align 4
  %461 = load %struct.net_device*, %struct.net_device** %10, align 8
  %462 = getelementptr inbounds %struct.net_device, %struct.net_device* %461, i32 0, i32 0
  store i32 %460, i32* %462, align 4
  br label %463

463:                                              ; preds = %459, %436
  %464 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %465 = load %struct.ip6_tnl*, %struct.ip6_tnl** %16, align 8
  %466 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %467 = call i32 @ip6_tnl_encap(%struct.sk_buff* %464, %struct.ip6_tnl* %465, i32* %15, %struct.flowi6* %466)
  store i32 %467, i32* %30, align 4
  %468 = load i32, i32* %30, align 4
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %463
  %471 = load i32, i32* %30, align 4
  store i32 %471, i32* %8, align 4
  br label %529

472:                                              ; preds = %463
  %473 = load i32, i32* %13, align 4
  %474 = icmp sge i32 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %472
  %476 = load i32, i32* %13, align 4
  %477 = call i32 @init_tel_txopt(%struct.ipv6_tel_txoption* %20, i32 %476)
  %478 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %479 = getelementptr inbounds %struct.ipv6_tel_txoption, %struct.ipv6_tel_txoption* %20, i32 0, i32 0
  %480 = call i32 @ipv6_push_frag_opts(%struct.sk_buff* %478, i32* %479, i32* %15)
  br label %481

481:                                              ; preds = %475, %472
  %482 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %483 = call i32 @skb_push(%struct.sk_buff* %482, i32 24)
  %484 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %485 = call i32 @skb_reset_network_header(%struct.sk_buff* %484)
  %486 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %487 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %486)
  store %struct.ipv6hdr* %487, %struct.ipv6hdr** %19, align 8
  %488 = load %struct.ipv6hdr*, %struct.ipv6hdr** %19, align 8
  %489 = load i32, i32* %11, align 4
  %490 = load %struct.net*, %struct.net** %17, align 8
  %491 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %492 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %493 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 4
  %495 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %496 = call i32 @ip6_make_flowlabel(%struct.net* %490, %struct.sk_buff* %491, i32 %494, i32 1, %struct.flowi6* %495)
  %497 = call i32 @ip6_flow_hdr(%struct.ipv6hdr* %488, i32 %489, i32 %496)
  %498 = load i64, i64* %29, align 8
  %499 = load %struct.ipv6hdr*, %struct.ipv6hdr** %19, align 8
  %500 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %499, i32 0, i32 0
  store i64 %498, i64* %500, align 8
  %501 = load i32, i32* %15, align 4
  %502 = load %struct.ipv6hdr*, %struct.ipv6hdr** %19, align 8
  %503 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %502, i32 0, i32 3
  store i32 %501, i32* %503, align 8
  %504 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %505 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.ipv6hdr*, %struct.ipv6hdr** %19, align 8
  %508 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %507, i32 0, i32 2
  store i32 %506, i32* %508, align 4
  %509 = load %struct.ipv6hdr*, %struct.ipv6hdr** %19, align 8
  %510 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %509, i32 0, i32 1
  %511 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %512 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %511, i32 0, i32 0
  %513 = bitcast %struct.in6_addr* %510 to i8*
  %514 = bitcast %struct.in6_addr* %512 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %513, i8* align 4 %514, i64 4, i1 false)
  %515 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %516 = load %struct.net_device*, %struct.net_device** %10, align 8
  %517 = call i32 @ip6tunnel_xmit(i32* null, %struct.sk_buff* %515, %struct.net_device* %516)
  store i32 0, i32* %8, align 4
  br label %529

518:                                              ; preds = %217, %191, %181, %161, %106, %96
  %519 = load %struct.net_device_stats*, %struct.net_device_stats** %18, align 8
  %520 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %520, align 4
  %523 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %524 = call i32 @dst_link_failure(%struct.sk_buff* %523)
  br label %525

525:                                              ; preds = %518, %385, %356, %288, %227
  %526 = load %struct.dst_entry*, %struct.dst_entry** %21, align 8
  %527 = call i32 @dst_release(%struct.dst_entry* %526)
  %528 = load i32, i32* %30, align 4
  store i32 %528, i32* %8, align 4
  br label %529

529:                                              ; preds = %525, %481, %470
  %530 = load i32, i32* %8, align 4
  ret i32 %530
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_12__* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(i32, %struct.in6_addr*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local %struct.dst_entry* @dst_cache_get(i32*) #1

declare dso_local i32 @ip6_tnl_xmit_ctl(%struct.ip6_tnl*, i32*, %struct.in6_addr*) #1

declare dso_local i32 @ip6_make_flowinfo(i32, i32) #1

declare dso_local %struct.dst_entry* @ip6_route_output(%struct.net*, i32*, %struct.flowi6*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(%struct.net*, %struct.dst_entry*, i32, i32*, i32) #1

declare dso_local i32 @flowi6_to_flowi(%struct.flowi6*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i64 @ipv6_dev_get_saddr(%struct.net*, i32, %struct.in6_addr*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @skb_dst_update_pmtu(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_clone_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @dst_cache_set_ip6(i32*, %struct.dst_entry*, i32*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local %struct.TYPE_13__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip6_dst_hoplimit(%struct.dst_entry*) #1

declare dso_local i32 @ip6_tnl_encap(%struct.sk_buff*, %struct.ip6_tnl*, i32*, %struct.flowi6*) #1

declare dso_local i32 @init_tel_txopt(%struct.ipv6_tel_txoption*, i32) #1

declare dso_local i32 @ipv6_push_frag_opts(%struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ip6_flow_hdr(%struct.ipv6hdr*, i32, i32) #1

declare dso_local i32 @ip6_make_flowlabel(%struct.net*, %struct.sk_buff*, i32, i32, %struct.flowi6*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ip6tunnel_xmit(i32*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
