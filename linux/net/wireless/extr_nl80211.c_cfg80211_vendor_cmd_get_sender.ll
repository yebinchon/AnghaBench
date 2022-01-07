; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_vendor_cmd_get_sender.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_vendor_cmd_get_sender.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_registered_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_vendor_cmd_get_sender(%struct.wiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  %5 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %6 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %5)
  store %struct.cfg80211_registered_device* %6, %struct.cfg80211_registered_device** %4, align 8
  %7 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
