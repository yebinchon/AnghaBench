; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_get_channel_time.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_scan_get_channel_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@IEEE80211_CHAN_NO_IR = common dso_local global i32 0, align 4
@IEEE80211_CHAN_RADAR = common dso_local global i32 0, align 4
@IEEE80211_PASSIVE_CHANNEL_TIME = common dso_local global i64 0, align 8
@IEEE80211_PROBE_DELAY = common dso_local global i64 0, align 8
@IEEE80211_CHANNEL_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee80211_channel*)* @ieee80211_scan_get_channel_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee80211_scan_get_channel_time(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  %4 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %5 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @IEEE80211_CHAN_NO_IR, align 4
  %8 = load i32, i32* @IEEE80211_CHAN_RADAR, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @IEEE80211_PASSIVE_CHANNEL_TIME, align 8
  store i64 %13, i64* %2, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load i64, i64* @IEEE80211_PROBE_DELAY, align 8
  %16 = load i64, i64* @IEEE80211_CHANNEL_TIME, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i64, i64* %2, align 8
  ret i64 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
