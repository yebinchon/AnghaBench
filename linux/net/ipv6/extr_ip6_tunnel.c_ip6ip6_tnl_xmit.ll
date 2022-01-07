; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6ip6_tnl_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6ip6_tnl_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.flowi6 = type { i32, i32, i32, i64, i32, i32 }
%struct.ip_tunnel_info = type { i32, %struct.ip_tunnel_key }
%struct.ip_tunnel_key = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ipv6_tlv_tnl_enc_lim = type { i32 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IP_TUNNEL_INFO_TX = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@ICMPV6_PARAMPROB = common dso_local global i32 0, align 4
@ICMPV6_HDR_FIELD = common dso_local global i32 0, align 4
@IP6_TNL_F_IGN_ENCAP_LIMIT = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_TCLASS = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_FLOWLABEL = common dso_local global i32 0, align 4
@IP6_TNL_F_USE_ORIG_FWMARK = common dso_local global i32 0, align 4
@SKB_GSO_IPXIP6 = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ip6ip6_tnl_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6ip6_tnl_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ip6_tnl*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.flowi6, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ip_tunnel_info*, align 8
  %16 = alloca %struct.ip_tunnel_key*, align 8
  %17 = alloca %struct.ipv6_tlv_tnl_enc_lim*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %18)
  store %struct.ip6_tnl* %19, %struct.ip6_tnl** %6, align 8
  store i32 -1, i32* %8, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %20)
  store %struct.ipv6hdr* %21, %struct.ipv6hdr** %7, align 8
  %22 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %23 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @READ_ONCE(i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @IPPROTO_IPV6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %2
  %34 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %36 = call i64 @ip6_tnl_addr_conflict(%struct.ip6_tnl* %34, %struct.ipv6hdr* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %30
  store i32 -1, i32* %3, align 4
  br label %235

39:                                               ; preds = %33
  %40 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %41 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %39
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff* %46)
  store %struct.ip_tunnel_info* %47, %struct.ip_tunnel_info** %15, align 8
  %48 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %15, align 8
  %49 = icmp ne %struct.ip_tunnel_info* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %15, align 8
  %52 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IP_TUNNEL_INFO_TX, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %15, align 8
  %59 = call i64 @ip_tunnel_info_af(%struct.ip_tunnel_info* %58)
  %60 = load i64, i64* @AF_INET6, align 8
  %61 = icmp ne i64 %59, %60
  br label %62

62:                                               ; preds = %57, %50, %45
  %63 = phi i1 [ true, %50 ], [ true, %45 ], [ %61, %57 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %235

68:                                               ; preds = %62
  %69 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %15, align 8
  %70 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %69, i32 0, i32 1
  store %struct.ip_tunnel_key* %70, %struct.ip_tunnel_key** %16, align 8
  %71 = call i32 @memset(%struct.flowi6* %10, i32 0, i32 32)
  %72 = load i64, i64* @IPPROTO_IPV6, align 8
  %73 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 3
  store i64 %72, i64* %73, align 8
  %74 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %75 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 5
  store i32 %78, i32* %79, align 4
  %80 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 4
  store i32 %84, i32* %85, align 8
  %86 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.ip_tunnel_key*, %struct.ip_tunnel_key** %16, align 8
  %91 = getelementptr inbounds %struct.ip_tunnel_key, %struct.ip_tunnel_key* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  br label %197

93:                                               ; preds = %39
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32* @skb_network_header(%struct.sk_buff* %95)
  %97 = call i64 @ip6_tnl_parse_tlv_enc_lim(%struct.sk_buff* %94, i32* %96)
  store i64 %97, i64* %9, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %98)
  store %struct.ipv6hdr* %99, %struct.ipv6hdr** %7, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp ugt i64 %100, 0
  br i1 %101, label %102, label %125

102:                                              ; preds = %93
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call i32* @skb_network_header(%struct.sk_buff* %103)
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = bitcast i32* %106 to i8*
  %108 = bitcast i8* %107 to %struct.ipv6_tlv_tnl_enc_lim*
  store %struct.ipv6_tlv_tnl_enc_lim* %108, %struct.ipv6_tlv_tnl_enc_lim** %17, align 8
  %109 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %17, align 8
  %110 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = load i32, i32* @ICMPV6_PARAMPROB, align 4
  %116 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %117 = load i64, i64* %9, align 8
  %118 = add i64 %117, 2
  %119 = call i32 @icmpv6_send(%struct.sk_buff* %114, i32 %115, i32 %116, i64 %118)
  store i32 -1, i32* %3, align 4
  br label %235

120:                                              ; preds = %102
  %121 = load %struct.ipv6_tlv_tnl_enc_lim*, %struct.ipv6_tlv_tnl_enc_lim** %17, align 8
  %122 = getelementptr inbounds %struct.ipv6_tlv_tnl_enc_lim, %struct.ipv6_tlv_tnl_enc_lim* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %139

125:                                              ; preds = %93
  %126 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %127 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IP6_TNL_F_IGN_ENCAP_LIMIT, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %125
  %134 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %135 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %133, %125
  br label %139

139:                                              ; preds = %138, %120
  %140 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %141 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = call i32 @memcpy(%struct.flowi6* %10, i32* %143, i32 32)
  %145 = load i64, i64* @IPPROTO_IPV6, align 8
  %146 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 3
  store i64 %145, i64* %146, align 8
  %147 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %148 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IP6_TNL_F_USE_ORIG_TCLASS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %139
  %155 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %156 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %155)
  store i32 %156, i32* %11, align 4
  br label %163

