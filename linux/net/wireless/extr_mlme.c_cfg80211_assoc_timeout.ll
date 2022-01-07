; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_assoc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_mlme.c_cfg80211_assoc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.wireless_dev* }
%struct.wireless_dev = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.cfg80211_bss = type { i32 }
%struct.cfg80211_registered_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_assoc_timeout(%struct.net_device* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cfg80211_bss*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.wireless_dev*, %struct.wireless_dev** %9, align 8
  store %struct.wireless_dev* %10, %struct.wireless_dev** %5, align 8
  %11 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %12 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %11, i32 0, i32 0
  %13 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  store %struct.wiphy* %13, %struct.wiphy** %6, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = call %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy* %14)
  store %struct.cfg80211_registered_device* %15, %struct.cfg80211_registered_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %18 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trace_cfg80211_send_assoc_timeout(%struct.net_device* %16, i32 %19)
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @nl80211_send_assoc_timeout(%struct.cfg80211_registered_device* %21, %struct.net_device* %22, i32 %25, i32 %26)
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %29 = call i32 @cfg80211_sme_assoc_timeout(%struct.wireless_dev* %28)
  %30 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %31 = call i32 @bss_from_pub(%struct.cfg80211_bss* %30)
  %32 = call i32 @cfg80211_unhold_bss(i32 %31)
  %33 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %34 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %4, align 8
  %35 = call i32 @cfg80211_put_bss(%struct.wiphy* %33, %struct.cfg80211_bss* %34)
  ret void
}

declare dso_local %struct.cfg80211_registered_device* @wiphy_to_rdev(%struct.wiphy*) #1

declare dso_local i32 @trace_cfg80211_send_assoc_timeout(%struct.net_device*, i32) #1

declare dso_local i32 @nl80211_send_assoc_timeout(%struct.cfg80211_registered_device*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @cfg80211_sme_assoc_timeout(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_unhold_bss(i32) #1

declare dso_local i32 @bss_from_pub(%struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_put_bss(%struct.wiphy*, %struct.cfg80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
