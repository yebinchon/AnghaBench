; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_forward.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_output.c_ip6_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.inet6_dev = type { i32 }
%struct.dst_entry = type { %struct.TYPE_10__* }
%struct.ipv6hdr = type { i32, i32, %struct.in6_addr }
%struct.in6_addr = type { i32 }
%struct.inet6_skb_parm = type { i32, i64, i64, i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.inet_peer = type { i32 }
%struct.rt6_info = type { i32, %struct.in6_addr }

@PACKET_HOST = common dso_local global i64 0, align 8
@XFRM_POLICY_FWD = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4
@IP6SKB_ROUTERALERT = common dso_local global i32 0, align 4
@ICMPV6_TIME_EXCEED = common dso_local global i32 0, align 4
@ICMPV6_EXC_HOPLIMIT = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@nd_tbl = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@IPV6_ADDR_MULTICAST = common dso_local global i32 0, align 4
@IPV6_ADDR_LOOPBACK = common dso_local global i32 0, align 4
@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_NOT_NEIGHBOUR = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@IPSTATS_MIB_INTOOBIGERRORS = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@ip6_forward_finish = common dso_local global i32 0, align 4
@IPSTATS_MIB_INADDRERRORS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_forward(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_dev*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.inet6_skb_parm*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca %struct.inet_peer*, align 8
  %13 = alloca %struct.rt6_info*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = call %struct.inet6_dev* @__in6_dev_get_safely(%struct.TYPE_10__* %17)
  store %struct.inet6_dev* %18, %struct.inet6_dev** %4, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %19)
  store %struct.dst_entry* %20, %struct.dst_entry** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %21)
  store %struct.ipv6hdr* %22, %struct.ipv6hdr** %6, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %23)
  store %struct.inet6_skb_parm* %24, %struct.inet6_skb_parm** %7, align 8
  %25 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = call %struct.net* @dev_net(%struct.TYPE_10__* %27)
  store %struct.net* %28, %struct.net** %8, align 8
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %310

