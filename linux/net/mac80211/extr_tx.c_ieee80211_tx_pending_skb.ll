; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_pending_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_pending_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff_head = type { i32 }

@IEEE80211_TX_INTFL_NEED_TXPROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sk_buff*)* @ieee80211_tx_pending_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tx_pending_skb(%struct.ieee80211_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca %struct.ieee80211_sub_if_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %12 = alloca %struct.sk_buff_head, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %13)
  store %struct.ieee80211_tx_info* %14, %struct.ieee80211_tx_info** %6, align 8
  %15 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(i32 %18)
  store %struct.ieee80211_sub_if_data* %19, %struct.ieee80211_sub_if_data** %7, align 8
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_TX_INTFL_NEED_TXPROCESSING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %30)
  store %struct.ieee80211_chanctx_conf* %31, %struct.ieee80211_chanctx_conf** %11, align 8
  %32 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %33 = icmp ne %struct.ieee80211_chanctx_conf* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  store i32 1, i32* %3, align 4
  br label %74

41:                                               ; preds = %26
  %42 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %11, align 8
  %43 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = call i32 @ieee80211_tx(%struct.ieee80211_sub_if_data* %50, i32* null, %struct.sk_buff* %51, i32 1, i32 0)
  store i32 %52, i32* %10, align 4
  br label %72

53:                                               ; preds = %2
  %54 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %12)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %12, %struct.sk_buff* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %60, %struct.ieee80211_hdr** %9, align 8
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %7, align 8
  %62 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %61, i32 %64)
  store %struct.sta_info* %65, %struct.sta_info** %8, align 8
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %71 = call i32 @__ieee80211_tx(%struct.ieee80211_local* %66, %struct.sk_buff_head* %12, i32 %69, %struct.sta_info* %70, i32 1)
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %53, %41
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %38
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(i32) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx(%struct.ieee80211_sub_if_data*, i32*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @__ieee80211_tx(%struct.ieee80211_local*, %struct.sk_buff_head*, i32, %struct.sta_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
