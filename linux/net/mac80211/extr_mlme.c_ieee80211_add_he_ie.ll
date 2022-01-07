; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_add_he_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_add_he_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta_he_cap = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_supported_band*)* @ieee80211_add_he_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_add_he_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, %struct.ieee80211_supported_band* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %6, align 8
  store %struct.ieee80211_sta_he_cap* null, %struct.ieee80211_sta_he_cap** %8, align 8
  %10 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %11 = call %struct.ieee80211_sta_he_cap* @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band* %10)
  store %struct.ieee80211_sta_he_cap* %11, %struct.ieee80211_sta_he_cap** %8, align 8
  %12 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %8, align 8
  %13 = icmp ne %struct.ieee80211_sta_he_cap* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %16, i32 0, i32 0
  %18 = call i32 @ieee80211_he_mcs_nss_size(%struct.TYPE_2__* %17)
  %19 = sext i32 %18 to i64
  %20 = add i64 7, %19
  %21 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ieee80211_he_ppe_size(i32 %25, i32 %29)
  %31 = sext i32 %30 to i64
  %32 = add i64 %20, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32* @skb_put(%struct.sk_buff* %34, i32 %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @ieee80211_ie_build_he_cap(i32* %37, %struct.ieee80211_sta_he_cap* %38, i32* %42)
  br label %44

44:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.ieee80211_sta_he_cap* @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band*) #1

declare dso_local i32 @ieee80211_he_mcs_nss_size(%struct.TYPE_2__*) #1

declare dso_local i32 @ieee80211_he_ppe_size(i32, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_ie_build_he_cap(i32*, %struct.ieee80211_sta_he_cap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
