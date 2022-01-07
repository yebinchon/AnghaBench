; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_mlme_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.cfg80211_assoc_request = type { i32, i32, i32, i32 }

@EALREADY = common dso_local global i32 0, align 4
@IEEE80211_BSS_TYPE_ESS = common dso_local global i32 0, align 4
@IEEE80211_PRIVACY_ANY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_mlme_assoc(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.ieee80211_channel* %2, i32* %3, i32* %4, i32 %5, %struct.cfg80211_assoc_request* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_registered_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.cfg80211_assoc_request*, align 8
  %16 = alloca %struct.wireless_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.cfg80211_assoc_request* %6, %struct.cfg80211_assoc_request** %15, align 8
  %18 = load %struct.net_device*, %struct.net_device** %10, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %19, align 8
  store %struct.wireless_dev* %20, %struct.wireless_dev** %16, align 8
  %21 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %22 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %21)
  %23 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %24 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %7
  %28 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %29 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load %struct.wireless_dev*, %struct.wireless_dev** %16, align 8
  %34 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %40 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ether_addr_equal(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %32, %27
  %45 = load i32, i32* @EALREADY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %102

47:                                               ; preds = %32, %7
  %48 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %49 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %48, i32 0, i32 2
  %50 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %51 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cfg80211_oper_and_ht_capa(i32* %49, i32 %53)
  %55 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %56 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %55, i32 0, i32 1
  %57 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %58 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @cfg80211_oper_and_vht_capa(i32* %56, i32 %60)
  %62 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %63 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %62, i32 0, i32 0
  %64 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @IEEE80211_BSS_TYPE_ESS, align 4
  %69 = load i32, i32* @IEEE80211_PRIVACY_ANY, align 4
  %70 = call i32 @cfg80211_get_bss(%struct.TYPE_7__* %63, %struct.ieee80211_channel* %64, i32* %65, i32* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %72 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %74 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %47
  %78 = load i32, i32* @ENOENT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  br label %102

80:                                               ; preds = %47
  %81 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %82 = load %struct.net_device*, %struct.net_device** %10, align 8
  %83 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %84 = call i32 @rdev_assoc(%struct.cfg80211_registered_device* %81, %struct.net_device* %82, %struct.cfg80211_assoc_request* %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %80
  %88 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %89 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @bss_from_pub(i32 %90)
  %92 = call i32 @cfg80211_hold_bss(i32 %91)
  br label %100

93:                                               ; preds = %80
  %94 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %9, align 8
  %95 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %94, i32 0, i32 0
  %96 = load %struct.cfg80211_assoc_request*, %struct.cfg80211_assoc_request** %15, align 8
  %97 = getelementptr inbounds %struct.cfg80211_assoc_request, %struct.cfg80211_assoc_request* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @cfg80211_put_bss(%struct.TYPE_7__* %95, i32 %98)
  br label %100

100:                                              ; preds = %93, %87
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %100, %77, %44
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @cfg80211_oper_and_ht_capa(i32*, i32) #1

declare dso_local i32 @cfg80211_oper_and_vht_capa(i32*, i32) #1

declare dso_local i32 @cfg80211_get_bss(%struct.TYPE_7__*, %struct.ieee80211_channel*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @rdev_assoc(%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_assoc_request*) #1

declare dso_local i32 @cfg80211_hold_bss(i32) #1

declare dso_local i32 @bss_from_pub(i32) #1

declare dso_local i32 @cfg80211_put_bss(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
