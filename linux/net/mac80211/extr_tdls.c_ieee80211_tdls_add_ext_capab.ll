; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_ext_capab.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_ext_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@NL80211_FEATURE_TDLS_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@TDLS_WIDER_BW = common dso_local global i32 0, align 4
@SUPPORTS_TDLS_BUFFER_STA = common dso_local global i32 0, align 4
@WLAN_EID_EXT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA4_TDLS_BUFFER_STA = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA5_TDLS_ENABLED = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*)* @ieee80211_tdls_add_ext_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_ext_capab(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_supported_band*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %5, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.ieee80211_if_managed* %18, %struct.ieee80211_if_managed** %6, align 8
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NL80211_FEATURE_TDLS_CHANNEL_SWITCH, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 0
  %29 = load i32, i32* @TDLS_WIDER_BW, align 4
  %30 = call i32 @ieee80211_hw_check(%struct.TYPE_8__* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %2
  %39 = phi i1 [ false, %2 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %41, i32 0, i32 0
  %43 = load i32, i32* @SUPPORTS_TDLS_BUFFER_STA, align 4
  %44 = call i32 @ieee80211_hw_check(%struct.TYPE_8__* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %46 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %45)
  store %struct.ieee80211_supported_band* %46, %struct.ieee80211_supported_band** %10, align 8
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %48 = icmp ne %struct.ieee80211_supported_band* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %10, align 8
  %51 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %49, %38
  %56 = phi i1 [ false, %38 ], [ %54, %49 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32* @skb_put(%struct.sk_buff* %58, i32 10)
  store i32* %59, i32** %12, align 8
  %60 = load i32, i32* @WLAN_EID_EXT_CAPABILITY, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %12, align 8
  store i32 %60, i32* %61, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %12, align 8
  store i32 8, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %12, align 8
  store i32 0, i32* %65, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %12, align 8
  store i32 0, i32* %67, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %12, align 8
  store i32 0, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %55
  %74 = load i32, i32* @WLAN_EXT_CAPA4_TDLS_CHAN_SWITCH, align 4
  br label %76

75:                                               ; preds = %55
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32 [ %74, %73 ], [ 0, %75 ]
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @WLAN_EXT_CAPA4_TDLS_BUFFER_STA, align 4
  br label %83

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %77, %84
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %12, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i32, i32* @WLAN_EXT_CAPA5_TDLS_ENABLED, align 4
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %12, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %12, align 8
  store i32 0, i32* %91, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %12, align 8
  store i32 0, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @WLAN_EXT_CAPA8_TDLS_WIDE_BW_ENABLED, align 4
  br label %103

102:                                              ; preds = %97, %83
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %12, align 8
  store i32 %104, i32* %105, align 4
  ret void
}

declare dso_local i32 @ieee80211_hw_check(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
