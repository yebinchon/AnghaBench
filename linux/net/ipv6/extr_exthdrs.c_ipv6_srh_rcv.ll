; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_srh_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_srh_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i64 }
%struct.inet6_skb_parm = type { i32, i32, i64* }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.ipv6_sr_hdr = type { i32, i64, i32, %struct.in6_addr* }
%struct.in6_addr = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.in6_addr }

@NEXTHDR_IPV6 = common dso_local global i64 0, align 8
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@ICMPV6_HDR_FIELD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ICMPV6_TIME_EXCEED = common dso_local global i32 0, align 4
@ICMPV6_EXC_HOPLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipv6_srh_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_srh_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.inet6_skb_parm*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ipv6_sr_hdr*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff* %11)
  store %struct.inet6_skb_parm* %12, %struct.inet6_skb_parm** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.net* @dev_net(i32 %15)
  store %struct.net* %16, %struct.net** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = call i32 @skb_transport_header(%struct.sk_buff* %17)
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.ipv6_sr_hdr*
  store %struct.ipv6_sr_hdr* %20, %struct.ipv6_sr_hdr** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.inet6_dev* @__in6_dev_get(i32 %23)
  store %struct.inet6_dev* %24, %struct.inet6_dev** %7, align 8
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %39 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %37, %1
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  store i32 -1, i32* %2, align 4
  br label %254

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %243, %48
  %50 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %127

