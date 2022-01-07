; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_calculate_ap_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_calculate_ap_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_ap_settings = type { i8*, i8*, i8*, %struct.cfg80211_beacon_data }
%struct.cfg80211_beacon_data = type { i64, i32* }

@WLAN_EID_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_EXT_SUPP_RATES = common dso_local global i32 0, align 4
@WLAN_EID_HT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EID_VHT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EID_EXT_HE_CAPABILITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_ap_settings*)* @nl80211_calculate_ap_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_calculate_ap_params(%struct.cfg80211_ap_settings* %0) #0 {
  %2 = alloca %struct.cfg80211_ap_settings*, align 8
  %3 = alloca %struct.cfg80211_beacon_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.cfg80211_ap_settings* %0, %struct.cfg80211_ap_settings** %2, align 8
  %8 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %2, align 8
  %9 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %8, i32 0, i32 3
  store %struct.cfg80211_beacon_data* %9, %struct.cfg80211_beacon_data** %3, align 8
  %10 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %11 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %14 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  %16 = load i32, i32* @WLAN_EID_SUPP_RATES, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32* @cfg80211_find_ie(i32 %16, i32* %17, i64 %18)
  store i32* %19, i32** %6, align 8
  %20 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %2, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @nl80211_check_ap_rate_selectors(%struct.cfg80211_ap_settings* %20, i32* %21)
  %23 = load i32, i32* @WLAN_EID_EXT_SUPP_RATES, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32* @cfg80211_find_ie(i32 %23, i32* %24, i64 %25)
  store i32* %26, i32** %6, align 8
  %27 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %2, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @nl80211_check_ap_rate_selectors(%struct.cfg80211_ap_settings* %27, i32* %28)
  %30 = load i32, i32* @WLAN_EID_HT_CAPABILITY, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32* @cfg80211_find_ie(i32 %30, i32* %31, i64 %32)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %1
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = bitcast i32* %44 to i8*
  %46 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %2, align 8
  %47 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %42, %36, %1
  %49 = load i32, i32* @WLAN_EID_VHT_CAPABILITY, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32* @cfg80211_find_ie(i32 %49, i32* %50, i64 %51)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp uge i64 %59, 1
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = bitcast i32* %63 to i8*
  %65 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %2, align 8
  %66 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %61, %55, %48
  %68 = load i32, i32* @WLAN_EID_EXT_HE_CAPABILITY, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i64, i64* %4, align 8
  %71 = call i32* @cfg80211_find_ext_ie(i32 %68, i32* %69, i64 %70)
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp uge i64 %78, 2
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 3
  %83 = bitcast i32* %82 to i8*
  %84 = load %struct.cfg80211_ap_settings*, %struct.cfg80211_ap_settings** %2, align 8
  %85 = getelementptr inbounds %struct.cfg80211_ap_settings, %struct.cfg80211_ap_settings* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %80, %74, %67
  ret void
}

declare dso_local i32* @cfg80211_find_ie(i32, i32*, i64) #1

declare dso_local i32 @nl80211_check_ap_rate_selectors(%struct.cfg80211_ap_settings*, i32*) #1

declare dso_local i32* @cfg80211_find_ext_ie(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
