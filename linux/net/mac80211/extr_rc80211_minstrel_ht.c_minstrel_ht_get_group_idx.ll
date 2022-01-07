; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_group_idx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_get_group_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_rate*)* @minstrel_ht_get_group_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_ht_get_group_idx(%struct.ieee80211_tx_rate* %0) #0 {
  %2 = alloca %struct.ieee80211_tx_rate*, align 8
  store %struct.ieee80211_tx_rate* %0, %struct.ieee80211_tx_rate** %2, align 8
  %3 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = add nsw i32 %6, 1
  %8 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @GROUP_IDX(i32 %7, i32 %16, i32 %25)
  ret i32 %26
}

declare dso_local i32 @GROUP_IDX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
