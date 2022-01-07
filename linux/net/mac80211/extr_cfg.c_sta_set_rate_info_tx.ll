; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_set_rate_info_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_sta_set_rate_info_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_tx_rate = type { i32, i64 }
%struct.rate_info = type { i64, i32, i32, i32, i32 }
%struct.ieee80211_supported_band = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_BW_80 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@RATE_INFO_BW_160 = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sta_set_rate_info_tx(%struct.sta_info* %0, %struct.ieee80211_tx_rate* %1, %struct.rate_info* %2) #0 {
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  %6 = alloca %struct.rate_info*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  store %struct.rate_info* %2, %struct.rate_info** %6, align 8
  %10 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %11 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %20 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %21 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %28 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %80

29:                                               ; preds = %3
  %30 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %38 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %39 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %43 = call i64 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate* %42)
  %44 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %45 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %47 = call i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate* %46)
  %48 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %49 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  br label %79

50:                                               ; preds = %29
  %51 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %52 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @ieee80211_vif_get_shift(i32* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %57 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.TYPE_4__* %58)
  store %struct.ieee80211_supported_band* %59, %struct.ieee80211_supported_band** %7, align 8
  %60 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %61 = icmp ne %struct.ieee80211_supported_band* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %50
  %63 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %64 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 1, %73
  %75 = call i32 @DIV_ROUND_UP(i32 %72, i32 %74)
  %76 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %77 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %62, %50
  br label %79

79:                                               ; preds = %78, %36
  br label %80

80:                                               ; preds = %79, %18
  %81 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @RATE_INFO_BW_40, align 4
  %89 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %90 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %119

91:                                               ; preds = %80
  %92 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @RATE_INFO_BW_80, align 4
  %100 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %101 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %118

102:                                              ; preds = %91
  %103 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IEEE80211_TX_RC_160_MHZ_WIDTH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @RATE_INFO_BW_160, align 4
  %111 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %112 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  br label %117

113:                                              ; preds = %102
  %114 = load i32, i32* @RATE_INFO_BW_20, align 4
  %115 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %116 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %98
  br label %119

119:                                              ; preds = %118, %87
  %120 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %128 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %129 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %119
  ret void
}

declare dso_local i64 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ieee80211_vif_get_shift(i32*) #1

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.TYPE_4__*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
