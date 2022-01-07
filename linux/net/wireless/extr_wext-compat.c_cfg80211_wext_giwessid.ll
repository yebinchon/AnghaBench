; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwessid.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-compat.c_cfg80211_wext_giwessid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @cfg80211_wext_giwessid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_wext_giwessid(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wireless_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  store %struct.wireless_dev* %13, %struct.wireless_dev** %10, align 8
  %14 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %15 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %17 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  %19 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %33 [
    i32 129, label %21
    i32 128, label %27
  ]

21:                                               ; preds = %4
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %24 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @cfg80211_ibss_wext_giwessid(%struct.net_device* %22, %struct.iw_request_info* %23, %struct.iw_point* %24, i8* %25)
  store i32 %26, i32* %5, align 4
  br label %36

27:                                               ; preds = %4
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %30 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @cfg80211_mgd_wext_giwessid(%struct.net_device* %28, %struct.iw_request_info* %29, %struct.iw_point* %30, i8* %31)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %27, %21
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @cfg80211_ibss_wext_giwessid(%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*) #1

declare dso_local i32 @cfg80211_mgd_wext_giwessid(%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
