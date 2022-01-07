; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_disassoc_request = type { i32, i32, %struct.TYPE_3__*, i32*, i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mlme_disassoc(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wireless_dev*, align 8
  %17 = alloca %struct.cfg80211_disassoc_request, align 8
  %18 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.net_device*, %struct.net_device** %10, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %20, align 8
  store %struct.wireless_dev* %21, %struct.wireless_dev** %16, align 8
  %22 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 0
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 1
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %26, align 8
  %27 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 3
  %28 = load i32*, i32** %12, align 8
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 4
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %29, align 8
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %32 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %31)
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %7
  %38 = load i32, i32* @ENOTCONN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %72

40:                                               ; preds = %7
  %41 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %42 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i64 @ether_addr_equal(i32 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %52 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.cfg80211_disassoc_request, %struct.cfg80211_disassoc_request* %17, i32 0, i32 2
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %55, align 8
  br label %59

56:                                               ; preds = %40
  %57 = load i32, i32* @ENOTCONN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %72

59:                                               ; preds = %50
  %60 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %61 = load %struct.net_device*, %struct.net_device** %10, align 8
  %62 = call i32 @rdev_disassoc(%struct.cfg80211_registered_device* %60, %struct.net_device* %61, %struct.cfg80211_disassoc_request* %17)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %18, align 4
  store i32 %66, i32* %8, align 4
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %69 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @WARN_ON(%struct.TYPE_4__* %70)
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %67, %65, %56, %37
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @rdev_disassoc(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_disassoc_request*) #1

declare dso_local i32 @WARN_ON(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
