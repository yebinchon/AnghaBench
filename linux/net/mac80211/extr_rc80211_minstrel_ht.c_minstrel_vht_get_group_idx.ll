; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_vht_get_group_idx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_vht_get_group_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_tx_rate = type { i32 }

@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_tx_rate*)* @minstrel_vht_get_group_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_vht_get_group_idx(%struct.ieee80211_tx_rate* %0) #0 {
  %2 = alloca %struct.ieee80211_tx_rate*, align 8
  store %struct.ieee80211_tx_rate* %0, %struct.ieee80211_tx_rate** %2, align 8
  %3 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %2, align 8
  %4 = call i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate* %3)
  %5 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = mul nsw i32 2, %31
  %33 = add nsw i32 %22, %32
  %34 = call i32 @VHT_GROUP_IDX(i32 %4, i32 %13, i32 %33)
  ret i32 %34
}

declare dso_local i32 @VHT_GROUP_IDX(i32, i32, i32) #1

declare dso_local i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
