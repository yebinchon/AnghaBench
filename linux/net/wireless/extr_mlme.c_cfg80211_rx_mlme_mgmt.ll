; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_rx_mlme_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_rx_mlme_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.ieee80211_mgmt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_rx_mlme_mgmt(%struct.net_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  store %struct.wireless_dev* %11, %struct.wireless_dev** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %14, %struct.ieee80211_mgmt** %8, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %16 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %15)
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @trace_cfg80211_rx_mlme_mgmt(%struct.net_device* %17, i32* %18, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 2
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ieee80211_is_auth(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @cfg80211_process_auth(%struct.wireless_dev* %34, i32* %35, i64 %36)
  br label %62

38:                                               ; preds = %27
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ieee80211_is_deauth(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @cfg80211_process_deauth(%struct.wireless_dev* %45, i32* %46, i64 %47)
  br label %61

49:                                               ; preds = %38
  %50 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %51 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ieee80211_is_disassoc(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @cfg80211_process_disassoc(%struct.wireless_dev* %56, i32* %57, i64 %58)
  br label %60

60:                                               ; preds = %55, %49
  br label %61

61:                                               ; preds = %60, %44
  br label %62

62:                                               ; preds = %26, %61, %33
  ret void
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @trace_cfg80211_rx_mlme_mgmt(%struct.net_device*, i32*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i32 @cfg80211_process_auth(%struct.wireless_dev*, i32*, i64) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i32 @cfg80211_process_deauth(%struct.wireless_dev*, i32*, i64) #1

declare dso_local i64 @ieee80211_is_disassoc(i32) #1

declare dso_local i32 @cfg80211_process_disassoc(%struct.wireless_dev*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
