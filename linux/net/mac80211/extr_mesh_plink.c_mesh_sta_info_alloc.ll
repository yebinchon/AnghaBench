; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_sta_info_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_plink.c_mesh_sta_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.ieee802_11_elems = type { i32, i32 }
%struct.ieee80211_rx_status = type { i32 }

@IEEE80211_MESH_SEC_AUTHED = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sta_info* (%struct.ieee80211_sub_if_data*, i32*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)* @mesh_sta_info_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sta_info* @mesh_sta_info_alloc(%struct.ieee80211_sub_if_data* %0, i32* %1, %struct.ieee802_11_elems* %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee802_11_elems*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %7, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %8, align 8
  store %struct.sta_info* null, %struct.sta_info** %9, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IEEE80211_MESH_SEC_AUTHED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %17, %4
  %27 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %28 = call i64 @mesh_peer_accepts_plinks(%struct.ieee802_11_elems* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %32 = call i64 @mesh_plink_availables(%struct.ieee80211_sub_if_data* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* @SIGNAL_DBM, align 4
  %40 = call i64 @ieee80211_hw_check(i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %52 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %7, align 8
  %55 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i32 @cfg80211_notify_new_peer_candidate(i32 %49, i32* %50, i32 %53, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %46, %30, %26
  br label %65

61:                                               ; preds = %17
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call %struct.sta_info* @__mesh_sta_info_alloc(%struct.ieee80211_sub_if_data* %62, i32* %63)
  store %struct.sta_info* %64, %struct.sta_info** %9, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  ret %struct.sta_info* %66
}

declare dso_local i64 @mesh_peer_accepts_plinks(%struct.ieee802_11_elems*) #1

declare dso_local i64 @mesh_plink_availables(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @cfg80211_notify_new_peer_candidate(i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.sta_info* @__mesh_sta_info_alloc(%struct.ieee80211_sub_if_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
