; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.h_rate_control_free_sta.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.h_rate_control_free_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i8*, %struct.ieee80211_sta, %struct.rate_control_ref* }
%struct.ieee80211_sta = type { i32 }
%struct.rate_control_ref = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.ieee80211_sta*, i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*)* @rate_control_free_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_free_sta(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sta_info*, align 8
  %3 = alloca %struct.rate_control_ref*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca i8*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %2, align 8
  %6 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 2
  %8 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  store %struct.rate_control_ref* %8, %struct.rate_control_ref** %3, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 1
  store %struct.ieee80211_sta* %10, %struct.ieee80211_sta** %4, align 8
  %11 = load %struct.sta_info*, %struct.sta_info** %2, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  %14 = load %struct.rate_control_ref*, %struct.rate_control_ref** %3, align 8
  %15 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.ieee80211_sta*, i8*)*, i32 (i32, %struct.ieee80211_sta*, i8*)** %17, align 8
  %19 = load %struct.rate_control_ref*, %struct.rate_control_ref** %3, align 8
  %20 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 %18(i32 %21, %struct.ieee80211_sta* %22, i8* %23)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
