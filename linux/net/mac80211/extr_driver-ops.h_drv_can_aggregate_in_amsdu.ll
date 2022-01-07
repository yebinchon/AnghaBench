; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_can_aggregate_in_amsdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_driver-ops.h_drv_can_aggregate_in_amsdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, %struct.sk_buff*, %struct.sk_buff*)* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.sk_buff*, %struct.sk_buff*)* @drv_can_aggregate_in_amsdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drv_can_aggregate_in_amsdu(%struct.ieee80211_local* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %9 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32*, %struct.sk_buff*, %struct.sk_buff*)*, i32 (i32*, %struct.sk_buff*, %struct.sk_buff*)** %11, align 8
  %13 = icmp ne i32 (i32*, %struct.sk_buff*, %struct.sk_buff*)* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.sk_buff*, %struct.sk_buff*)*, i32 (i32*, %struct.sk_buff*, %struct.sk_buff*)** %19, align 8
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 %20(i32* %22, %struct.sk_buff* %23, %struct.sk_buff* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %15, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
