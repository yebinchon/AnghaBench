; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_release_reorder_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_release_reorder_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.sk_buff_head = type { i32 }
%struct.ieee80211_rx_data = type { i32, i32, i32, i32, i32*, %struct.sta_info* }
%struct.tid_ampdu_rx = type { i32 }
%struct.ieee80211_event = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

@BA_FRAME_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_release_reorder_timeout(%struct.sta_info* %0, i32 %1) #0 {
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca %struct.ieee80211_rx_data, align 8
  %7 = alloca %struct.tid_ampdu_rx*, align 8
  %8 = alloca %struct.ieee80211_event, align 8
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %9, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 2
  %14 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 3
  %18 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %19 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 5
  %23 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  store %struct.sta_info* %23, %struct.sta_info** %22, align 8
  %24 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.tid_ampdu_rx* @rcu_dereference(i32 %31)
  store %struct.tid_ampdu_rx* %32, %struct.tid_ampdu_rx** %7, align 8
  %33 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %34 = icmp ne %struct.tid_ampdu_rx* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %68

36:                                               ; preds = %2
  %37 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %38 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %39 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %45 = call i32 @ieee80211_sta_reorder_release(i32 %43, %struct.tid_ampdu_rx* %44, %struct.sk_buff_head* %5)
  %46 = load %struct.tid_ampdu_rx*, %struct.tid_ampdu_rx** %7, align 8
  %47 = getelementptr inbounds %struct.tid_ampdu_rx, %struct.tid_ampdu_rx* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = call i32 @skb_queue_empty(%struct.sk_buff_head* %5)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %36
  %52 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %8, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %57 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  store i32* %58, i32** %56, align 8
  %59 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %8, i32 0, i32 1
  %60 = load i32, i32* @BA_FRAME_TIMEOUT, align 4
  store i32 %60, i32* %59, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %6, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @drv_event_callback(i32 %62, i32 %64, %struct.ieee80211_event* %8)
  br label %66

66:                                               ; preds = %51, %36
  %67 = call i32 @ieee80211_rx_handlers(%struct.ieee80211_rx_data* %6, %struct.sk_buff_head* %5)
  br label %68

68:                                               ; preds = %66, %35
  ret void
}

declare dso_local %struct.tid_ampdu_rx* @rcu_dereference(i32) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ieee80211_sta_reorder_release(i32, %struct.tid_ampdu_rx*, %struct.sk_buff_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @drv_event_callback(i32, i32, %struct.ieee80211_event*) #1

declare dso_local i32 @ieee80211_rx_handlers(%struct.ieee80211_rx_data*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
