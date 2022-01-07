; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_scan_request = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@NL80211_FEATURE_AP_SCAN = common dso_local global i32 0, align 4
@NL80211_SCAN_FLAG_AP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_scan_request*)* @ieee80211_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_scan(%struct.wiphy* %0, %struct.cfg80211_scan_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_scan_request* %1, %struct.cfg80211_scan_request** %5, align 8
  %7 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %8 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(i32 %9)
  store %struct.ieee80211_sub_if_data* %10, %struct.ieee80211_sub_if_data** %6, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 2
  %13 = call i32 @ieee80211_vif_type_p2p(i32* %12)
  switch i32 %13, label %52 [
    i32 128, label %14
    i32 135, label %14
    i32 133, label %14
    i32 131, label %14
    i32 130, label %14
    i32 129, label %15
    i32 134, label %26
    i32 132, label %51
  ]

14:                                               ; preds = %2, %2, %2, %2, %2
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %55

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %2, %25
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %26
  %34 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %35 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NL80211_FEATURE_AP_SCAN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %42 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NL80211_SCAN_FLAG_AP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40, %33
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %59

50:                                               ; preds = %40, %26
  br label %55

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %2, %51
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %50, %24, %14
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %57 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %58 = call i32 @ieee80211_request_scan(%struct.ieee80211_sub_if_data* %56, %struct.cfg80211_scan_request* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %52, %47
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(i32*) #1

declare dso_local i32 @ieee80211_request_scan(%struct.ieee80211_sub_if_data*, %struct.cfg80211_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
