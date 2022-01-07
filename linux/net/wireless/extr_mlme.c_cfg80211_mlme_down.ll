; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_mlme_down(%struct.cfg80211_registered_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  store %struct.wireless_dev* %11, %struct.wireless_dev** %5, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %17 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %16)
  %18 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %19 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %27 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %44

31:                                               ; preds = %25
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32* %15, i32 %37, i32 %38)
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %43 = call i32 @cfg80211_mlme_deauth(%struct.cfg80211_registered_device* %40, %struct.net_device* %41, i32* %15, i32* null, i32 0, i32 %42, i32 0)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %31, %30, %24
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
    i32 1, label %47
  ]

47:                                               ; preds = %44, %44
  ret void

48:                                               ; preds = %44
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @cfg80211_mlme_deauth(%struct.cfg80211_registered_device*, %struct.net_device*, i32*, i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
