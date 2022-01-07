; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_roamed.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c___cfg80211_roamed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { i64, i32, i32, %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.cfg80211_roam_info = type { %struct.TYPE_13__*, i32*, i32, i32*, i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IWEVASSOCREQIE = common dso_local global i32 0, align 4
@IWEVASSOCRESPIE = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cfg80211_roamed(%struct.wireless_dev* %0, %struct.cfg80211_roam_info* %1) #0 {
  %3 = alloca %struct.wireless_dev*, align 8
  %4 = alloca %struct.cfg80211_roam_info*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %3, align 8
  store %struct.cfg80211_roam_info* %1, %struct.cfg80211_roam_info** %4, align 8
  %5 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %6 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %5)
  %7 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %8 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %14 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_P2P_CLIENT, align 8
  %17 = icmp ne i64 %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %80

24:                                               ; preds = %18
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = icmp ne %struct.TYPE_12__* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %80

34:                                               ; preds = %24
  %35 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %36 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %35, i32 0, i32 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i32 @cfg80211_unhold_bss(%struct.TYPE_12__* %37)
  %39 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %40 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %43 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %42, i32 0, i32 4
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = call i32 @cfg80211_put_bss(i32 %41, %struct.TYPE_13__* %45)
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %48, align 8
  %49 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %4, align 8
  %50 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %50, align 8
  %52 = icmp ne %struct.TYPE_13__* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %34
  br label %88

58:                                               ; preds = %34
  %59 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %4, align 8
  %60 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = call %struct.TYPE_12__* @bss_from_pub(%struct.TYPE_13__* %61)
  %63 = call i32 @cfg80211_hold_bss(%struct.TYPE_12__* %62)
  %64 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %4, align 8
  %65 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = call %struct.TYPE_12__* @bss_from_pub(%struct.TYPE_13__* %66)
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 4
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %69, align 8
  %70 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %71 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @wiphy_to_rdev(i32 %72)
  %74 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %75 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %4, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @nl80211_send_roamed(i32 %73, i32 %76, %struct.cfg80211_roam_info* %77, i32 %78)
  br label %88

80:                                               ; preds = %33, %23
  %81 = load %struct.wireless_dev*, %struct.wireless_dev** %3, align 8
  %82 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.cfg80211_roam_info*, %struct.cfg80211_roam_info** %4, align 8
  %85 = getelementptr inbounds %struct.cfg80211_roam_info, %struct.cfg80211_roam_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = call i32 @cfg80211_put_bss(i32 %83, %struct.TYPE_13__* %86)
  br label %88

88:                                               ; preds = %80, %58, %57
  ret void
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_12__*) #1

declare dso_local i32 @cfg80211_put_bss(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @cfg80211_hold_bss(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @bss_from_pub(%struct.TYPE_13__*) #1

declare dso_local i32 @nl80211_send_roamed(i32, i32, %struct.cfg80211_roam_info*, i32) #1

declare dso_local i32 @wiphy_to_rdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
