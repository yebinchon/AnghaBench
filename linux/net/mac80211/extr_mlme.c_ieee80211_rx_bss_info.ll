; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_bss_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_bss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_mgmt = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_bss = type { i32 }
%struct.ieee80211_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_rx_status*)* @ieee80211_rx_bss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_bss*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %8, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  store %struct.ieee80211_local* %14, %struct.ieee80211_local** %9, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %16 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %15)
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %20, i32 %23)
  store %struct.ieee80211_channel* %24, %struct.ieee80211_channel** %11, align 8
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %26 = icmp ne %struct.ieee80211_channel* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %48

28:                                               ; preds = %4
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %30 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %31 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %34 = call %struct.ieee80211_bss* @ieee80211_bss_info_update(%struct.ieee80211_local* %29, %struct.ieee80211_rx_status* %30, %struct.ieee80211_mgmt* %31, i64 %32, %struct.ieee80211_channel* %33)
  store %struct.ieee80211_bss* %34, %struct.ieee80211_bss** %10, align 8
  %35 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %10, align 8
  %36 = icmp ne %struct.ieee80211_bss* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %10, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %46 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %10, align 8
  %47 = call i32 @ieee80211_rx_bss_put(%struct.ieee80211_local* %45, %struct.ieee80211_bss* %46)
  br label %48

48:                                               ; preds = %27, %37, %28
  ret void
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local %struct.ieee80211_bss* @ieee80211_bss_info_update(%struct.ieee80211_local*, %struct.ieee80211_rx_status*, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_channel*) #1

declare dso_local i32 @ieee80211_rx_bss_put(%struct.ieee80211_local*, %struct.ieee80211_bss*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
