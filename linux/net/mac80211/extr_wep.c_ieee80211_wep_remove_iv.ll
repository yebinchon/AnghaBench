; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_wep_remove_iv.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wep.c_ieee80211_wep_remove_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_key = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_WEP_IV_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.sk_buff*, %struct.ieee80211_key*)* @ieee80211_wep_remove_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_wep_remove_iv(%struct.ieee80211_local* %0, %struct.sk_buff* %1, %struct.ieee80211_key* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_key* %2, %struct.ieee80211_key** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %7, align 8
  %13 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ieee80211_hdrlen(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_WEP_IV_LEN, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @memmove(i64 %21, i64 %24, i32 %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i64, i64* @IEEE80211_WEP_IV_LEN, align 8
  %29 = call i32 @skb_pull(%struct.sk_buff* %27, i64 %28)
  ret void
}

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