54:                                               ; preds = %49
  %55 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NEXTHDR_IPV6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %54
  %61 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %62 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = shl i32 %64, 3
  store i32 %65, i32* %10, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = call i32 @skb_network_header(%struct.sk_buff* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %70 = call i32 @skb_network_header_len(%struct.sk_buff* %69)
  %71 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %66, i32 %68, i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @pskb_pull(%struct.sk_buff* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %60
  %77 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %78 = call i32 @kfree_skb(%struct.sk_buff* %77)
  store i32 -1, i32* %2, align 4
  br label %254

79:                                               ; preds = %60
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = call i32 @skb_transport_header(%struct.sk_buff* %81)
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %80, i32 %82, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %86 = call i32 @skb_reset_network_header(%struct.sk_buff* %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %88 = call i32 @skb_reset_transport_header(%struct.sk_buff* %87)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.net*, %struct.net** %5, align 8
  %96 = call i32 @__skb_tunnel_rx(%struct.sk_buff* %91, i32 %94, %struct.net* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %98 = call i32 @netif_rx(%struct.sk_buff* %97)
  store i32 -1, i32* %2, align 4
  br label %254

99:                                               ; preds = %54
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = call i32 @skb_network_header_len(%struct.sk_buff* %100)
  %102 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %103 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %105 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %108 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %110 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = shl i32 %112, 3
  %114 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %119 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %118, i32 0, i32 1
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %121 = call i32 @skb_network_header(%struct.sk_buff* %120)
  %122 = sext i32 %121 to i64
  %123 = sub i64 0, %122
  %124 = getelementptr inbounds i64, i64* %119, i64 %123
  %125 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %4, align 8
  %126 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %125, i32 0, i32 2
  store i64* %124, i64** %126, align 8
  store i32 1, i32* %2, align 4
  br label %254

127:                                              ; preds = %49
  %128 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %129 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %132 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = ashr i32 %133, 1
  %135 = icmp sge i32 %130, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %127
  %137 = load %struct.net*, %struct.net** %5, align 8
  %138 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %139 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %140 = call i32 @__IP6_INC_STATS(%struct.net* %137, %struct.inet6_dev* %138, i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %142 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %143 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %144 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %143, i32 0, i32 0
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = call i32 @skb_network_header(%struct.sk_buff* %145)
  %147 = sext i32 %146 to i64
  %148 = sub i64 0, %147
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = call i32 @icmpv6_param_prob(%struct.sk_buff* %141, i32 %142, i32* %149)
  store i32 -1, i32* %2, align 4
  br label %254

151:                                              ; preds = %127
  %152 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %153 = call i64 @skb_cloned(%struct.sk_buff* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %151
  %156 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %157 = load i32, i32* @GFP_ATOMIC, align 4
  %158 = call i64 @pskb_expand_head(%struct.sk_buff* %156, i32 0, i32 0, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load %struct.net*, %struct.net** %5, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %163 = call %struct.TYPE_12__* @skb_dst(%struct.sk_buff* %162)
  %164 = call %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_12__* %163)
  %165 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %166 = call i32 @__IP6_INC_STATS(%struct.net* %161, %struct.inet6_dev* %164, i32 %165)
  %167 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %168 = call i32 @kfree_skb(%struct.sk_buff* %167)
  store i32 -1, i32* %2, align 4
  br label %254

169:                                              ; preds = %155
  br label %170

170:                                              ; preds = %169, %151
  %171 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %172 = call i32 @skb_transport_header(%struct.sk_buff* %171)
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to %struct.ipv6_sr_hdr*
  store %struct.ipv6_sr_hdr* %174, %struct.ipv6_sr_hdr** %6, align 8
  %175 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %176 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %176, align 8
  %179 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %180 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %179, i32 0, i32 3
  %181 = load %struct.in6_addr*, %struct.in6_addr** %180, align 8
  %182 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %6, align 8
  %183 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %181, i64 %185
  store %struct.in6_addr* %186, %struct.in6_addr** %8, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %188 = call i32 @skb_push(%struct.sk_buff* %187, i32 4)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %170
  %195 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %196 = call i32 @seg6_update_csum(%struct.sk_buff* %195)
  br label %197

197:                                              ; preds = %194, %170
  %198 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %199 = call %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff* %198)
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8
  %202 = bitcast %struct.in6_addr* %200 to i8*
  %203 = bitcast %struct.in6_addr* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %202, i8* align 4 %203, i64 4, i1 false)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %205 = call i32 @skb_dst_drop(%struct.sk_buff* %204)
  %206 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %207 = call i32 @ip6_route_input(%struct.sk_buff* %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %209 = call %struct.TYPE_12__* @skb_dst(%struct.sk_buff* %208)
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %197
  %214 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %215 = call i32 @dst_input(%struct.sk_buff* %214)
  store i32 -1, i32* %2, align 4
  br label %254

216:                                              ; preds = %197
  %217 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %218 = call %struct.TYPE_12__* @skb_dst(%struct.sk_buff* %217)
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @IFF_LOOPBACK, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %251

226:                                              ; preds = %216
  %227 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %228 = call %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff* %227)
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp sle i32 %230, 1
  br i1 %231, label %232, label %243

232:                                              ; preds = %226
  %233 = load %struct.net*, %struct.net** %5, align 8
  %234 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %235 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %236 = call i32 @__IP6_INC_STATS(%struct.net* %233, %struct.inet6_dev* %234, i32 %235)
  %237 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %238 = load i32, i32* @ICMPV6_TIME_EXCEED, align 4
  %239 = load i32, i32* @ICMPV6_EXC_HOPLIMIT, align 4
  %240 = call i32 @icmpv6_send(%struct.sk_buff* %237, i32 %238, i32 %239, i32 0)
  %241 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %242 = call i32 @kfree_skb(%struct.sk_buff* %241)
  store i32 -1, i32* %2, align 4
  br label %254

243:                                              ; preds = %226
  %244 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %245 = call %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff* %244)
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %246, align 4
  %249 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %250 = call i32 @skb_pull(%struct.sk_buff* %249, i32 4)
  br label %49

251:                                              ; preds = %216
  %252 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %253 = call i32 @dst_input(%struct.sk_buff* %252)
  store i32 -1, i32* %2, align 4
  br label %254

254:                                              ; preds = %251, %232, %213, %160, %136, %99, %79, %76, %45
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local %struct.inet6_skb_parm* @IP6CB(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header_len(%struct.sk_buff*) #1

declare dso_local i32 @pskb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_tunnel_rx(%struct.sk_buff*, i32, %struct.net*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @__IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @icmpv6_param_prob(%struct.sk_buff*, i32, i32*) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.inet6_dev* @ip6_dst_idev(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @seg6_update_csum(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_13__* @ipv6_hdr(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @ip6_route_input(%struct.sk_buff*) #1

declare dso_local i32 @dst_input(%struct.sk_buff*) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
