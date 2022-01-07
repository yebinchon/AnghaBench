; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_link_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_link_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tdls_lnkie = type { i32, i32, i32, i32, i32 }

@WLAN_EID_LINK_ID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32)* @ieee80211_tdls_add_link_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_link_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tdls_lnkie*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %7, align 8
  store i32* %19, i32** %11, align 8
  br label %26

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %10, align 8
  %22 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %11, align 8
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = call %struct.ieee80211_tdls_lnkie* @skb_put(%struct.sk_buff* %27, i32 20)
  store %struct.ieee80211_tdls_lnkie* %28, %struct.ieee80211_tdls_lnkie** %9, align 8
  %29 = load i32, i32* @WLAN_EID_LINK_ID, align 4
  %30 = load %struct.ieee80211_tdls_lnkie*, %struct.ieee80211_tdls_lnkie** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, %struct.ieee80211_tdls_lnkie* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ieee80211_tdls_lnkie*, %struct.ieee80211_tdls_lnkie** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, %struct.ieee80211_tdls_lnkie* %32, i32 0, i32 0
  store i32 18, i32* %33, align 4
  %34 = load %struct.ieee80211_tdls_lnkie*, %struct.ieee80211_tdls_lnkie** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, %struct.ieee80211_tdls_lnkie* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %36, i32* %41, i32 %42)
  %44 = load %struct.ieee80211_tdls_lnkie*, %struct.ieee80211_tdls_lnkie** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, %struct.ieee80211_tdls_lnkie* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32 %46, i32* %47, i32 %48)
  %50 = load %struct.ieee80211_tdls_lnkie*, %struct.ieee80211_tdls_lnkie** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tdls_lnkie, %struct.ieee80211_tdls_lnkie* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %52, i32* %53, i32 %54)
  ret void
}

declare dso_local %struct.ieee80211_tdls_lnkie* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
