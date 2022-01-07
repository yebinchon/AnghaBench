; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_ieee80211_get_tx_rates.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_ieee80211_get_tx_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_tx_rate = type { i64 }
%struct.ieee80211_sub_if_data = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_get_tx_rates(%struct.ieee80211_vif* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, %struct.ieee80211_tx_rate* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca %struct.ieee80211_hdr*, align 8
  %13 = alloca %struct.ieee80211_tx_info*, align 8
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.ieee80211_tx_rate* %3, %struct.ieee80211_tx_rate** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %18, %struct.ieee80211_hdr** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %13, align 8
  %21 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %22 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %23 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @rate_control_fill_sta_table(%struct.ieee80211_sta* %21, %struct.ieee80211_tx_info* %22, %struct.ieee80211_tx_rate* %23, i32 %24)
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = icmp ne %struct.ieee80211_vif* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %5
  br label %90

29:                                               ; preds = %5
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %30)
  store %struct.ieee80211_sub_if_data* %31, %struct.ieee80211_sub_if_data** %11, align 8
  %32 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %38, align 8
  %40 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %39, i64 %42
  %44 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %43, align 8
  store %struct.ieee80211_supported_band* %44, %struct.ieee80211_supported_band** %14, align 8
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %12, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ieee80211_is_data(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %29
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %52 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %53 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %54 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @rate_control_apply_mask(%struct.ieee80211_sub_if_data* %51, %struct.ieee80211_sta* %52, %struct.ieee80211_supported_band* %53, %struct.ieee80211_tx_rate* %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %29
  %58 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %58, i64 0
  %60 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %69 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %70 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %71 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__rate_control_send_low(%struct.TYPE_6__* %67, %struct.ieee80211_supported_band* %68, %struct.ieee80211_sta* %69, %struct.ieee80211_tx_info* %70, i32 %78)
  br label %80

80:                                               ; preds = %63, %57
  %81 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %82 = icmp ne %struct.ieee80211_sta* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %85 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %86 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %13, align 8
  %87 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @rate_fixup_ratelist(%struct.ieee80211_vif* %84, %struct.ieee80211_supported_band* %85, %struct.ieee80211_tx_info* %86, %struct.ieee80211_tx_rate* %87, i32 %88)
  br label %90

90:                                               ; preds = %28, %83, %80
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rate_control_fill_sta_table(%struct.ieee80211_sta*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @rate_control_apply_mask(%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_rate*, i32) #1

declare dso_local i32 @__rate_control_send_low(%struct.TYPE_6__*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, %struct.ieee80211_tx_info*, i32) #1

declare dso_local i32 @rate_fixup_ratelist(%struct.ieee80211_vif*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
