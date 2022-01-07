; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_abort_pmsr.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_rdev-ops.h_rdev_abort_pmsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)* }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_pmsr_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)* @rdev_abort_pmsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdev_abort_pmsr(%struct.cfg80211_registered_device* %0, %struct.wireless_dev* %1, %struct.cfg80211_pmsr_request* %2) #0 {
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.wireless_dev*, align 8
  %6 = alloca %struct.cfg80211_pmsr_request*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %5, align 8
  store %struct.cfg80211_pmsr_request* %2, %struct.cfg80211_pmsr_request** %6, align 8
  %7 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %7, i32 0, i32 0
  %9 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %10 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %6, align 8
  %11 = getelementptr inbounds %struct.cfg80211_pmsr_request, %struct.cfg80211_pmsr_request* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @trace_rdev_abort_pmsr(i32* %8, %struct.wireless_dev* %9, i32 %12)
  %14 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)*, i32 (i32*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)** %17, align 8
  %19 = icmp ne i32 (i32*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %22 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)*, i32 (i32*, %struct.wireless_dev*, %struct.cfg80211_pmsr_request*)** %24, align 8
  %26 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %27 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %26, i32 0, i32 0
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %5, align 8
  %29 = load %struct.cfg80211_pmsr_request*, %struct.cfg80211_pmsr_request** %6, align 8
  %30 = call i32 %25(i32* %27, %struct.wireless_dev* %28, %struct.cfg80211_pmsr_request* %29)
  br label %31

31:                                               ; preds = %20, %3
  %32 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %33 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %32, i32 0, i32 0
  %34 = call i32 @trace_rdev_return_void(i32* %33)
  ret void
}

declare dso_local i32 @trace_rdev_abort_pmsr(i32*, %struct.wireless_dev*, i32) #1

declare dso_local i32 @trace_rdev_return_void(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
