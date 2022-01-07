; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c_cfg80211_leave_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_ibss.c_cfg80211_leave_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_leave_ibss(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %10, align 8
  store %struct.wireless_dev* %11, %struct.wireless_dev** %7, align 8
  %12 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %13 = call i32 @wdev_lock(%struct.wireless_dev* %12)
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device* %14, %struct.net_device* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %19 = call i32 @wdev_unlock(%struct.wireless_dev* %18)
  %20 = load i32, i32* %8, align 4
  ret i32 %20
}

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @__cfg80211_leave_ibss(%struct.cfg80211_registered_device*, %struct.net_device*, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
