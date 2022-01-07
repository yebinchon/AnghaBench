; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_deliver_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_deliver_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i64, %struct.TYPE_7__*, %struct.sk_buff*, %struct.ieee80211_sub_if_data* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.sk_buff = type { i32, i32, i32*, i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.net_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i32, i32 }
%struct.sta_info = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@IEEE80211_SDATA_DONT_BRIDGE_PACKETS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: failed to clone multicast frame\0A\00", align 1
@ETH_P_802_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_data*)* @ieee80211_deliver_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_deliver_skb(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca %struct.ieee80211_rx_data*, align 8
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %2, align 8
  %12 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %12, i32 0, i32 3
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %3, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 3
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  %18 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %18, i32 0, i32 2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to %struct.ethhdr*
  store %struct.ethhdr* %23, %struct.ethhdr** %7, align 8
  %24 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %24, i32 0, i32 2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %25, align 8
  store %struct.sk_buff* %26, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ieee80211_rx_stats(%struct.net_device* %27, i32 %30)
  %32 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %1
  %37 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @u64_stats_update_begin(i32* %41)
  %43 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @u64_stats_update_end(i32* %59)
  br label %61

61:                                               ; preds = %36, %1
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %70 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %146

75:                                               ; preds = %68, %61
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IEEE80211_SDATA_DONT_BRIDGE_PACKETS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %146, label %82

82:                                               ; preds = %75
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %146, label %96

96:                                               ; preds = %89, %82
  %97 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %98 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @is_multicast_ether_addr(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %104 = call i64 @ieee80211_vif_get_num_mcast_if(%struct.ieee80211_sub_if_data* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = load i32, i32* @GFP_ATOMIC, align 4
  %109 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %107, i32 %108)
  store %struct.sk_buff* %109, %struct.sk_buff** %6, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = icmp ne %struct.sk_buff* %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %106
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @net_info_ratelimited(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  br label %145

118:                                              ; preds = %102, %96
  %119 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %120 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @is_multicast_ether_addr(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %118
  %125 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %126 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %129 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ether_addr_equal(i32 %127, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %124
  %134 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %135 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %136 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %134, i32 %137)
  store %struct.sta_info* %138, %struct.sta_info** %8, align 8
  %139 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %140 = icmp ne %struct.sta_info* %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %142, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %143

143:                                              ; preds = %141, %133
  br label %144

144:                                              ; preds = %143, %124, %118
  br label %145

145:                                              ; preds = %144, %117
  br label %146

146:                                              ; preds = %145, %89, %75, %68
  %147 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %148 = icmp ne %struct.sk_buff* %147, null
  br i1 %148, label %149, label %193

149:                                              ; preds = %146
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 8
  %154 = ptrtoint i32* %153 to i64
  %155 = and i64 %154, 3
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %192

159:                                              ; preds = %149
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = call i32 @skb_headroom(%struct.sk_buff* %160)
  %162 = icmp slt i32 %161, 3
  %163 = zext i1 %162 to i32
  %164 = call i64 @WARN_ON(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = call i32 @dev_kfree_skb(%struct.sk_buff* %167)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %191

169:                                              ; preds = %159
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %10, align 8
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call i64 @skb_headlen(%struct.sk_buff* %173)
  store i64 %174, i64* %11, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = sext i32 %175 to i64
  %180 = sub i64 0, %179
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32* %181, i32** %177, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = load i64, i64* %11, align 8
  %187 = call i32 @memmove(i32* %184, i32* %185, i64 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = load i64, i64* %11, align 8
  %190 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %188, i64 %189)
  br label %191

191:                                              ; preds = %169, %166
  br label %192

192:                                              ; preds = %191, %149
  br label %193

193:                                              ; preds = %192, %146
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = icmp ne %struct.sk_buff* %194, null
  br i1 %195, label %196, label %205

196:                                              ; preds = %193
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = load %struct.net_device*, %struct.net_device** %4, align 8
  %199 = call i32 @eth_type_trans(%struct.sk_buff* %197, %struct.net_device* %198)
  %200 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %204 = call i32 @ieee80211_deliver_skb_to_local_stack(%struct.sk_buff* %202, %struct.ieee80211_rx_data* %203)
  br label %205

205:                                              ; preds = %196, %193
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = icmp ne %struct.sk_buff* %206, null
  br i1 %207, label %208, label %223

208:                                              ; preds = %205
  %209 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 256
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* @ETH_P_802_3, align 4
  %214 = call i32 @htons(i32 %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  %217 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %218 = call i32 @skb_reset_network_header(%struct.sk_buff* %217)
  %219 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %220 = call i32 @skb_reset_mac_header(%struct.sk_buff* %219)
  %221 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %222 = call i32 @dev_queue_xmit(%struct.sk_buff* %221)
  br label %223

223:                                              ; preds = %208, %205
  ret void
}

declare dso_local i32 @ieee80211_rx_stats(%struct.net_device*, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @ieee80211_vif_get_num_mcast_if(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_info_ratelimited(i8*, i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @ieee80211_deliver_skb_to_local_stack(%struct.sk_buff*, %struct.ieee80211_rx_data*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
