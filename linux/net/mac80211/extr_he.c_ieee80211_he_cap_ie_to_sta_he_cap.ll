; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_he.c_ieee80211_he_cap_ie_to_sta_he_cap.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_he.c_ieee80211_he_cap_ie_to_sta_he_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_sta_he_cap }
%struct.ieee80211_sta_he_cap = type { i32, %struct.TYPE_4__*, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ieee80211_he_cap_elem = type { i32 }

@IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_he_cap_ie_to_sta_he_cap(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_supported_band* %1, i32* %2, i32 %3, %struct.sta_info* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca %struct.ieee80211_sta_he_cap*, align 8
  %12 = alloca %struct.ieee80211_he_cap_elem*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sta_info* %4, %struct.sta_info** %10, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.ieee80211_sta_he_cap* %18, %struct.ieee80211_sta_he_cap** %11, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = bitcast i32* %19 to i8*
  %21 = bitcast i8* %20 to %struct.ieee80211_he_cap_elem*
  store %struct.ieee80211_he_cap_elem* %21, %struct.ieee80211_he_cap_elem** %12, align 8
  %22 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %11, align 8
  %23 = call i32 @memset(%struct.ieee80211_sta_he_cap* %22, i32 0, i32 32)
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %28 = call i32 @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %5
  br label %89

31:                                               ; preds = %26
  %32 = load %struct.ieee80211_he_cap_elem*, %struct.ieee80211_he_cap_elem** %12, align 8
  %33 = call i32 @ieee80211_he_mcs_nss_size(%struct.ieee80211_he_cap_elem* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 8, %36
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ieee80211_he_cap_elem*, %struct.ieee80211_he_cap_elem** %12, align 8
  %41 = getelementptr inbounds %struct.ieee80211_he_cap_elem, %struct.ieee80211_he_cap_elem* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ieee80211_he_ppe_size(i32 %39, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 8, %45
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %31
  br label %89

55:                                               ; preds = %31
  %56 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %56, i32 0, i32 2
  %58 = load i32*, i32** %8, align 8
  %59 = call i32 @memcpy(%struct.TYPE_4__* %57, i32* %58, i32 8)
  %60 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %11, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %60, i32 0, i32 3
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @memcpy(%struct.TYPE_4__* %61, i32* %63, i32 %64)
  %66 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %11, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IEEE80211_HE_PHY_CAP6_PPE_THRESHOLD_PRESENT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %55
  %76 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %11, align 8
  %77 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 8, %81
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @memcpy(%struct.TYPE_4__* %78, i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %75, %55
  %87 = load %struct.ieee80211_sta_he_cap*, %struct.ieee80211_sta_he_cap** %11, align 8
  %88 = getelementptr inbounds %struct.ieee80211_sta_he_cap, %struct.ieee80211_sta_he_cap* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %54, %30
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_sta_he_cap*, i32, i32) #1

declare dso_local i32 @ieee80211_get_he_sta_cap(%struct.ieee80211_supported_band*) #1

declare dso_local i32 @ieee80211_he_mcs_nss_size(%struct.ieee80211_he_cap_elem*) #1

declare dso_local i32 @ieee80211_he_ppe_size(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
