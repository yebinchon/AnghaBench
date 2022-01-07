; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_iftype_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_iftype_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_sband_iftype_data = type { i32, %struct.ieee80211_sta_he_cap }
%struct.ieee80211_sta_he_cap = type { i32*, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32* }

@NL80211_BAND_IFTYPE_ATTR_IFTYPES = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC = common dso_local global i32 0, align 4
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY = common dso_local global i32 0, align 4
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET = common dso_local global i32 0, align 4
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ieee80211_sband_iftype_data*)* @nl80211_send_iftype_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_iftype_data(%struct.sk_buff* %0, %struct.ieee80211_sband_iftype_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_sband_iftype_data*, align 8
  %6 = alloca %struct.ieee80211_sta_he_cap*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_sband_iftype_data* %1, %struct.ieee80211_sband_iftype_data** %5, align 8
  %7 = load %struct.ieee80211_sband_iftype_data*, %struct.ieee80211_sband_iftype_data** %5, align 8
  %8 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, %struct.ieee80211_sband_iftype_data* %7, i32 0, i32 1
  store %struct.ieee80211_sta_he_cap* %8, %struct.ieee80211_sta_he_cap** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NL80211_BAND_IFTYPE_ATTR_IFTYPES, align 4
  %11 = load %struct.ieee80211_sband_iftype_data*, %struct.ieee80211_sband_iftype_data** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sband_iftype_data, %struct.ieee80211_sband_iftype_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @nl80211_put_iftypes(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOBUFS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %62

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load i32, i32* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC, align 4
  %27 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @nla_put(%struct.sk_buff* %25, i32 %26, i32 8, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY, align 4
  %36 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @nla_put(%struct.sk_buff* %34, i32 %35, i32 8, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET, align 4
  %45 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %45, i32 0, i32 1
  %47 = call i64 @nla_put(%struct.sk_buff* %43, i32 %44, i32 4, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i32, i32* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE, align 4
  %52 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @nla_put(%struct.sk_buff* %50, i32 %51, i32 8, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49, %42, %33, %24
  %58 = load i32, i32* @ENOBUFS, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %19
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %57, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @nl80211_put_iftypes(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
