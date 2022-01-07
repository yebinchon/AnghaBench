; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_get_stats_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_get_stats_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta_rx_stats = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sta_rx_stats*)* @sta_get_stats_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_get_stats_bytes(%struct.ieee80211_sta_rx_stats* %0) #0 {
  %2 = alloca %struct.ieee80211_sta_rx_stats*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ieee80211_sta_rx_stats* %0, %struct.ieee80211_sta_rx_stats** %2, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.ieee80211_sta_rx_stats*, %struct.ieee80211_sta_rx_stats** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, %struct.ieee80211_sta_rx_stats* %6, i32 0, i32 1
  %8 = call i32 @u64_stats_fetch_begin(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ieee80211_sta_rx_stats*, %struct.ieee80211_sta_rx_stats** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, %struct.ieee80211_sta_rx_stats* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %5
  %13 = load %struct.ieee80211_sta_rx_stats*, %struct.ieee80211_sta_rx_stats** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta_rx_stats, %struct.ieee80211_sta_rx_stats* %13, i32 0, i32 1
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @u64_stats_fetch_retry(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %5, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @u64_stats_fetch_begin(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
