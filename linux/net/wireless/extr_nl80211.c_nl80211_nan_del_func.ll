; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_nan_del_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_nan_del_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.wireless_dev** }
%struct.wireless_dev = type { i64 }
%struct.cfg80211_registered_device = type { i64 }

@NL80211_IFTYPE_NAN = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@NL80211_ATTR_COOKIE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_nan_del_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_nan_del_func(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.wireless_dev**, %struct.wireless_dev*** %10, align 8
  %12 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %11, i64 0
  %13 = load %struct.wireless_dev*, %struct.wireless_dev** %12, align 8
  %14 = bitcast %struct.wireless_dev* %13 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %14, %struct.cfg80211_registered_device** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.wireless_dev**, %struct.wireless_dev*** %16, align 8
  %18 = getelementptr inbounds %struct.wireless_dev*, %struct.wireless_dev** %17, i64 1
  %19 = load %struct.wireless_dev*, %struct.wireless_dev** %18, align 8
  store %struct.wireless_dev* %19, %struct.wireless_dev** %7, align 8
  %20 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %21 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NL80211_IFTYPE_NAN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %2
  %29 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %30 = call i32 @wdev_running(%struct.wireless_dev* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ENOTCONN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %28
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @NL80211_ATTR_COOKIE, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %35
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @NL80211_ATTR_COOKIE, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nla_get_u64(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %55 = bitcast %struct.cfg80211_registered_device* %54 to %struct.wireless_dev*
  %56 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @rdev_del_nan_func(%struct.wireless_dev* %55, %struct.wireless_dev* %56, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %46, %43, %32, %25
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @wdev_running(%struct.wireless_dev*) #1

declare dso_local i32 @nla_get_u64(i32) #1

declare dso_local i32 @rdev_del_nan_func(%struct.wireless_dev*, %struct.wireless_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
