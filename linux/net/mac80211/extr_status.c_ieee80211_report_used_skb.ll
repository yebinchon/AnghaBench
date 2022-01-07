; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_report_used_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_report_used_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i32, i32, i64, i32*, i64 }
%struct.ieee80211_tx_info = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_sub_if_data = type { i32 }
%struct.TYPE_2__ = type { i32* }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_MLME_CONN_TX = common dso_local global i32 0, align 4
@WLAN_TDLS_TEARDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.sk_buff*, i32)* @ieee80211_report_used_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_report_used_skb(%struct.ieee80211_local* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %12)
  store %struct.ieee80211_tx_info* %13, %struct.ieee80211_tx_info** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %8, align 8
  %19 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE80211_TX_INTFL_MLME_CONN_TX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %27
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call %struct.ieee80211_sub_if_data* @ieee80211_sdata_from_skb(%struct.ieee80211_local* %36, %struct.sk_buff* %37)
  store %struct.ieee80211_sub_if_data* %38, %struct.ieee80211_sub_if_data** %10, align 8
  %39 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %40 = icmp ne %struct.ieee80211_sub_if_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 3
  store i32* null, i32** %43, align 8
  br label %76

44:                                               ; preds = %34
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ieee80211_hdrlen(i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ieee80211_is_data(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %44
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i64 @ieee80211_get_tdls_action(%struct.sk_buff* %55, i32 %56)
  %58 = load i64, i64* @WLAN_TDLS_TEARDOWN, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ieee80211_tdls_td_tx_handle(%struct.ieee80211_local* %61, %struct.ieee80211_sub_if_data* %62, %struct.sk_buff* %63, i32 %66)
  br label %75

68:                                               ; preds = %54, %44
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %70 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @ieee80211_mgd_conn_tx_status(%struct.ieee80211_sub_if_data* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %60
  br label %76

76:                                               ; preds = %75, %41
  %77 = call i32 (...) @rcu_read_unlock()
  br label %90

78:                                               ; preds = %27
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %85 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ieee80211_report_ack_skb(%struct.ieee80211_local* %84, %struct.ieee80211_tx_info* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %78
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %98, %93, %90
  %105 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %106 = call i32 @ieee80211_led_tx(%struct.ieee80211_local* %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i64 @skb_has_frag_list(%struct.sk_buff* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @kfree_skb_list(i32* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %110, %104
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @ieee80211_sdata_from_skb(%struct.ieee80211_local*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_get_tdls_action(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_tdls_td_tx_handle(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_mgd_conn_tx_status(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_report_ack_skb(%struct.ieee80211_local*, %struct.ieee80211_tx_info*, i32, i32) #1

declare dso_local i32 @ieee80211_led_tx(%struct.ieee80211_local*) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb_list(i32*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
