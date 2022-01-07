; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_get_dev_from_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_get_dev_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32 }
%struct.net = type { i32 }
%struct.genl_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_registered_device* (%struct.net*, %struct.genl_info*)* @cfg80211_get_dev_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_registered_device* @cfg80211_get_dev_from_info(%struct.net* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.genl_info*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %7 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.cfg80211_registered_device* @__cfg80211_rdev_from_attrs(%struct.net* %5, i32 %8)
  ret %struct.cfg80211_registered_device* %9
}

declare dso_local %struct.cfg80211_registered_device* @__cfg80211_rdev_from_attrs(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
