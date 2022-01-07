; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_reorder_ampdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_reorder_ampdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_7__*, %struct.sta_info*, %struct.ieee80211_local*, %struct.sk_buff* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sta_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32 }
%struct.tid_ampdu_rx = type { i32, i64 }

@IEEE80211_QOS_CTL_ACK_POLICY_MASK = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK = common dso_local global i64 0, align 8
@WLAN_BACK_RECIPIENT = common dso_local global i32 0, align 4
@WLAN_REASON_QSTA_REQUIRE_SETUP = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_ACK_POLICY_NORMAL = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@IEEE80211_SCTL_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_data*, %struct.sk_buff_head*)* @ieee80211_rx_reorder_ampdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_reorder_ampdu(%struct.ieee80211_rx_data* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.tid_ampdu_rx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %13 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %13, i32 0, i32 3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %16, i32 0, i32 2
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %7, align 8
  %23 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %23, i32 0, i32 1
  %25 = load %struct.sta_info*, %struct.sta_info** %24, align 8
  store %struct.sta_info* %25, %struct.sta_info** %8, align 8
  %26 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ieee80211_is_data_qos(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @is_multicast_ether_addr(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %2
  br label %161

38:                                               ; preds = %31
  %39 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %40 = icmp ne %struct.sta_info* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %161

42:                                               ; preds = %38
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %44 = call i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %43)
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_MASK, align 8
  %47 = and i64 %45, %46
  store i64 %47, i64* %12, align 8
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %49 = call i64 @ieee80211_get_tid(%struct.ieee80211_hdr* %48)
  store i64 %49, i64* %11, align 8
  %50 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.tid_ampdu_rx* @rcu_dereference(i32 %56)
  store %struct.tid_ampdu_rx* %57, %struct.tid_ampdu_rx** %9, align 8
  %58 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %59 = icmp ne %struct.tid_ampdu_rx* %58, null
  br i1 %59, label %99, label %60

60:                                               ; preds = %42
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %66, i32 0, i32 1
  %68 = load %struct.sta_info*, %struct.sta_info** %67, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @test_bit(i64 %65, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %98, label %74

74:                                               ; preds = %64
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %76, i32 0, i32 1
  %78 = load %struct.sta_info*, %struct.sta_info** %77, align 8
  %79 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @test_and_set_bit(i64 %75, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %74
  %85 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %88, i32 0, i32 1
  %90 = load %struct.sta_info*, %struct.sta_info** %89, align 8
  %91 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i32, i32* @WLAN_BACK_RECIPIENT, align 4
  %96 = load i32, i32* @WLAN_REASON_QSTA_REQUIRE_SETUP, align 4
  %97 = call i32 @ieee80211_send_delba(%struct.TYPE_7__* %87, i32 %93, i64 %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %84, %74, %64, %60
  br label %161

99:                                               ; preds = %42
  %100 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %104 = call i32 @cpu_to_le16(i32 %103)
  %105 = and i32 %102, %104
  %106 = call i64 @unlikely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %161

109:                                              ; preds = %99
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_BLOCKACK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* @IEEE80211_QOS_CTL_ACK_POLICY_NORMAL, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %161

118:                                              ; preds = %113, %109
  %119 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %120 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load i32, i32* @jiffies, align 4
  %125 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %126 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le16_to_cpu(i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* @IEEE80211_SCTL_FRAG, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %127
  %137 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = call i32 @skb_queue_tail(i32* %140, %struct.sk_buff* %141)
  %143 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %143, i32 0, i32 0
  %145 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %146 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = call i32 @ieee80211_queue_work(i32* %144, i32* %148)
  br label %165

150:                                              ; preds = %127
  %151 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %152 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %9, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %157 = call i64 @ieee80211_sta_manage_reorder_buf(%struct.TYPE_7__* %153, %struct.tid_ampdu_rx* %154, %struct.sk_buff* %155, %struct.sk_buff_head* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %150
  br label %165

160:                                              ; preds = %150
  br label %161

161:                                              ; preds = %160, %117, %108, %98, %41, %37
  %162 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %162, %struct.sk_buff* %163)
  br label %165

165:                                              ; preds = %161, %159, %136
  ret void
}

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local %struct.tid_ampdu_rx* @rcu_dereference(i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @ieee80211_send_delba(%struct.TYPE_7__*, i32, i64, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(i32*, i32*) #1

declare dso_local i64 @ieee80211_sta_manage_reorder_buf(%struct.TYPE_7__*, %struct.tid_ampdu_rx*, %struct.sk_buff*, %struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
