; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_get_dtim.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_get_dtim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_bss_ies = type { i32, i32 }
%struct.ieee80211_tim_ie = type { i32, i32 }
%struct.ieee80211_bssid_index = type { i32, i32 }

@WLAN_EID_TIM = common dso_local global i32 0, align 4
@WLAN_EID_MULTI_BSSID_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_bss_ies*, i32*, i32*)* @ieee80211_get_dtim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_get_dtim(%struct.cfg80211_bss_ies* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_bss_ies*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_tim_ie*, align 8
  %11 = alloca %struct.ieee80211_bssid_index*, align 8
  %12 = alloca i32, align 4
  store %struct.cfg80211_bss_ies* %0, %struct.cfg80211_bss_ies** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* @WLAN_EID_TIM, align 4
  %14 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %5, align 8
  %15 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %5, align 8
  %18 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @cfg80211_find_ie(i32 %13, i32 %16, i32 %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* @WLAN_EID_MULTI_BSSID_IDX, align 4
  %22 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %5, align 8
  %23 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %5, align 8
  %26 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @cfg80211_find_ie(i32 %21, i32 %24, i32 %27)
  store i32* %28, i32** %9, align 8
  store %struct.ieee80211_tim_ie* null, %struct.ieee80211_tim_ie** %10, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 2
  br label %36

36:                                               ; preds = %31, %3
  %37 = phi i1 [ false, %3 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = bitcast i32* %43 to i8*
  %45 = bitcast i8* %44 to %struct.ieee80211_tim_ie*
  store %struct.ieee80211_tim_ie* %45, %struct.ieee80211_tim_ie** %10, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %54 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  br label %57

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ 0, %56 ]
  %59 = load i32*, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %46
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.ieee80211_tim_ie*, %struct.ieee80211_tim_ie** %10, align 8
  %68 = getelementptr inbounds %struct.ieee80211_tim_ie, %struct.ieee80211_tim_ie* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  br label %71

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi i32 [ %69, %66 ], [ 0, %70 ]
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32*, i32** %9, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %84

82:                                               ; preds = %77, %74
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %4, align 4
  br label %105

84:                                               ; preds = %77
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = bitcast i32* %86 to i8*
  %88 = bitcast i8* %87 to %struct.ieee80211_bssid_index*
  store %struct.ieee80211_bssid_index* %88, %struct.ieee80211_bssid_index** %11, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.ieee80211_bssid_index*, %struct.ieee80211_bssid_index** %11, align 8
  %93 = getelementptr inbounds %struct.ieee80211_bssid_index, %struct.ieee80211_bssid_index* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32*, i32** %7, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.ieee80211_bssid_index*, %struct.ieee80211_bssid_index** %11, align 8
  %101 = getelementptr inbounds %struct.ieee80211_bssid_index, %struct.ieee80211_bssid_index* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %7, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %96
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %82
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32* @cfg80211_find_ie(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
