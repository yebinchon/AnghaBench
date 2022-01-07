; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_md_tunnel_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_md_tunnel_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.ip_tunnel = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ip_tunnel_info = type { i32, i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.rtable = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.net_device* }
%struct.flowi4 = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.ipv6hdr = type { i32 }

@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@TUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@TUNNEL_DONT_FRAGMENT = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_md_tunnel_xmit(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip_tunnel*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ip_tunnel_info*, align 8
  %12 = alloca %struct.ip_tunnel_key*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca %struct.flowi4, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %20)
  store %struct.ip_tunnel* %21, %struct.ip_tunnel** %9, align 8
  store i64 12, i64* %10, align 8
  store %struct.rtable* null, %struct.rtable** %14, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %22)
  store %struct.ip_tunnel_info* %23, %struct.ip_tunnel_info** %11, align 8
  %24 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %25 = icmp ne %struct.ip_tunnel_info* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %35 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %34)
  %36 = load i64, i64* @AF_INET, align 8
  %37 = icmp ne i64 %35, %36
  br label %38

38:                                               ; preds = %33, %26, %4
  %39 = phi i1 [ true, %26 ], [ true, %4 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %305

44:                                               ; preds = %38
  %45 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %46 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %45, i32 0, i32 2
  store %struct.ip_tunnel_key* %46, %struct.ip_tunnel_key** %12, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call %struct.TYPE_13__* @IPCB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = call i32 @memset(i32* %49, i32 0, i32 4)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i64 @skb_inner_network_header(%struct.sk_buff* %51)
  %53 = inttoptr i64 %52 to %struct.iphdr*
  store %struct.iphdr* %53, %struct.iphdr** %13, align 8
  %54 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %83

59:                                               ; preds = %44
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ETH_P_IP, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %68 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %17, align 4
  br label %82

70:                                               ; preds = %59
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ETH_P_IPV6, align 4
  %75 = call i32 @htons(i32 %74)
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %79 = bitcast %struct.iphdr* %78 to %struct.ipv6hdr*
  %80 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %79)
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %77, %70
  br label %82

82:                                               ; preds = %81, %66
  br label %83

