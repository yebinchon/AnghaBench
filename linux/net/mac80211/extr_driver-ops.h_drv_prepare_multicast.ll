; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_prepare_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_prepare_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.netdev_hw_addr_list*)* }
%struct.netdev_hw_addr_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.netdev_hw_addr_list*)* @drv_prepare_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_prepare_multicast(%struct.ieee80211_local* %0, %struct.netdev_hw_addr_list* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.netdev_hw_addr_list*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.netdev_hw_addr_list* %1, %struct.netdev_hw_addr_list** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %7 = load %struct.netdev_hw_addr_list*, %struct.netdev_hw_addr_list** %4, align 8
  %8 = getelementptr inbounds %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @trace_drv_prepare_multicast(%struct.ieee80211_local* %6, i32 %9)
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32*, %struct.netdev_hw_addr_list*)*, i32 (i32*, %struct.netdev_hw_addr_list*)** %14, align 8
  %16 = icmp ne i32 (i32*, %struct.netdev_hw_addr_list*)* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32*, %struct.netdev_hw_addr_list*)*, i32 (i32*, %struct.netdev_hw_addr_list*)** %21, align 8
  %23 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %23, i32 0, i32 0
  %25 = load %struct.netdev_hw_addr_list*, %struct.netdev_hw_addr_list** %4, align 8
  %26 = call i32 %22(i32* %24, %struct.netdev_hw_addr_list* %25)
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @trace_drv_return_u64(%struct.ieee80211_local* %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @trace_drv_prepare_multicast(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @trace_drv_return_u64(%struct.ieee80211_local*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
