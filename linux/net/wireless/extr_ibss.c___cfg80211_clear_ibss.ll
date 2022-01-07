; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_clear_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c___cfg80211_clear_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_7__, i32, i64, %struct.TYPE_8__*, i32, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @__cfg80211_clear_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cfg80211_clear_ibss(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  store %struct.wireless_dev* %10, %struct.wireless_dev** %5, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %13)
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %16 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %15)
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kzfree(i32* %19)
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %22 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %21, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @rdev_set_qos_map(%struct.cfg80211_registered_device* %23, %struct.net_device* %24, i32* null)
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %41, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 6
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @rdev_del_key(%struct.cfg80211_registered_device* %37, %struct.net_device* %38, i32 %39, i32 0, i32* null)
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %33

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %47 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = icmp ne %struct.TYPE_8__* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = call i32 @cfg80211_unhold_bss(%struct.TYPE_8__* %53)
  %55 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %56 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %59 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %58, i32 0, i32 3
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @cfg80211_put_bss(i32 %57, i32* %61)
  br label %63

63:                                               ; preds = %50, %45
  %64 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %65 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %64, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %65, align 8
  %66 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %67 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 1
  %70 = call i32 @memset(i32* %69, i32 0, i32 4)
  %71 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %72 = call i32 @cfg80211_sched_dfs_chan_update(%struct.cfg80211_registered_device* %71)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @rdev_set_qos_map(%struct.cfg80211_registered_device*, %struct.net_device*, i32*) #1

declare dso_local i32 @rdev_del_key(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @cfg80211_unhold_bss(%struct.TYPE_8__*) #1

declare dso_local i32 @cfg80211_put_bss(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cfg80211_sched_dfs_chan_update(%struct.cfg80211_registered_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
