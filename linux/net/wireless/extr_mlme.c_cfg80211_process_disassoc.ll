; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_process_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_process_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_11__*, %struct.TYPE_10__*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.cfg80211_registered_device = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wireless_dev*, i32*, i64)* @cfg80211_process_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg80211_process_disassoc(%struct.wireless_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.wireless_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wireless_dev* %0, %struct.wireless_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %13 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %14)
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %17, %struct.ieee80211_mgmt** %8, align 8
  %18 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %9, align 8
  %21 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %31 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ether_addr_equal(i32 %29, i32* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @nl80211_send_disassoc(%struct.cfg80211_registered_device* %39, %struct.TYPE_11__* %42, i32* %43, i64 %44, i32 %45)
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %48 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %3
  %52 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %53 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @ether_addr_equal(i32 %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %51, %3
  %63 = phi i1 [ true, %3 ], [ %61, %51 ]
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %77

68:                                               ; preds = %62
  %69 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %70 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @__cfg80211_disconnected(%struct.TYPE_11__* %71, i32* null, i32 0, i32 %72, i32 %73)
  %75 = load %struct.wireless_dev*, %struct.wireless_dev** %4, align 8
  %76 = call i32 @cfg80211_sme_disassoc(%struct.wireless_dev* %75)
  br label %77

77:                                               ; preds = %68, %67
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @nl80211_send_disassoc(%struct.cfg80211_registered_device*, %struct.TYPE_11__*, i32*, i64, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @__cfg80211_disconnected(%struct.TYPE_11__*, i32*, i32, i32, i32) #1

declare dso_local i32 @cfg80211_sme_disassoc(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
