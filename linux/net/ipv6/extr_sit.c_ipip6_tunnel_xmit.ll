; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ip_tunnel = type { i32, i64, i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.iphdr, i32 }
%struct.iphdr = type { i32, i32, i64, i32, i64 }
%struct.ipv6hdr = type { i32, %struct.in6_addr }
%struct.in6_addr = type { i64* }
%struct.rtable = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.flowi4 = type { i32, i32 }
%struct.neighbour = type { i32 }

@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IFF_ISATAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"nexthop == NULL\0A\00", align 1
@IPV6_ADDR_UNICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_COMPATv4 = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8
@SKB_GSO_IPXIP4 = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IPTUNNEL_ERR_TIMEO = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipip6_tunnel_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip6_tunnel_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip_tunnel*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.ipv6hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.rtable*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.flowi4, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.in6_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.neighbour*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.neighbour*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %27)
  store %struct.ip_tunnel* %28, %struct.ip_tunnel** %6, align 8
  %29 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %30 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store %struct.iphdr* %31, %struct.iphdr** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %32)
  store %struct.ipv6hdr* %33, %struct.ipv6hdr** %8, align 8
  %34 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %35 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load i32, i32* @IPPROTO_IPV6, align 4
  store i32 %45, i32* %20, align 4
  %46 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %47 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 32
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %2
  %55 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %56 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %55)
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %2
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IFF_ISATAP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %107

