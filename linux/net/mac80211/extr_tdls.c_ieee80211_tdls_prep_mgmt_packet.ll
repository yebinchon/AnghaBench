; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_prep_mgmt_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_prep_mgmt_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.sk_buff*, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sta_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@WLAN_STA_TDLS_INITIATOR = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@WLAN_STA_TDLS_PEER_AUTH = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_MLME_CONN_TX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i32, i32, i32, i32*, i64, i32, %struct.cfg80211_chan_def*)* @ieee80211_tdls_prep_mgmt_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tdls_prep_mgmt_packet(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i64 %9, i32 %10, %struct.cfg80211_chan_def* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.wiphy*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.cfg80211_chan_def*, align 8
  %26 = alloca %struct.ieee80211_sub_if_data*, align 8
  %27 = alloca %struct.sk_buff*, align 8
  %28 = alloca %struct.sta_info*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %14, align 8
  store %struct.net_device* %1, %struct.net_device** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32* %8, i32** %22, align 8
  store i64 %9, i64* %23, align 8
  store i32 %10, i32* %24, align 4
  store %struct.cfg80211_chan_def* %11, %struct.cfg80211_chan_def** %25, align 8
  %32 = load %struct.net_device*, %struct.net_device** %15, align 8
  %33 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %32)
  store %struct.ieee80211_sub_if_data* %33, %struct.ieee80211_sub_if_data** %26, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %27, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %34 = call i32 (...) @rcu_read_lock()
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %35, i32* %36)
  store %struct.sta_info* %37, %struct.sta_info** %28, align 8
  %38 = load i32, i32* %17, align 4
  switch i32 %38, label %64 [
    i32 130, label %39
    i32 131, label %50
    i32 132, label %50
    i32 129, label %51
    i32 135, label %62
    i32 128, label %63
    i32 134, label %63
    i32 133, label %63
  ]

39:                                               ; preds = %12
  %40 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %41 = icmp ne %struct.sta_info* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %44 = load i32, i32* @WLAN_STA_TDLS_INITIATOR, align 4
  %45 = call i32 @set_sta_flag(%struct.sta_info* %43, i32 %44)
  %46 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %12, %12, %49
  store i32 1, i32* %21, align 4
  br label %67

51:                                               ; preds = %12
  %52 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %53 = icmp ne %struct.sta_info* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %56 = load i32, i32* @WLAN_STA_TDLS_INITIATOR, align 4
  %57 = call i32 @clear_sta_flag(%struct.sta_info* %55, i32 %56)
  %58 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %51
  br label %62

62:                                               ; preds = %12, %61
  store i32 0, i32* %21, align 4
  br label %67

63:                                               ; preds = %12, %12, %12
  br label %67

64:                                               ; preds = %12
  %65 = load i32, i32* @ENOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %30, align 4
  br label %67

67:                                               ; preds = %64, %63, %62, %50
  %68 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %69 = icmp ne %struct.sta_info* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %72 = load i32, i32* @WLAN_STA_TDLS_INITIATOR, align 4
  %73 = call i64 @test_sta_flag(%struct.sta_info* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %21, align 4
  br label %76

76:                                               ; preds = %75, %70, %67
  %77 = call i32 (...) @rcu_read_unlock()
  %78 = load i32, i32* %30, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %191

81:                                               ; preds = %76
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %21, align 4
  %88 = load i32*, i32** %22, align 8
  %89 = load i64, i64* %23, align 8
  %90 = load i32, i32* %24, align 4
  %91 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %25, align 8
  %92 = call %struct.sk_buff* @ieee80211_tdls_build_mgmt_packet_data(%struct.ieee80211_sub_if_data* %82, i32* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32* %88, i64 %89, i32 %90, %struct.cfg80211_chan_def* %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %27, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %81
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %30, align 4
  br label %191

98:                                               ; preds = %81
  %99 = load i32, i32* %17, align 4
  %100 = icmp eq i32 %99, 135
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %104 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %102, %struct.sk_buff* %103)
  store i32 0, i32* %13, align 4
  br label %195

105:                                              ; preds = %98
  %106 = load i32, i32* %17, align 4
  switch i32 %106, label %110 [
    i32 130, label %107
    i32 129, label %107
  ]

107:                                              ; preds = %105, %105
  %108 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  store i32 258, i32* %109, align 4
  br label %113

110:                                              ; preds = %105
  %111 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 0
  store i32 261, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %115 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %117 = call i32 @ieee80211_select_queue(%struct.ieee80211_sub_if_data* %115, %struct.sk_buff* %116)
  %118 = call i32 @skb_set_queue_mapping(%struct.sk_buff* %114, i32 %117)
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %119, 128
  br i1 %120, label %121, label %183

121:                                              ; preds = %113
  %122 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %127 = call i64 @ieee80211_hw_check(i32* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %183

129:                                              ; preds = %121
  %130 = call i32 (...) @rcu_read_lock()
  %131 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %132 = load i32*, i32** %16, align 8
  %133 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %131, i32* %132)
  store %struct.sta_info* %133, %struct.sta_info** %28, align 8
  %134 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %135 = icmp ne %struct.sta_info* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  %138 = load i32, i32* @WLAN_STA_TDLS_PEER_AUTH, align 4
  %139 = call i64 @test_sta_flag(%struct.sta_info* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %136, %129
  %142 = phi i1 [ false, %129 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  store i32 %143, i32* %31, align 4
  %144 = call i32 (...) @rcu_read_unlock()
  %145 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %146 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = call i32 @spin_lock_bh(i32* %148)
  %150 = load i32, i32* %31, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %177

152:                                              ; preds = %141
  %153 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %154 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %177, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %161 = load i32, i32* @IEEE80211_TX_INTFL_MLME_CONN_TX, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %29, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %29, align 4
  %165 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %166 = load i32, i32* @GFP_ATOMIC, align 4
  %167 = call i32 @skb_copy(%struct.sk_buff* %165, i32 %166)
  %168 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %169 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  store i32 %167, i32* %171, align 8
  %172 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %173 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %174 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  store %struct.sk_buff* %172, %struct.sk_buff** %176, align 8
  br label %177

177:                                              ; preds = %159, %152, %141
  %178 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  %179 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = call i32 @spin_unlock_bh(i32* %181)
  br label %183

183:                                              ; preds = %177, %121, %113
  %184 = call i32 (...) @local_bh_disable()
  %185 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %186 = load %struct.net_device*, %struct.net_device** %15, align 8
  %187 = load i32, i32* %29, align 4
  %188 = call i32 @__ieee80211_subif_start_xmit(%struct.sk_buff* %185, %struct.net_device* %186, i32 %187, i32 0)
  %189 = call i32 (...) @local_bh_enable()
  %190 = load i32, i32* %30, align 4
  store i32 %190, i32* %13, align 4
  br label %195

191:                                              ; preds = %95, %80
  %192 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %193 = call i32 @dev_kfree_skb(%struct.sk_buff* %192)
  %194 = load i32, i32* %30, align 4
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %191, %183, %101
  %196 = load i32, i32* %13, align 4
  ret i32 %196
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sk_buff* @ieee80211_tdls_build_mgmt_packet_data(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32, i32, i32*, i64, i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i32 @skb_set_queue_mapping(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_select_queue(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @__ieee80211_subif_start_xmit(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
