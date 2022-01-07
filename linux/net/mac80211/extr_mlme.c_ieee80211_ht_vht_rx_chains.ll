; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_ht_vht_rx_chains.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_ht_vht_rx_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.ieee80211_ht_cap = type { i32 }
%struct.ieee80211_vht_cap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@WLAN_EID_VHT_CAPABILITY = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*)* @ieee80211_ht_vht_rx_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ht_vht_rx_chains(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ieee80211_ht_cap*, align 8
  %10 = alloca %struct.ieee80211_vht_cap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.ieee80211_if_managed* %16, %struct.ieee80211_if_managed** %6, align 8
  store i32 1, i32* %11, align 4
  %17 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %3, align 4
  br label %99

25:                                               ; preds = %2
  %26 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %27 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %28 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %26, i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %35, 4
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = bitcast i32* %39 to i8*
  %41 = bitcast i8* %40 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %41, %struct.ieee80211_ht_cap** %9, align 8
  %42 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %42, i32 0, i32 0
  %44 = call i32 @ieee80211_mcs_to_chains(i32* %43)
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %37, %31, %25
  %46 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %99

54:                                               ; preds = %45
  %55 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %56 = load i32, i32* @WLAN_EID_VHT_CAPABILITY, align 4
  %57 = call i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss* %55, i32 %56)
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %97

60:                                               ; preds = %54
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp uge i64 %64, 4
  br i1 %65, label %66, label %97

66:                                               ; preds = %60
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = bitcast i32* %68 to i8*
  %70 = bitcast i8* %69 to %struct.ieee80211_vht_cap*
  store %struct.ieee80211_vht_cap* %70, %struct.ieee80211_vht_cap** %10, align 8
  %71 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %10, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  store i32 %75, i32* %13, align 4
  store i32 8, i32* %12, align 4
  br label %76

76:                                               ; preds = %90, %66
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %81, 1
  %83 = mul nsw i32 2, %82
  %84 = ashr i32 %80, %83
  %85 = and i32 %84, 3
  %86 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %93

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %12, align 4
  br label %76

93:                                               ; preds = %88, %76
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @max(i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %60, %54
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %52, %23
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32* @ieee80211_bss_get_ie(%struct.cfg80211_bss*, i32) #1

declare dso_local i32 @ieee80211_mcs_to_chains(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
