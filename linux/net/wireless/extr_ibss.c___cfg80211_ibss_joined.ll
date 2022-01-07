; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_ibss_joined.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_ibss_joined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, %struct.TYPE_9__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_bss = type { i32 }

@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_BSS_TYPE_IBSS = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_STATIC_WEP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_ibss_joined(%struct.net_device* %0, i32* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_bss*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  store %struct.wireless_dev* %11, %struct.wireless_dev** %7, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %89

21:                                               ; preds = %3
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %89

27:                                               ; preds = %21
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @IEEE80211_BSS_TYPE_IBSS, align 4
  %34 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %35 = call %struct.cfg80211_bss* @cfg80211_get_bss(%struct.TYPE_9__* %30, %struct.ieee80211_channel* %31, i32* %32, i32* null, i32 0, i32 %33, i32 %34)
  store %struct.cfg80211_bss* %35, %struct.cfg80211_bss** %8, align 8
  %36 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %37 = icmp ne %struct.cfg80211_bss* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %89

43:                                               ; preds = %27
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = call i32 @cfg80211_unhold_bss(%struct.TYPE_10__* %51)
  %53 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %54 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = call i32 @cfg80211_put_bss(%struct.TYPE_9__* %55, i32* %59)
  br label %61

61:                                               ; preds = %48, %43
  %62 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %63 = call %struct.TYPE_10__* @bss_from_pub(%struct.cfg80211_bss* %62)
  %64 = call i32 @cfg80211_hold_bss(%struct.TYPE_10__* %63)
  %65 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %8, align 8
  %66 = call %struct.TYPE_10__* @bss_from_pub(%struct.cfg80211_bss* %65)
  %67 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %68 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %67, i32 0, i32 2
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %68, align 8
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WIPHY_FLAG_HAS_STATIC_WEP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %61
  %78 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %79 = call i32 @cfg80211_upload_connect_keys(%struct.wireless_dev* %78)
  br label %80

80:                                               ; preds = %77, %61
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = call i32 @wiphy_to_rdev(%struct.TYPE_9__* %83)
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i32 @nl80211_send_ibss_bssid(i32 %84, %struct.net_device* %85, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %42, %26, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.cfg80211_bss* @cfg80211_get_bss(%struct.TYPE_9__*, %struct.ieee80211_channel*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_10__*) #1

declare dso_local i32 @cfg80211_put_bss(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @cfg80211_hold_bss(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @bss_from_pub(%struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_upload_connect_keys(%struct.wireless_dev*) #1

declare dso_local i32 @nl80211_send_ibss_bssid(i32, %struct.net_device*, i32*, i32) #1

declare dso_local i32 @wiphy_to_rdev(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
