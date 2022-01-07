; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { i32, %struct.TYPE_7__*, i32, i64, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { %struct.TYPE_7__*, i32, i64, i32 }
%struct.tnl_ptk_info = type { i32, i32 }
%struct.metadata_dst = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.dst_entry = type { i32 }

@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"non-ECT from %pI4 with TOS=%#x\0A\00", align 1
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_rcv(%struct.ip_tunnel* %0, %struct.sk_buff* %1, %struct.tnl_ptk_info* %2, %struct.metadata_dst* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_tunnel*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tnl_ptk_info*, align 8
  %10 = alloca %struct.metadata_dst*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcpu_sw_netstats*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i32, align 4
  store %struct.ip_tunnel* %0, %struct.ip_tunnel** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.tnl_ptk_info* %2, %struct.tnl_ptk_info** %9, align 8
  store %struct.metadata_dst* %3, %struct.metadata_dst** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %15)
  store %struct.iphdr* %16, %struct.iphdr** %13, align 8
  %17 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %9, align 8
  %18 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TUNNEL_CSUM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %5
  %24 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %25 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TUNNEL_CSUM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %23, %5
  %32 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %9, align 8
  %33 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TUNNEL_CSUM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %40 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TUNNEL_CSUM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %38, %23
  %47 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %48 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %230

61:                                               ; preds = %38, %31
  %62 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %63 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @TUNNEL_SEQ, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %114

69:                                               ; preds = %61
  %70 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %9, align 8
  %71 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TUNNEL_SEQ, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %69
  %77 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %78 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %76
  %82 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %9, align 8
  %83 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ntohl(i32 %84)
  %86 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %87 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %81, %69
  %92 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %93 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %100 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %99, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %230

106:                                              ; preds = %81, %76
  %107 = load %struct.tnl_ptk_info*, %struct.tnl_ptk_info** %9, align 8
  %108 = getelementptr inbounds %struct.tnl_ptk_info, %struct.tnl_ptk_info* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ntohl(i32 %109)
  %111 = add nsw i64 %110, 1
  %112 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %113 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %112, i32 0, i32 3
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %106, %61
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = call i32 @skb_reset_network_header(%struct.sk_buff* %115)
  %117 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = call i32 @IP_ECN_decapsulate(%struct.iphdr* %117, %struct.sk_buff* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %152

123:                                              ; preds = %114
  %124 = load i32, i32* %11, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %128 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %127, i32 0, i32 1
  %129 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %130 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %128, i32 %131)
  br label %133

133:                                              ; preds = %126, %123
  %134 = load i32, i32* %14, align 4
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %151

136:                                              ; preds = %133
  %137 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %138 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %145 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %144, i32 0, i32 1
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 4
  br label %230

151:                                              ; preds = %133
  br label %152

152:                                              ; preds = %151, %114
  %153 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %154 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %153, i32 0, i32 1
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %157)
  store %struct.pcpu_sw_netstats* %158, %struct.pcpu_sw_netstats** %12, align 8
  %159 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %160 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %159, i32 0, i32 0
  %161 = call i32 @u64_stats_update_begin(i32* %160)
  %162 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %163 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %170 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %172, %168
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %170, align 4
  %175 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %12, align 8
  %176 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %175, i32 0, i32 0
  %177 = call i32 @u64_stats_update_end(i32* %176)
  %178 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %179 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %180 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %183 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %182, i32 0, i32 1
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = call i32 @dev_net(%struct.TYPE_7__* %184)
  %186 = call i32 @net_eq(i32 %181, i32 %185)
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = zext i1 %188 to i32
  %190 = call i32 @skb_scrub_packet(%struct.sk_buff* %178, i32 %189)
  %191 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %192 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %191, i32 0, i32 1
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @ARPHRD_ETHER, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %211

198:                                              ; preds = %152
  %199 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %200 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %201 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %200, i32 0, i32 1
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = call i32 @eth_type_trans(%struct.sk_buff* %199, %struct.TYPE_7__* %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 8
  %206 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %207 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %208 = call i32 @eth_hdr(%struct.sk_buff* %207)
  %209 = load i32, i32* @ETH_HLEN, align 4
  %210 = call i32 @skb_postpull_rcsum(%struct.sk_buff* %206, i32 %208, i32 %209)
  br label %217

211:                                              ; preds = %152
  %212 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %213 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %212, i32 0, i32 1
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 0
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** %216, align 8
  br label %217

217:                                              ; preds = %211, %198
  %218 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %219 = icmp ne %struct.metadata_dst* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %222 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %223 = bitcast %struct.metadata_dst* %222 to %struct.dst_entry*
  %224 = call i32 @skb_dst_set(%struct.sk_buff* %221, %struct.dst_entry* %223)
  br label %225

225:                                              ; preds = %220, %217
  %226 = load %struct.ip_tunnel*, %struct.ip_tunnel** %7, align 8
  %227 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %226, i32 0, i32 0
  %228 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %229 = call i32 @gro_cells_receive(i32* %227, %struct.sk_buff* %228)
  store i32 0, i32* %6, align 4
  br label %240

230:                                              ; preds = %136, %91, %46
  %231 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %232 = icmp ne %struct.metadata_dst* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load %struct.metadata_dst*, %struct.metadata_dst** %10, align 8
  %235 = bitcast %struct.metadata_dst* %234 to %struct.dst_entry*
  %236 = call i32 @dst_release(%struct.dst_entry* %235)
  br label %237

237:                                              ; preds = %233, %230
  %238 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %239 = call i32 @kfree_skb(%struct.sk_buff* %238)
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %237, %225
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @IP_ECN_decapsulate(%struct.iphdr*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32*, i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_7__*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_7__*) #1

declare dso_local i32 @skb_postpull_rcsum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @gro_cells_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
