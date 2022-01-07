; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_probe_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_probe_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_rx_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*)* @ieee80211_rx_mgmt_probe_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_mgmt_probe_resp(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca %struct.ieee80211_if_managed*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %14, %struct.ieee80211_mgmt** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.ieee80211_rx_status*
  store %struct.ieee80211_rx_status* %19, %struct.ieee80211_rx_status** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store %struct.ieee80211_if_managed* %25, %struct.ieee80211_if_managed** %6, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %27 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %26)
  %28 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ether_addr_equal(i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  br label %79

38:                                               ; preds = %2
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  %45 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %46 = bitcast %struct.ieee80211_mgmt* %45 to i32*
  %47 = ptrtoint i32* %44 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  br label %79

55:                                               ; preds = %38
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %57 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %60 = call i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data* %56, %struct.ieee80211_mgmt* %57, i64 %58, %struct.ieee80211_rx_status* %59)
  %61 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %55
  %66 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %69, i32 0, i32 0
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ether_addr_equal(i32 %68, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %78 = call i32 @ieee80211_reset_ap_probe(%struct.ieee80211_sub_if_data* %77)
  br label %79

79:                                               ; preds = %37, %54, %76, %65, %55
  ret void
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ieee80211_reset_ap_probe(%struct.ieee80211_sub_if_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
