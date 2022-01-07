; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_sme_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_sme.c_cfg80211_sme_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wireless_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@CFG80211_CONN_DEAUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_sme_disassoc(%struct.wireless_dev* %0) #0 {
  %2 = alloca %struct.wireless_dev*, align 8
  %3 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.wireless_dev* %0, %struct.wireless_dev** %2, align 8
  %4 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %5 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(i32 %6)
  store %struct.cfg80211_registered_device* %7, %struct.cfg80211_registered_device** %3, align 8
  %8 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %9 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @CFG80211_CONN_DEAUTH, align 4
  %15 = load %struct.wireless_dev*, %struct.wireless_dev** %2, align 8
  %16 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %3, align 8
  %20 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %19, i32 0, i32 0
  %21 = call i32 @schedule_work(i32* %20)
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
