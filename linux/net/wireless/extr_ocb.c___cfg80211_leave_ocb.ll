; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ocb.c___cfg80211_leave_ocb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ocb.c___cfg80211_leave_ocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i64, i32 }

@NL80211_IFTYPE_OCB = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cfg80211_leave_ocb(%struct.cfg80211_registered_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  store %struct.wireless_dev* %10, %struct.wireless_dev** %6, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %12 = call i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev* %11)
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_IFTYPE_OCB, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %2
  %24 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %25 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @rdev_leave_ocb(%struct.cfg80211_registered_device* %34, %struct.net_device* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %41 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %40, i32 0, i32 1
  %42 = call i32 @memset(i32* %41, i32 0, i32 4)
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %30, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ASSERT_WDEV_LOCK(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_leave_ocb(%struct.cfg80211_registered_device*, %struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