64:                                               ; preds = %57
  store %struct.neighbour* null, %struct.neighbour** %22, align 8
  store i32 0, i32* %23, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i64 @skb_dst(%struct.sk_buff* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i64 @skb_dst(%struct.sk_buff* %69)
  %71 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %72 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %71, i32 0, i32 1
  %73 = call %struct.neighbour* @dst_neigh_lookup(i64 %70, %struct.in6_addr* %72)
  store %struct.neighbour* %73, %struct.neighbour** %22, align 8
  br label %74

74:                                               ; preds = %68, %64
  %75 = load %struct.neighbour*, %struct.neighbour** %22, align 8
  %76 = icmp ne %struct.neighbour* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %438

79:                                               ; preds = %74
  %80 = load %struct.neighbour*, %struct.neighbour** %22, align 8
  %81 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %80, i32 0, i32 0
  %82 = bitcast i32* %81 to %struct.in6_addr*
  store %struct.in6_addr* %82, %struct.in6_addr** %17, align 8
  %83 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %84 = call i32 @ipv6_addr_type(%struct.in6_addr* %83)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* @IPV6_ADDR_UNICAST, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %79
  %90 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %91 = call i64 @ipv6_addr_is_isatap(%struct.in6_addr* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %95 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %14, align 8
  br label %100

99:                                               ; preds = %89, %79
  store i32 1, i32* %23, align 4
  br label %100

100:                                              ; preds = %99, %93
  %101 = load %struct.neighbour*, %struct.neighbour** %22, align 8
  %102 = call i32 @neigh_release(%struct.neighbour* %101)
  %103 = load i32, i32* %23, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %438

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %57
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %112 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %113 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %112, i32 0, i32 1
  %114 = call i64 @try_6rd(%struct.ip_tunnel* %111, %struct.in6_addr* %113)
  store i64 %114, i64* %14, align 8
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i64, i64* %14, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %167, label %118

118:                                              ; preds = %115
  store %struct.neighbour* null, %struct.neighbour** %24, align 8
  store i32 0, i32* %25, align 4
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call i64 @skb_dst(%struct.sk_buff* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = call i64 @skb_dst(%struct.sk_buff* %123)
  %125 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %126 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %125, i32 0, i32 1
  %127 = call %struct.neighbour* @dst_neigh_lookup(i64 %124, %struct.in6_addr* %126)
  store %struct.neighbour* %127, %struct.neighbour** %24, align 8
  br label %128

128:                                              ; preds = %122, %118
  %129 = load %struct.neighbour*, %struct.neighbour** %24, align 8
  %130 = icmp ne %struct.neighbour* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %128
  %132 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %438

133:                                              ; preds = %128
  %134 = load %struct.neighbour*, %struct.neighbour** %24, align 8
  %135 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %134, i32 0, i32 0
  %136 = bitcast i32* %135 to %struct.in6_addr*
  store %struct.in6_addr* %136, %struct.in6_addr** %17, align 8
  %137 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %138 = call i32 @ipv6_addr_type(%struct.in6_addr* %137)
  store i32 %138, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %143)
  %145 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %144, i32 0, i32 1
  store %struct.in6_addr* %145, %struct.in6_addr** %17, align 8
  %146 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %147 = call i32 @ipv6_addr_type(%struct.in6_addr* %146)
  store i32 %147, i32* %18, align 4
  br label %148

148:                                              ; preds = %142, %133
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @IPV6_ADDR_COMPATv4, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load %struct.in6_addr*, %struct.in6_addr** %17, align 8
  %155 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 3
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %14, align 8
  br label %160

159:                                              ; preds = %148
  store i32 1, i32* %25, align 4
  br label %160

160:                                              ; preds = %159, %153
  %161 = load %struct.neighbour*, %struct.neighbour** %24, align 8
  %162 = call i32 @neigh_release(%struct.neighbour* %161)
  %163 = load i32, i32* %25, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %438

166:                                              ; preds = %160
  br label %167

167:                                              ; preds = %166, %115
  %168 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %169 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %173 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @RT_TOS(i32 %175)
  %177 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %178 = load i32, i32* @IPPROTO_IPV6, align 4
  %179 = load i64, i64* %14, align 8
  %180 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %181 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %184 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @sock_net_uid(i32 %185, i32* null)
  %187 = call i32 @flowi4_init_output(%struct.flowi4* %15, i32 %171, i32 %174, i32 %176, i32 %177, i32 %178, i32 0, i64 %179, i32 %182, i32 0, i32 0, i32 %186)
  %188 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %189 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %188, i32 0, i32 5
  %190 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 1
  %191 = call %struct.rtable* @dst_cache_get_ip4(i32* %189, i32* %190)
  store %struct.rtable* %191, %struct.rtable** %11, align 8
  %192 = load %struct.rtable*, %struct.rtable** %11, align 8
  %193 = icmp ne %struct.rtable* %192, null
  br i1 %193, label %216, label %194

194:                                              ; preds = %167
  %195 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %196 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call %struct.rtable* @ip_route_output_flow(i32 %197, %struct.flowi4* %15, i32* null)
  store %struct.rtable* %198, %struct.rtable** %11, align 8
  %199 = load %struct.rtable*, %struct.rtable** %11, align 8
  %200 = call i64 @IS_ERR(%struct.rtable* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load %struct.net_device*, %struct.net_device** %5, align 8
  %204 = getelementptr inbounds %struct.net_device, %struct.net_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  br label %435

208:                                              ; preds = %194
  %209 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %210 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %209, i32 0, i32 5
  %211 = load %struct.rtable*, %struct.rtable** %11, align 8
  %212 = getelementptr inbounds %struct.rtable, %struct.rtable* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @dst_cache_set_ip4(i32* %210, %struct.TYPE_7__* %212, i32 %214)
  br label %216

216:                                              ; preds = %208, %167
  %217 = load %struct.rtable*, %struct.rtable** %11, align 8
  %218 = getelementptr inbounds %struct.rtable, %struct.rtable* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @RTN_UNICAST, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %216
  %223 = load %struct.rtable*, %struct.rtable** %11, align 8
  %224 = call i32 @ip_rt_put(%struct.rtable* %223)
  %225 = load %struct.net_device*, %struct.net_device** %5, align 8
  %226 = getelementptr inbounds %struct.net_device, %struct.net_device* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %435

230:                                              ; preds = %216
  %231 = load %struct.rtable*, %struct.rtable** %11, align 8
  %232 = getelementptr inbounds %struct.rtable, %struct.rtable* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = load %struct.net_device*, %struct.net_device** %233, align 8
  store %struct.net_device* %234, %struct.net_device** %12, align 8
  %235 = load %struct.net_device*, %struct.net_device** %12, align 8
  %236 = load %struct.net_device*, %struct.net_device** %5, align 8
  %237 = icmp eq %struct.net_device* %235, %236
  br i1 %237, label %238, label %246

238:                                              ; preds = %230
  %239 = load %struct.rtable*, %struct.rtable** %11, align 8
  %240 = call i32 @ip_rt_put(%struct.rtable* %239)
  %241 = load %struct.net_device*, %struct.net_device** %5, align 8
  %242 = getelementptr inbounds %struct.net_device, %struct.net_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 4
  br label %438

246:                                              ; preds = %230
  %247 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %248 = load i32, i32* @SKB_GSO_IPXIP4, align 4
  %249 = call i64 @iptunnel_handle_offloads(%struct.sk_buff* %247, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = load %struct.rtable*, %struct.rtable** %11, align 8
  %253 = call i32 @ip_rt_put(%struct.rtable* %252)
  br label %438

254:                                              ; preds = %246
  %255 = load i64, i64* %10, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %308

257:                                              ; preds = %254
  %258 = load %struct.rtable*, %struct.rtable** %11, align 8
  %259 = getelementptr inbounds %struct.rtable, %struct.rtable* %258, i32 0, i32 1
  %260 = call i32 @dst_mtu(%struct.TYPE_7__* %259)
  %261 = load i32, i32* %21, align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %16, align 4
  %263 = load i32, i32* %16, align 4
  %264 = icmp slt i32 %263, 68
  br i1 %264, label %265, label %273

265:                                              ; preds = %257
  %266 = load %struct.net_device*, %struct.net_device** %5, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  %271 = load %struct.rtable*, %struct.rtable** %11, align 8
  %272 = call i32 @ip_rt_put(%struct.rtable* %271)
  br label %438

273:                                              ; preds = %257
  %274 = load i32, i32* %16, align 4
  %275 = load i32, i32* @IPV6_MIN_MTU, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = load i32, i32* @IPV6_MIN_MTU, align 4
  store i32 %278, i32* %16, align 4
  store i64 0, i64* %10, align 8
  br label %279

279:                                              ; preds = %277, %273
  %280 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %281 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %279
  %287 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %288 = load i32, i32* %16, align 4
  %289 = call i32 @skb_dst_update_pmtu(%struct.sk_buff* %287, i32 %288)
  br label %290

290:                                              ; preds = %286, %279
  %291 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %16, align 4
  %295 = icmp sgt i32 %293, %294
  br i1 %295, label %296, label %307

296:                                              ; preds = %290
  %297 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %298 = call i32 @skb_is_gso(%struct.sk_buff* %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %296
  %301 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %302 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %303 = load i32, i32* %16, align 4
  %304 = call i32 @icmpv6_send(%struct.sk_buff* %301, i32 %302, i32 0, i32 %303)
  %305 = load %struct.rtable*, %struct.rtable** %11, align 8
  %306 = call i32 @ip_rt_put(%struct.rtable* %305)
  br label %438

307:                                              ; preds = %296, %290
  br label %308

308:                                              ; preds = %307, %254
  %309 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %310 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  %312 = icmp sgt i64 %311, 0
  br i1 %312, label %313, label %333

313:                                              ; preds = %308
  %314 = load i32, i32* @jiffies, align 4
  %315 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %316 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @IPTUNNEL_ERR_TIMEO, align 8
  %319 = add nsw i64 %317, %318
  %320 = call i64 @time_before(i32 %314, i64 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %313
  %323 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %324 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, -1
  store i64 %326, i64* %324, align 8
  %327 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %328 = call i32 @dst_link_failure(%struct.sk_buff* %327)
  br label %332

329:                                              ; preds = %313
  %330 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %331 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %330, i32 0, i32 1
  store i64 0, i64* %331, align 8
  br label %332

332:                                              ; preds = %329, %322
  br label %333

333:                                              ; preds = %332, %308
  %334 = load %struct.net_device*, %struct.net_device** %12, align 8
  %335 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %334)
  %336 = load i32, i32* %21, align 4
  %337 = add nsw i32 %335, %336
  store i32 %337, i32* %13, align 4
  %338 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %339 = call i32 @skb_headroom(%struct.sk_buff* %338)
  %340 = load i32, i32* %13, align 4
  %341 = icmp ult i32 %339, %340
  br i1 %341, label %354, label %342

342:                                              ; preds = %333
  %343 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %344 = call i64 @skb_shared(%struct.sk_buff* %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %354, label %346

346:                                              ; preds = %342
  %347 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %348 = call i64 @skb_cloned(%struct.sk_buff* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %388

350:                                              ; preds = %346
  %351 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %352 = call i32 @skb_clone_writable(%struct.sk_buff* %351, i32 0)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %388, label %354

354:                                              ; preds = %350, %342, %333
  %355 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %356 = load i32, i32* %13, align 4
  %357 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %355, i32 %356)
  store %struct.sk_buff* %357, %struct.sk_buff** %26, align 8
  %358 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %359 = icmp ne %struct.sk_buff* %358, null
  br i1 %359, label %371, label %360

360:                                              ; preds = %354
  %361 = load %struct.rtable*, %struct.rtable** %11, align 8
  %362 = call i32 @ip_rt_put(%struct.rtable* %361)
  %363 = load %struct.net_device*, %struct.net_device** %5, align 8
  %364 = getelementptr inbounds %struct.net_device, %struct.net_device* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %365, align 4
  %368 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %369 = call i32 @kfree_skb(%struct.sk_buff* %368)
  %370 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %370, i32* %3, align 4
  br label %447

371:                                              ; preds = %354
  %372 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %373 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %371
  %377 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %378 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %379 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = call i32 @skb_set_owner_w(%struct.sk_buff* %377, i64 %380)
  br label %382

382:                                              ; preds = %376, %371
  %383 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %384 = call i32 @dev_kfree_skb(%struct.sk_buff* %383)
  %385 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %385, %struct.sk_buff** %4, align 8
  %386 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %387 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %386)
  store %struct.ipv6hdr* %387, %struct.ipv6hdr** %8, align 8
  br label %388

388:                                              ; preds = %382, %350, %346
  %389 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %390 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %19, align 4
  %392 = load i32, i32* %19, align 4
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %398

394:                                              ; preds = %388
  %395 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %396 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  store i32 %397, i32* %19, align 4
  br label %398

398:                                              ; preds = %394, %388
  %399 = load i32, i32* %9, align 4
  %400 = load %struct.ipv6hdr*, %struct.ipv6hdr** %8, align 8
  %401 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %400)
  %402 = call i32 @INET_ECN_encapsulate(i32 %399, i32 %401)
  store i32 %402, i32* %9, align 4
  %403 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %404 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %405 = call i64 @ip_tunnel_encap(%struct.sk_buff* %403, %struct.ip_tunnel* %404, i32* %20, %struct.flowi4* %15)
  %406 = icmp slt i64 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %398
  %408 = load %struct.rtable*, %struct.rtable** %11, align 8
  %409 = call i32 @ip_rt_put(%struct.rtable* %408)
  br label %438

410:                                              ; preds = %398
  %411 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %412 = load i32, i32* @IPPROTO_IPV6, align 4
  %413 = call i32 @skb_set_inner_ipproto(%struct.sk_buff* %411, i32 %412)
  %414 = load %struct.rtable*, %struct.rtable** %11, align 8
  %415 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %416 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 0
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* %20, align 4
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* %19, align 4
  %423 = load i64, i64* %10, align 8
  %424 = load %struct.ip_tunnel*, %struct.ip_tunnel** %6, align 8
  %425 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.net_device*, %struct.net_device** %5, align 8
  %428 = call i32 @dev_net(%struct.net_device* %427)
  %429 = call i32 @net_eq(i32 %426, i32 %428)
  %430 = icmp ne i32 %429, 0
  %431 = xor i1 %430, true
  %432 = zext i1 %431 to i32
  %433 = call i32 @iptunnel_xmit(i32* null, %struct.rtable* %414, %struct.sk_buff* %415, i32 %417, i32 %419, i32 %420, i32 %421, i32 %422, i64 %423, i32 %432)
  %434 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %434, i32* %3, align 4
  br label %447

435:                                              ; preds = %222, %202
  %436 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %437 = call i32 @dst_link_failure(%struct.sk_buff* %436)
  br label %438

438:                                              ; preds = %435, %407, %300, %265, %251, %238, %165, %131, %105, %77
  %439 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %440 = call i32 @kfree_skb(%struct.sk_buff* %439)
  %441 = load %struct.net_device*, %struct.net_device** %5, align 8
  %442 = getelementptr inbounds %struct.net_device, %struct.net_device* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %443, align 4
  %446 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %446, i32* %3, align 4
  br label %447

447:                                              ; preds = %438, %410, %360
  %448 = load i32, i32* %3, align 4
  ret i32 %448
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i64 @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(i64, %struct.in6_addr*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

declare dso_local i64 @ipv6_addr_is_isatap(%struct.in6_addr*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i64 @try_6rd(%struct.ip_tunnel*, %struct.in6_addr*) #1

declare dso_local i32 @flowi4_init_output(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @sock_net_uid(i32, i32*) #1

declare dso_local %struct.rtable* @dst_cache_get_ip4(i32*, i32*) #1

declare dso_local %struct.rtable* @ip_route_output_flow(i32, %struct.flowi4*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @dst_cache_set_ip4(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i64 @iptunnel_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_7__*) #1

declare dso_local i32 @skb_dst_update_pmtu(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_clone_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @INET_ECN_encapsulate(i32, i32) #1

declare dso_local i64 @ip_tunnel_encap(%struct.sk_buff*, %struct.ip_tunnel*, i32*, %struct.flowi4*) #1

declare dso_local i32 @skb_set_inner_ipproto(%struct.sk_buff*, i32) #1

declare dso_local i32 @iptunnel_xmit(i32*, %struct.rtable*, %struct.sk_buff*, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
