; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwfreq.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_freq = type { i32, i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*)* @cfg80211_wext_giwfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_giwfreq(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_freq* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_freq*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  %11 = alloca %struct.cfg80211_registered_device*, align 8
  %12 = alloca %struct.cfg80211_chan_def, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_freq* %2, %struct.iw_freq** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %15, align 8
  store %struct.wireless_dev* %16, %struct.wireless_dev** %10, align 8
  %17 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %18 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %19)
  store %struct.cfg80211_registered_device* %20, %struct.cfg80211_registered_device** %11, align 8
  %21 = bitcast %struct.cfg80211_chan_def* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 8, i1 false)
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %64 [
    i32 128, label %25
    i32 130, label %31
    i32 129, label %37
  ]

25:                                               ; preds = %4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %28 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @cfg80211_mgd_wext_giwfreq(%struct.net_device* %26, %struct.iw_request_info* %27, %struct.iw_freq* %28, i8* %29)
  store i32 %30, i32* %5, align 4
  br label %67

31:                                               ; preds = %4
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %34 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @cfg80211_ibss_wext_giwfreq(%struct.net_device* %32, %struct.iw_request_info* %33, %struct.iw_freq* %34, i8* %35)
  store i32 %36, i32* %5, align 4
  br label %67

37:                                               ; preds = %4
  %38 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %39 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %67

47:                                               ; preds = %37
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %11, align 8
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %50 = call i32 @rdev_get_channel(%struct.cfg80211_registered_device* %48, %struct.wireless_dev* %49, %struct.cfg80211_chan_def* %12)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %67

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %12, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %61 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.iw_freq*, %struct.iw_freq** %8, align 8
  %63 = getelementptr inbounds %struct.iw_freq, %struct.iw_freq* %62, i32 0, i32 0
  store i32 6, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %67

64:                                               ; preds = %4
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %55, %53, %44, %31, %25
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cfg80211_mgd_wext_giwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @cfg80211_ibss_wext_giwfreq(%struct.net_device*, %struct.iw_request_info*, %struct.iw_freq*, i8*) #1

declare dso_local i32 @rdev_get_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
