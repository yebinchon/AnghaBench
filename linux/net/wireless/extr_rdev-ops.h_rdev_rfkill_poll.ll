; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_rfkill_poll.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_rfkill_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*)* @rdev_rfkill_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdev_rfkill_poll(%struct.cfg80211_registered_device* %0) #0 {
  %2 = alloca %struct.cfg80211_registered_device*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %2, align 8
  %3 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %4 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %3, i32 0, i32 0
  %5 = call i32 @trace_rdev_rfkill_poll(i32* %4)
  %6 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %7 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32*)*, i32 (i32*)** %9, align 8
  %11 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %12 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %11, i32 0, i32 0
  %13 = call i32 %10(i32* %12)
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %14, i32 0, i32 0
  %16 = call i32 @trace_rdev_return_void(i32* %15)
  ret void
}

declare dso_local i32 @trace_rdev_rfkill_poll(i32*) #1

declare dso_local i32 @trace_rdev_return_void(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
