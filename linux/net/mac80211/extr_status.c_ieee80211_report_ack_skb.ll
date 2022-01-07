; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_report_ack_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_status.c_ieee80211_report_ack_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_sub_if_data = type { i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_TX_INTFL_NL80211_FRAME_TX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_tx_info*, i32, i32)* @ieee80211_report_ack_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_report_ack_skb(%struct.ieee80211_local* %0, %struct.ieee80211_tx_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 0
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.sk_buff* @idr_remove(i32* %19, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %9, align 8
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 0
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  br label %115

31:                                               ; preds = %4
  %32 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IEEE80211_TX_INTFL_NL80211_FRAME_TX, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %104

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = call %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = bitcast i8* %47 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %48, %struct.ieee80211_hdr** %13, align 8
  %49 = call i32 (...) @rcu_read_lock()
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = call %struct.ieee80211_sub_if_data* @ieee80211_sdata_from_skb(%struct.ieee80211_local* %50, %struct.sk_buff* %51)
  store %struct.ieee80211_sub_if_data* %52, %struct.ieee80211_sub_if_data** %12, align 8
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %54 = icmp ne %struct.ieee80211_sub_if_data* %53, null
  br i1 %54, label %55, label %100

55:                                               ; preds = %38
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ieee80211_is_nullfunc(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ieee80211_is_qos_nullfunc(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %61, %55
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %77 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GFP_ATOMIC, align 4
  %85 = call i32 @cfg80211_probe_status(i32 %70, i32 %73, i32 %74, i32 %75, i32 %79, i32 %83, i32 %84)
  br label %99

86:                                               ; preds = %61
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %87, i32 0, i32 0
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @GFP_ATOMIC, align 4
  %98 = call i32 @cfg80211_mgmt_tx_status(i32* %88, i32 %89, i64 %92, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %86, %67
  br label %100

100:                                              ; preds = %99, %38
  %101 = call i32 (...) @rcu_read_unlock()
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %102)
  br label %115

104:                                              ; preds = %31
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %108)
  br label %114

110:                                              ; preds = %104
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @skb_complete_wifi_ack(%struct.sk_buff* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  br label %115

115:                                              ; preds = %30, %114, %100
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sk_buff* @idr_remove(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @ieee80211_sdata_from_skb(%struct.ieee80211_local*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_qos_nullfunc(i32) #1

declare dso_local i32 @cfg80211_probe_status(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_mgmt_tx_status(i32*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_complete_wifi_ack(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
