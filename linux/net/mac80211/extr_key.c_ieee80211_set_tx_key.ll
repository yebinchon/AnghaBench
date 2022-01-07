; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_set_tx_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_set_tx_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.TYPE_2__, %struct.ieee80211_local*, %struct.sta_info* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { i32 }

@AMPDU_KEYBORDER_SUPPORT = common dso_local global i32 0, align 4
@WLAN_STA_BLOCK_BA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_set_tx_key(%struct.ieee80211_key* %0) #0 {
  %2 = alloca %struct.ieee80211_key*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %2, align 8
  %5 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %5, i32 0, i32 2
  %7 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  store %struct.sta_info* %7, %struct.sta_info** %3, align 8
  %8 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %8, i32 0, i32 1
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_local* %10, %struct.ieee80211_local** %4, align 8
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %12 = call i32 @assert_key_lock(%struct.ieee80211_local* %11)
  %13 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %18 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = load i32, i32* @AMPDU_KEYBORDER_SUPPORT, align 4
  %22 = call i32 @ieee80211_hw_check(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %26 = load i32, i32* @WLAN_STA_BLOCK_BA, align 4
  %27 = call i32 @clear_sta_flag(%struct.sta_info* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %30 = call i32 @ieee80211_check_fast_xmit(%struct.sta_info* %29)
  ret i32 0
}

declare dso_local i32 @assert_key_lock(%struct.ieee80211_local*) #1

declare dso_local i32 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @clear_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @ieee80211_check_fast_xmit(%struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
