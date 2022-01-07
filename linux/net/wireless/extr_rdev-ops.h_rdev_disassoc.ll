; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.net_device*, %struct.cfg80211_disassoc_request*)* }
%struct.net_device = type { i32 }
%struct.cfg80211_disassoc_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.net_device*, %struct.cfg80211_disassoc_request*)* @rdev_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdev_disassoc(%struct.cfg80211_registered_device* %0, %struct.net_device* %1, %struct.cfg80211_disassoc_request* %2) #0 {
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_disassoc_request*, align 8
  %7 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_disassoc_request* %2, %struct.cfg80211_disassoc_request** %6, align 8
  %8 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %6, align 8
  %12 = call i32 @trace_rdev_disassoc(i32* %9, %struct.net_device* %10, %struct.cfg80211_disassoc_request* %11)
  %13 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %14 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32*, %struct.net_device*, %struct.cfg80211_disassoc_request*)*, i32 (i32*, %struct.net_device*, %struct.cfg80211_disassoc_request*)** %16, align 8
  %18 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %19 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.cfg80211_disassoc_request*, %struct.cfg80211_disassoc_request** %6, align 8
  %22 = call i32 %17(i32* %19, %struct.net_device* %20, %struct.cfg80211_disassoc_request* %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @trace_rdev_return_int(i32* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @trace_rdev_disassoc(i32*, %struct.net_device*, %struct.cfg80211_disassoc_request*) #1

declare dso_local i32 @trace_rdev_return_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
