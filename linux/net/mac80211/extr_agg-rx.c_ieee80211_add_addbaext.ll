; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c_ieee80211_add_addbaext.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c_ieee80211_add_addbaext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_addba_ext_ie = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_sta_he_cap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@WLAN_EID_ADDBA_EXT = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_EXT_NO_FRAG = common dso_local global i32 0, align 4
@IEEE80211_ADDBA_EXT_FRAG_LEVEL_MASK = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP0_DYNAMIC_FRAG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_addba_ext_ie*)* @ieee80211_add_addbaext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_add_addbaext(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, %struct.ieee80211_addba_ext_ie* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_addba_ext_ie*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_addba_ext_ie*, align 8
  %9 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.ieee80211_addba_ext_ie* %2, %struct.ieee80211_addba_ext_ie** %6, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %14 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %13)
  store %struct.ieee80211_supported_band* %14, %struct.ieee80211_supported_band** %7, align 8
  %15 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %16 = icmp ne %struct.ieee80211_supported_band* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %72

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band* %19, i32 %23)
  store %struct.ieee80211_sta_he_cap* %24, %struct.ieee80211_sta_he_cap** %9, align 8
  %25 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %9, align 8
  %26 = icmp ne %struct.ieee80211_sta_he_cap* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %72

28:                                               ; preds = %18
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i64* @skb_put_zero(%struct.sk_buff* %29, i32 6)
  store i64* %30, i64** %12, align 8
  %31 = load i32, i32* @WLAN_EID_ADDBA_EXT, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %12, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %12, align 8
  store i64 %32, i64* %33, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %12, align 8
  store i64 4, i64* %35, align 8
  %37 = load i64*, i64** %12, align 8
  %38 = bitcast i64* %37 to %struct.ieee80211_addba_ext_ie*
  store %struct.ieee80211_addba_ext_ie* %38, %struct.ieee80211_addba_ext_ie** %8, align 8
  %39 = load %struct.ieee80211_addba_ext_ie*, %struct.ieee80211_addba_ext_ie** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_addba_ext_ie, %struct.ieee80211_addba_ext_ie* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IEEE80211_ADDBA_EXT_NO_FRAG, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.ieee80211_addba_ext_ie*, %struct.ieee80211_addba_ext_ie** %8, align 8
  %45 = getelementptr inbounds %struct.ieee80211_addba_ext_ie, %struct.ieee80211_addba_ext_ie* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ieee80211_addba_ext_ie*, %struct.ieee80211_addba_ext_ie** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_addba_ext_ie, %struct.ieee80211_addba_ext_ie* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_ADDBA_EXT_FRAG_LEVEL_MASK, align 4
  %50 = call i64 @u32_get_bits(i32 %48, i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %9, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_HE_MAC_CAP0_DYNAMIC_FRAG_MASK, align 4
  %58 = call i64 @u32_get_bits(i32 %56, i32 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %28
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %10, align 8
  br label %64

64:                                               ; preds = %62, %28
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* @IEEE80211_ADDBA_EXT_FRAG_LEVEL_MASK, align 4
  %67 = call i32 @u8_encode_bits(i64 %65, i32 %66)
  %68 = load %struct.ieee80211_addba_ext_ie*, %struct.ieee80211_addba_ext_ie** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_addba_ext_ie, %struct.ieee80211_addba_ext_ie* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %27, %17
  ret void
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_sta_he_cap* @ieee80211_get_he_iftype_cap(%struct.ieee80211_supported_band*, i32) #1

declare dso_local i64* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i64 @u32_get_bits(i32, i32) #1

declare dso_local i32 @u8_encode_bits(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