83:                                               ; preds = %82, %44
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %86 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %91 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %96 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @tunnel_id_to_key32(i32 %97)
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @RT_TOS(i32 %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @skb_get_hash(%struct.sk_buff* %104)
  %106 = call i32 @ip_tunnel_init_flow(%struct.flowi4* %15, i32 %84, i32 %89, i32 %94, i32 %98, i32 %100, i32 0, i32 %103, i32 %105)
  %107 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %108 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TUNNEL_ENCAP_NONE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %83
  br label %305

114:                                              ; preds = %83
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %117 = call i32 @ip_tunnel_dst_cache_usable(%struct.sk_buff* %115, %struct.ip_tunnel_info* %116)
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %122 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 1
  %124 = call %struct.rtable* @dst_cache_get_ip4(i32* %122, i32* %123)
  store %struct.rtable* %124, %struct.rtable** %14, align 8
  br label %125

125:                                              ; preds = %120, %114
  %126 = load %struct.rtable*, %struct.rtable** %14, align 8
  %127 = icmp ne %struct.rtable* %126, null
  br i1 %127, label %154, label %128

128:                                              ; preds = %125
  %129 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %130 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.rtable* @ip_route_output_key(i32 %131, %struct.flowi4* %15)
  store %struct.rtable* %132, %struct.rtable** %14, align 8
  %133 = load %struct.rtable*, %struct.rtable** %14, align 8
  %134 = call i64 @IS_ERR(%struct.rtable* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load %struct.net_device*, %struct.net_device** %6, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %305

142:                                              ; preds = %128
  %143 = load i32, i32* %19, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %11, align 8
  %147 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %146, i32 0, i32 1
  %148 = load %struct.rtable*, %struct.rtable** %14, align 8
  %149 = getelementptr inbounds %struct.rtable, %struct.rtable* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @dst_cache_set_ip4(i32* %147, %struct.TYPE_12__* %149, i32 %151)
  br label %153

153:                                              ; preds = %145, %142
  br label %154

154:                                              ; preds = %153, %125
  %155 = load %struct.rtable*, %struct.rtable** %14, align 8
  %156 = getelementptr inbounds %struct.rtable, %struct.rtable* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %struct.net_device*, %struct.net_device** %157, align 8
  %159 = load %struct.net_device*, %struct.net_device** %6, align 8
  %160 = icmp eq %struct.net_device* %158, %159
  br i1 %160, label %161, label %169

161:                                              ; preds = %154
  %162 = load %struct.rtable*, %struct.rtable** %14, align 8
  %163 = call i32 @ip_rt_put(%struct.rtable* %162)
  %164 = load %struct.net_device*, %struct.net_device** %6, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  br label %305

169:                                              ; preds = %154
  %170 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %171 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @TUNNEL_DONT_FRAGMENT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i32, i32* @IP_DF, align 4
  %178 = call i32 @htons(i32 %177)
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %176, %169
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = load %struct.rtable*, %struct.rtable** %14, align 8
  %183 = load i32, i32* %16, align 4
  %184 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %187 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @tnl_update_pmtu(%struct.net_device* %180, %struct.sk_buff* %181, %struct.rtable* %182, i32 %183, %struct.iphdr* %184, i32 %185, i32 %190, i32 1)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %179
  %194 = load %struct.rtable*, %struct.rtable** %14, align 8
  %195 = call i32 @ip_rt_put(%struct.rtable* %194)
  br label %305

196:                                              ; preds = %179
  %197 = load i32, i32* %17, align 4
  %198 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = call i32 @ip_tunnel_ecn_encap(i32 %197, %struct.iphdr* %198, %struct.sk_buff* %199)
  store i32 %200, i32* %17, align 4
  %201 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %12, align 8
  %202 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %18, align 4
  %204 = load i32, i32* %18, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %235

206:                                              ; preds = %196
  %207 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @ETH_P_IP, align 4
  %211 = call i32 @htons(i32 %210)
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %215 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %18, align 4
  br label %234

217:                                              ; preds = %206
  %218 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @ETH_P_IPV6, align 4
  %222 = call i32 @htons(i32 %221)
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %217
  %225 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %226 = bitcast %struct.iphdr* %225 to %struct.ipv6hdr*
  %227 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %18, align 4
  br label %233

229:                                              ; preds = %217
  %230 = load %struct.rtable*, %struct.rtable** %14, align 8
  %231 = getelementptr inbounds %struct.rtable, %struct.rtable* %230, i32 0, i32 0
  %232 = call i32 @ip4_dst_hoplimit(%struct.TYPE_12__* %231)
  store i32 %232, i32* %18, align 4
  br label %233

233:                                              ; preds = %229, %224
  br label %234

234:                                              ; preds = %233, %213
  br label %235

235:                                              ; preds = %234, %196
  %236 = load i32, i32* %16, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %252, label %238

238:                                              ; preds = %235
  %239 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @ETH_P_IP, align 4
  %243 = call i32 @htons(i32 %242)
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %238
  %246 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %247 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IP_DF, align 4
  %250 = call i32 @htons(i32 %249)
  %251 = and i32 %248, %250
  store i32 %251, i32* %16, align 4
  br label %252

252:                                              ; preds = %245, %238, %235
  %253 = load %struct.rtable*, %struct.rtable** %14, align 8
  %254 = getelementptr inbounds %struct.rtable, %struct.rtable* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load %struct.net_device*, %struct.net_device** %255, align 8
  %257 = call i64 @LL_RESERVED_SPACE(%struct.net_device* %256)
  %258 = load %struct.rtable*, %struct.rtable** %14, align 8
  %259 = getelementptr inbounds %struct.rtable, %struct.rtable* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = add nsw i64 %257, %261
  %263 = load i64, i64* %10, align 8
  %264 = add nsw i64 %263, %262
  store i64 %264, i64* %10, align 8
  %265 = load i64, i64* %10, align 8
  %266 = load %struct.net_device*, %struct.net_device** %6, align 8
  %267 = getelementptr inbounds %struct.net_device, %struct.net_device* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp sgt i64 %265, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %252
  %271 = load i64, i64* %10, align 8
  %272 = load %struct.net_device*, %struct.net_device** %6, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 0
  store i64 %271, i64* %273, align 8
  br label %274

274:                                              ; preds = %270, %252
  %275 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %276 = load %struct.net_device*, %struct.net_device** %6, align 8
  %277 = getelementptr inbounds %struct.net_device, %struct.net_device* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @skb_cow_head(%struct.sk_buff* %275, i64 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %274
  %282 = load %struct.rtable*, %struct.rtable** %14, align 8
  %283 = call i32 @ip_rt_put(%struct.rtable* %282)
  br label %311

284:                                              ; preds = %274
  %285 = load %struct.rtable*, %struct.rtable** %14, align 8
  %286 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %287 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* %17, align 4
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %16, align 4
  %295 = load %struct.ip_tunnel*, %struct.ip_tunnel** %9, align 8
  %296 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.net_device*, %struct.net_device** %6, align 8
  %299 = call i32 @dev_net(%struct.net_device* %298)
  %300 = call i32 @net_eq(i32 %297, i32 %299)
  %301 = icmp ne i32 %300, 0
  %302 = xor i1 %301, true
  %303 = zext i1 %302 to i32
  %304 = call i32 @iptunnel_xmit(i32* null, %struct.rtable* %285, %struct.sk_buff* %286, i32 %288, i32 %290, i32 %291, i32 %292, i32 %293, i32 %294, i32 %303)
  br label %320

305:                                              ; preds = %193, %161, %136, %113, %43
  %306 = load %struct.net_device*, %struct.net_device** %6, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  br label %317

311:                                              ; preds = %281
  %312 = load %struct.net_device*, %struct.net_device** %6, align 8
  %313 = getelementptr inbounds %struct.net_device, %struct.net_device* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  br label %317

317:                                              ; preds = %311, %305
  %318 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %319 = call i32 @kfree_skb(%struct.sk_buff* %318)
  br label %320

320:                                              ; preds = %317, %284
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @IPCB(%struct.sk_buff*) #1

declare dso_local i64 @skb_inner_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @ip_tunnel_init_flow(%struct.flowi4*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tunnel_id_to_key32(i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @skb_get_hash(%struct.sk_buff*) #1

declare dso_local i32 @ip_tunnel_dst_cache_usable(%struct.sk_buff*, %struct.ip_tunnel_info*) #1

declare dso_local %struct.rtable* @dst_cache_get_ip4(i32*, i32*) #1

declare dso_local %struct.rtable* @ip_route_output_key(i32, %struct.flowi4*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @dst_cache_set_ip4(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i64 @tnl_update_pmtu(%struct.net_device*, %struct.sk_buff*, %struct.rtable*, i32, %struct.iphdr*, i32, i32, i32) #1

declare dso_local i32 @ip_tunnel_ecn_encap(i32, %struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i32 @ip4_dst_hoplimit(%struct.TYPE_12__*) #1

declare dso_local i64 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i64) #1

declare dso_local i32 @iptunnel_xmit(i32*, %struct.rtable*, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
