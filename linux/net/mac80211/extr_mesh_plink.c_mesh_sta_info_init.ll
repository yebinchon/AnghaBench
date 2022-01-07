; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_sta_info_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_sta_info_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32 }
%struct.sta_info = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i64* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee802_11_elems = type { %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_supported_band = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@NL80211_PLINK_ESTAB = common dso_local global i64 0, align 8
@IEEE80211_RC_SUPP_RATES_CHANGED = common dso_local global i64 0, align 8
@IEEE80211_RC_BW_CHANGED = common dso_local global i64 0, align 8
@IEEE80211_HT_PARAM_CHAN_WIDTH_ANY = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_20 = common dso_local global i64 0, align 8
@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee802_11_elems*)* @mesh_sta_info_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_sta_info_init(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee802_11_elems* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee802_11_elems*, align 8
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %6, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %21 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %20)
  store %struct.ieee80211_supported_band* %21, %struct.ieee80211_supported_band** %8, align 8
  %22 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %23 = icmp ne %struct.ieee80211_supported_band* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %179

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %27 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @ieee80211_sta_get_rates(%struct.ieee80211_sub_if_data* %26, %struct.ieee802_11_elems* %27, i64 %30, i64* %10)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load i32, i32* @jiffies, align 4
  %38 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %42 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_PLINK_ESTAB, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %25
  %49 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %173

56:                                               ; preds = %48, %25
  %57 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 8
  %61 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %62 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i64, i64* @IEEE80211_RC_SUPP_RATES_CHANGED, align 8
  %74 = load i64, i64* %11, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %72, %56
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %79 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  store i64 %77, i64* %85, align 8
  %86 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %87 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %88 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %89 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %92 = call i64 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data* %86, %struct.ieee80211_supported_band* %87, i32 %90, %struct.sta_info* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %76
  %95 = load i64, i64* @IEEE80211_RC_BW_CHANGED, align 8
  %96 = load i64, i64* %11, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %94, %76
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %100 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %101 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %102 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %105 = call i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data* %99, %struct.ieee80211_supported_band* %100, i32 %103, %struct.sta_info* %104)
  %106 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %107 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %108 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %109 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %112 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %115 = call i32 @ieee80211_he_cap_ie_to_sta_he_cap(%struct.ieee80211_sub_if_data* %106, %struct.ieee80211_supported_band* %107, i32 %110, i32 %113, %struct.sta_info* %114)
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %118 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %116, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %98
  %123 = load i64, i64* @IEEE80211_RC_BW_CHANGED, align 8
  %124 = load i64, i64* %11, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %11, align 8
  br label %126

126:                                              ; preds = %122, %98
  %127 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %128 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = icmp ne %struct.TYPE_6__* %129, null
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %6, align 8
  %133 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IEEE80211_HT_PARAM_CHAN_WIDTH_ANY, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %131
  %141 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %142 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load i64, i64* @IEEE80211_RC_BW_CHANGED, align 8
  %150 = load i64, i64* %11, align 8
  %151 = or i64 %150, %149
  store i64 %151, i64* %11, align 8
  br label %152

152:                                              ; preds = %148, %140
  %153 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %154 = trunc i64 %153 to i32
  %155 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %156 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  br label %158

158:                                              ; preds = %152, %131, %126
  %159 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %160 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %161 = call i32 @test_sta_flag(%struct.sta_info* %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %165 = call i32 @rate_control_rate_init(%struct.sta_info* %164)
  br label %172

166:                                              ; preds = %158
  %167 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %168 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %169 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %170 = load i64, i64* %11, align 8
  %171 = call i32 @rate_control_rate_update(%struct.ieee80211_local* %167, %struct.ieee80211_supported_band* %168, %struct.sta_info* %169, i64 %170)
  br label %172

172:                                              ; preds = %166, %163
  br label %173

173:                                              ; preds = %172, %55
  %174 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %175 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 2
  %178 = call i32 @spin_unlock_bh(i32* %177)
  br label %179

179:                                              ; preds = %173, %24
  ret void
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ieee80211_sta_get_rates(%struct.ieee80211_sub_if_data*, %struct.ieee802_11_elems*, i64, i64*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_he_cap_ie_to_sta_he_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i32, i32, %struct.sta_info*) #1

declare dso_local i32 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @rate_control_rate_init(%struct.sta_info*) #1

declare dso_local i32 @rate_control_rate_update(%struct.ieee80211_local*, %struct.ieee80211_supported_band*, %struct.sta_info*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