157:                                              ; preds = %139
  %158 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %159 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ip6_tclass(i32 %161)
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %157, %154
  %164 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %165 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @IP6_TNL_F_USE_ORIG_FLOWLABEL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %173 = call i32 @ip6_flowlabel(%struct.ipv6hdr* %172)
  %174 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %173
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %171, %163
  %178 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %179 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @IP6_TNL_F_USE_ORIG_FWMARK, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %177
  %186 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 1
  store i32 %188, i32* %189, align 4
  br label %196

190:                                              ; preds = %177
  %191 = load %struct.ip6_tnl*, %struct.ip6_tnl** %6, align 8
  %192 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 1
  store i32 %194, i32* %195, align 4
  br label %196

196:                                              ; preds = %190, %185
  br label %197

197:                                              ; preds = %196, %68
  %198 = load %struct.net_device*, %struct.net_device** %5, align 8
  %199 = call i32 @dev_net(%struct.net_device* %198)
  %200 = call i32 @sock_net_uid(i32 %199, i32* null)
  %201 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %10, i32 0, i32 0
  store i32 %200, i32* %201, align 8
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %204 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %203)
  %205 = call i32 @INET_ECN_encapsulate(i32 %202, i32 %204)
  store i32 %205, i32* %11, align 4
  %206 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %207 = load i32, i32* @SKB_GSO_IPXIP6, align 4
  %208 = call i64 @iptunnel_handle_offloads(%struct.sk_buff* %206, i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %197
  store i32 -1, i32* %3, align 4
  br label %235

211:                                              ; preds = %197
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = load i64, i64* @IPPROTO_IPV6, align 8
  %214 = call i32 @skb_set_inner_ipproto(%struct.sk_buff* %212, i64 %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %216 = load %struct.net_device*, %struct.net_device** %5, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %8, align 4
  %219 = load i64, i64* @IPPROTO_IPV6, align 8
  %220 = call i32 @ip6_tnl_xmit(%struct.sk_buff* %215, %struct.net_device* %216, i32 %217, %struct.flowi6* %10, i32 %218, i64* %12, i64 %219)
  store i32 %220, i32* %14, align 4
  %221 = load i32, i32* %14, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %211
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* @EMSGSIZE, align 4
  %226 = sub nsw i32 0, %225
  %227 = icmp eq i32 %224, %226
  br i1 %227, label %228, label %233

228:                                              ; preds = %223
  %229 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %230 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %231 = load i64, i64* %12, align 8
  %232 = call i32 @icmpv6_send(%struct.sk_buff* %229, i32 %230, i32 0, i64 %231)
  br label %233

233:                                              ; preds = %228, %223
  store i32 -1, i32* %3, align 4
  br label %235

234:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %234, %233, %210, %113, %67, %38
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @ip6_tnl_addr_conflict(%struct.ip6_tnl*, %struct.ipv6hdr*) #1

declare dso_local %struct.ip_tunnel_info* @skb_tunnel_info(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ip_tunnel_info_af(%struct.ip_tunnel_info*) #1

declare dso_local i32 @memset(%struct.flowi6*, i32, i32) #1

declare dso_local i64 @ip6_tnl_parse_tlv_enc_lim(%struct.sk_buff*, i32*) #1

declare dso_local i32* @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @memcpy(%struct.flowi6*, i32*, i32) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @ip6_tclass(i32) #1

declare dso_local i32 @ip6_flowlabel(%struct.ipv6hdr*) #1

declare dso_local i32 @sock_net_uid(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @INET_ECN_encapsulate(i32, i32) #1

declare dso_local i64 @iptunnel_handle_offloads(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_inner_ipproto(%struct.sk_buff*, i64) #1

declare dso_local i32 @ip6_tnl_xmit(%struct.sk_buff*, %struct.net_device*, i32, %struct.flowi6*, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
