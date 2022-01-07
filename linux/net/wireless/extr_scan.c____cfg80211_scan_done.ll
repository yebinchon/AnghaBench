; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_scan.c____cfg80211_scan_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_scan.c____cfg80211_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.sk_buff*, %struct.cfg80211_scan_request*, i32 }
%struct.sk_buff = type { i32 }
%struct.cfg80211_scan_request = type { i32, %struct.TYPE_2__, i32, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i64 }

@NL80211_SCAN_FLAG_FLUSH = common dso_local global i32 0, align 4
@SIOCGIWSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @___cfg80211_scan_done(%struct.cfg80211_registered_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_scan_request*, align 8
  %6 = alloca %struct.wireless_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @ASSERT_RTNL()
  %9 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %9, i32 0, i32 0
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %15 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %16 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %18 = call i32 @nl80211_send_scan_msg(%struct.cfg80211_registered_device* %14, %struct.sk_buff* %17)
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %20, align 8
  br label %98

21:                                               ; preds = %2
  %22 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %23 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %22, i32 0, i32 1
  %24 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %23, align 8
  store %struct.cfg80211_scan_request* %24, %struct.cfg80211_scan_request** %5, align 8
  %25 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %26 = icmp ne %struct.cfg80211_scan_request* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %98

28:                                               ; preds = %21
  %29 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %30 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %29, i32 0, i32 3
  %31 = load %struct.wireless_dev*, %struct.wireless_dev** %30, align 8
  store %struct.wireless_dev* %31, %struct.wireless_dev** %6, align 8
  %32 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %33 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %38 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @cfg80211_sme_scan_done(i64 %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %43 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %41
  %48 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %49 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @NL80211_SCAN_FLAG_FLUSH, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %56 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_bh(i32* %56)
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %59 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %60 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @__cfg80211_bss_expire(%struct.cfg80211_registered_device* %58, i32 %61)
  %63 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %64 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock_bh(i32* %64)
  br label %66

66:                                               ; preds = %54, %47, %41
  %67 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %68 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %69 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %70 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.sk_buff* @nl80211_build_scan_msg(%struct.cfg80211_registered_device* %67, %struct.wireless_dev* %68, i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %7, align 8
  %74 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %75 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %66
  %79 = load %struct.wireless_dev*, %struct.wireless_dev** %6, align 8
  %80 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @dev_put(i64 %81)
  br label %83

83:                                               ; preds = %78, %66
  %84 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %85 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %84, i32 0, i32 1
  store %struct.cfg80211_scan_request* null, %struct.cfg80211_scan_request** %85, align 8
  %86 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %5, align 8
  %87 = call i32 @kfree(%struct.cfg80211_scan_request* %86)
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %93 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %92, i32 0, i32 0
  store %struct.sk_buff* %91, %struct.sk_buff** %93, align 8
  br label %98

94:                                               ; preds = %83
  %95 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call i32 @nl80211_send_scan_msg(%struct.cfg80211_registered_device* %95, %struct.sk_buff* %96)
  br label %98

98:                                               ; preds = %13, %27, %94, %90
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @nl80211_send_scan_msg(%struct.cfg80211_registered_device*, %struct.sk_buff*) #1

declare dso_local i32 @cfg80211_sme_scan_done(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__cfg80211_bss_expire(%struct.cfg80211_registered_device*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @nl80211_build_scan_msg(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @kfree(%struct.cfg80211_scan_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
