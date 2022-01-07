; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_handle_bss_capability.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_handle_bss_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32, i32 }
%struct.ieee80211_supported_band = type { i64 }

@WLAN_ERP_USE_PROTECTION = common dso_local global i32 0, align 4
@WLAN_ERP_BARKER_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i32, i32, i32)* @ieee80211_handle_bss_capability to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_bss_conf*, align 8
  %11 = alloca %struct.ieee80211_supported_band*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %18, %struct.ieee80211_bss_conf** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %20 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %19)
  store %struct.ieee80211_supported_band* %20, %struct.ieee80211_supported_band** %11, align 8
  %21 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %22 = icmp ne %struct.ieee80211_supported_band* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %102

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @WLAN_ERP_USE_PROTECTION, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @WLAN_ERP_BARKER_PREAMBLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %14, align 4
  br label %47

39:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @WLAN_CAPABILITY_SHORT_PREAMBLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  br label %47

47:                                               ; preds = %39, %28
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @WLAN_CAPABILITY_SHORT_SLOT_TIME, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %15, align 4
  %55 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %11, align 8
  %56 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %47
  store i32 1, i32* %15, align 4
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %64 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %70 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %77 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* %14, align 4
  %82 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %83 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %85 = load i32, i32* %12, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %80, %74
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load i32, i32* %15, align 4
  %95 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %96 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %98 = load i32, i32* %12, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %23
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