37:                                               ; preds = %1
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PACKET_HOST, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %315

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %315

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = call i64 @skb_warn_if_lro(%struct.sk_buff* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %315

56:                                               ; preds = %51
  %57 = load i32, i32* @XFRM_POLICY_FWD, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = call i32 @xfrm6_policy_check(i32* null, i32 %57, %struct.sk_buff* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.net*, %struct.net** %8, align 8
  %63 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %64 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %65 = call i32 @__IP6_INC_STATS(%struct.net* %62, %struct.inet6_dev* %63, i32 %64)
  br label %315

66:                                               ; preds = %56
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @skb_forward_csum(%struct.sk_buff* %67)
  %69 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %70 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IP6SKB_ROUTERALERT, align 4
  %73 = and i32 %71, %72
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %79 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ntohs(i32 %80)
  %82 = call i64 @ip6_call_ra_chain(%struct.sk_buff* %77, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %320

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %66
  %87 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %88 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 1
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %93 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 2
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %96, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = load i32, i32* @ICMPV6_TIME_EXCEED, align 4
  %99 = load i32, i32* @ICMPV6_EXC_HOPLIMIT, align 4
  %100 = call i32 @icmpv6_send(%struct.sk_buff* %97, i32 %98, i32 %99, i64 0)
  %101 = load %struct.net*, %struct.net** %8, align 8
  %102 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %103 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %104 = call i32 @__IP6_INC_STATS(%struct.net* %101, %struct.inet6_dev* %102, i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %106 = call i32 @kfree_skb(%struct.sk_buff* %105)
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %320

109:                                              ; preds = %86
  %110 = load %struct.net*, %struct.net** %8, align 8
  %111 = getelementptr inbounds %struct.net, %struct.net* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %144

117:                                              ; preds = %109
  %118 = load %struct.net*, %struct.net** %8, align 8
  %119 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %120 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %119, i32 0, i32 2
  %121 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 2
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = call i64 @pneigh_lookup(i32* @nd_tbl, %struct.net* %118, %struct.in6_addr* %120, %struct.TYPE_10__* %123, i32 0)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %117
  %127 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %128 = call i32 @ip6_forward_proxy_check(%struct.sk_buff* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %133 = call i32 @ip6_input(%struct.sk_buff* %132)
  store i32 %133, i32* %2, align 4
  br label %320

134:                                              ; preds = %126
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.net*, %struct.net** %8, align 8
  %139 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %140 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %141 = call i32 @__IP6_INC_STATS(%struct.net* %138, %struct.inet6_dev* %139, i32 %140)
  br label %315

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %117, %109
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = call i32 @xfrm6_route_forward(%struct.sk_buff* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %153, label %148

148:                                              ; preds = %144
  %149 = load %struct.net*, %struct.net** %8, align 8
  %150 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %151 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %152 = call i32 @__IP6_INC_STATS(%struct.net* %149, %struct.inet6_dev* %150, i32 %151)
  br label %315

153:                                              ; preds = %144
  %154 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %155 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %154)
  store %struct.dst_entry* %155, %struct.dst_entry** %5, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %157 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %156)
  %158 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %161 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %159, %164
  br i1 %165, label %166, label %214

166:                                              ; preds = %153
  %167 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %7, align 8
  %168 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %214

171:                                              ; preds = %166
  %172 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %173 = call i32 @skb_sec_path(%struct.sk_buff* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %214, label %175

175:                                              ; preds = %171
  store %struct.in6_addr* null, %struct.in6_addr** %11, align 8
  %176 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %177 = bitcast %struct.dst_entry* %176 to %struct.rt6_info*
  store %struct.rt6_info* %177, %struct.rt6_info** %13, align 8
  %178 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %179 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @RTF_GATEWAY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load %struct.rt6_info*, %struct.rt6_info** %13, align 8
  %186 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %185, i32 0, i32 1
  store %struct.in6_addr* %186, %struct.in6_addr** %11, align 8
  br label %190

187:                                              ; preds = %175
  %188 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %189 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %188, i32 0, i32 2
  store %struct.in6_addr* %189, %struct.in6_addr** %11, align 8
  br label %190

190:                                              ; preds = %187, %184
  %191 = load %struct.net*, %struct.net** %8, align 8
  %192 = getelementptr inbounds %struct.net, %struct.net* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %196 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %195, i32 0, i32 2
  %197 = call %struct.inet_peer* @inet_getpeer_v6(i32 %194, %struct.in6_addr* %196, i32 1)
  store %struct.inet_peer* %197, %struct.inet_peer** %12, align 8
  %198 = load %struct.inet_peer*, %struct.inet_peer** %12, align 8
  %199 = load i32, i32* @HZ, align 4
  %200 = mul nsw i32 1, %199
  %201 = call i64 @inet_peer_xrlim_allow(%struct.inet_peer* %198, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %190
  %204 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %205 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %206 = call i32 @ndisc_send_redirect(%struct.sk_buff* %204, %struct.in6_addr* %205)
  br label %207

207:                                              ; preds = %203, %190
  %208 = load %struct.inet_peer*, %struct.inet_peer** %12, align 8
  %209 = icmp ne %struct.inet_peer* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load %struct.inet_peer*, %struct.inet_peer** %12, align 8
  %212 = call i32 @inet_putpeer(%struct.inet_peer* %211)
  br label %213

213:                                              ; preds = %210, %207
  br label %240

214:                                              ; preds = %171, %166, %153
  %215 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %216 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %215, i32 0, i32 1
  %217 = call i32 @ipv6_addr_type(i32* %216)
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %228, label %221

221:                                              ; preds = %214
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* @IPV6_ADDR_MULTICAST, align 4
  %224 = load i32, i32* @IPV6_ADDR_LOOPBACK, align 4
  %225 = or i32 %223, %224
  %226 = and i32 %222, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %221, %214
  br label %310

229:                                              ; preds = %221
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %236 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %237 = load i32, i32* @ICMPV6_NOT_NEIGHBOUR, align 4
  %238 = call i32 @icmpv6_send(%struct.sk_buff* %235, i32 %236, i32 %237, i64 0)
  br label %310

239:                                              ; preds = %229
  br label %240

240:                                              ; preds = %239, %213
  %241 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %242 = call i64 @ip6_dst_mtu_forward(%struct.dst_entry* %241)
  store i64 %242, i64* %9, align 8
  %243 = load i64, i64* %9, align 8
  %244 = load i64, i64* @IPV6_MIN_MTU, align 8
  %245 = icmp slt i64 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = load i64, i64* @IPV6_MIN_MTU, align 8
  store i64 %247, i64* %9, align 8
  br label %248

248:                                              ; preds = %246, %240
  %249 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %250 = load i64, i64* %9, align 8
  %251 = call i64 @ip6_pkt_too_big(%struct.sk_buff* %249, i64 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %276

253:                                              ; preds = %248
  %254 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %255 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %254, i32 0, i32 0
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %258 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %257, i32 0, i32 2
  store %struct.TYPE_10__* %256, %struct.TYPE_10__** %258, align 8
  %259 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %260 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %261 = load i64, i64* %9, align 8
  %262 = call i32 @icmpv6_send(%struct.sk_buff* %259, i32 %260, i32 0, i64 %261)
  %263 = load %struct.net*, %struct.net** %8, align 8
  %264 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %265 = load i32, i32* @IPSTATS_MIB_INTOOBIGERRORS, align 4
  %266 = call i32 @__IP6_INC_STATS(%struct.net* %263, %struct.inet6_dev* %264, i32 %265)
  %267 = load %struct.net*, %struct.net** %8, align 8
  %268 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %269 = call %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry* %268)
  %270 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %271 = call i32 @__IP6_INC_STATS(%struct.net* %267, %struct.inet6_dev* %269, i32 %270)
  %272 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %273 = call i32 @kfree_skb(%struct.sk_buff* %272)
  %274 = load i32, i32* @EMSGSIZE, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %2, align 4
  br label %320

276:                                              ; preds = %248
  %277 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %278 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %279 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %278, i32 0, i32 0
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i64 @skb_cow(%struct.sk_buff* %277, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %276
  %286 = load %struct.net*, %struct.net** %8, align 8
  %287 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %288 = call %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry* %287)
  %289 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %290 = call i32 @__IP6_INC_STATS(%struct.net* %286, %struct.inet6_dev* %288, i32 %289)
  br label %315

291:                                              ; preds = %276
  %292 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %293 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %292)
  store %struct.ipv6hdr* %293, %struct.ipv6hdr** %6, align 8
  %294 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %295 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* @NFPROTO_IPV6, align 4
  %299 = load i32, i32* @NF_INET_FORWARD, align 4
  %300 = load %struct.net*, %struct.net** %8, align 8
  %301 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %302 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %303 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %302, i32 0, i32 2
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %303, align 8
  %305 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %306 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %305, i32 0, i32 0
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = load i32, i32* @ip6_forward_finish, align 4
  %309 = call i32 @NF_HOOK(i32 %298, i32 %299, %struct.net* %300, i32* null, %struct.sk_buff* %301, %struct.TYPE_10__* %304, %struct.TYPE_10__* %307, i32 %308)
  store i32 %309, i32* %2, align 4
  br label %320

310:                                              ; preds = %234, %228, %36
  %311 = load %struct.net*, %struct.net** %8, align 8
  %312 = load %struct.inet6_dev*, %struct.inet6_dev** %4, align 8
  %313 = load i32, i32* @IPSTATS_MIB_INADDRERRORS, align 4
  %314 = call i32 @__IP6_INC_STATS(%struct.net* %311, %struct.inet6_dev* %312, i32 %313)
  br label %315

315:                                              ; preds = %310, %285, %148, %137, %61, %55, %50, %43
  %316 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %317 = call i32 @kfree_skb(%struct.sk_buff* %316)
  %318 = load i32, i32* @EINVAL, align 4
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %2, align 4
  br label %320

320:                                              ; preds = %315, %291, %253, %131, %91, %84
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local %struct.inet6_dev* @__in6_dev_get_safely(%struct.TYPE_10__*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.TYPE_10__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_warn_if_lro(%struct.sk_buff*) #1

declare dso_local i32 @xfrm6_policy_check(i32*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local i64 @ip6_call_ra_chain(%struct.sk_buff*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @pneigh_lookup(i32*, %struct.net*, %struct.in6_addr*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ip6_forward_proxy_check(%struct.sk_buff*) #1

declare dso_local i32 @ip6_input(%struct.sk_buff*) #1

declare dso_local i32 @xfrm6_route_forward(%struct.sk_buff*) #1

declare dso_local i32 @skb_sec_path(%struct.sk_buff*) #1

declare dso_local %struct.inet_peer* @inet_getpeer_v6(i32, %struct.in6_addr*, i32) #1

declare dso_local i64 @inet_peer_xrlim_allow(%struct.inet_peer*, i32) #1

declare dso_local i32 @ndisc_send_redirect(%struct.sk_buff*, %struct.in6_addr*) #1

declare dso_local i32 @inet_putpeer(%struct.inet_peer*) #1

declare dso_local i32 @ipv6_addr_type(i32*) #1

declare dso_local i64 @ip6_dst_mtu_forward(%struct.dst_entry*) #1

declare dso_local i64 @ip6_pkt_too_big(%struct.sk_buff*, i64) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.dst_entry*) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, i32*, %struct.sk_buff*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
