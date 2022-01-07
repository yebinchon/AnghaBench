; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32, i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_disconnect(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wireless_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %15 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %14)
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kzfree(i32* %18)
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 4
  store i32* null, i32** %21, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %25 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @cfg80211_sme_disconnect(%struct.wireless_dev* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  br label %55

32:                                               ; preds = %4
  %33 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %34 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @cfg80211_mlme_down(%struct.cfg80211_registered_device* %40, %struct.net_device* %41)
  br label %54

43:                                               ; preds = %32
  %44 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %45 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @rdev_disconnect(%struct.cfg80211_registered_device* %49, %struct.net_device* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %48, %43
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %57 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  %62 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @kzfree(i32*) #1

declare dso_local i32 @cfg80211_sme_disconnect(%struct.wireless_dev*, i32) #1

declare dso_local i32 @cfg80211_mlme_down(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @rdev_disconnect(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
