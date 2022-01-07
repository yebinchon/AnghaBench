; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_wmm_param_ie.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_add_wmm_param_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_tx_queue_params* }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_wmm_param_ie = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.sk_buff*)* @ieee80211_tdls_add_wmm_param_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_wmm_param_ie(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_wmm_param_ie*, align 8
  %6 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.ieee80211_wmm_param_ie* @skb_put_zero(%struct.sk_buff* %8, i32 56)
  store %struct.ieee80211_wmm_param_ie* %9, %struct.ieee80211_wmm_param_ie** %5, align 8
  %10 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %11 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %13, i32 0, i32 0
  store i32 54, i32* %14, align 8
  %15 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 80, i32* %22, align 4
  %23 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 242, i32* %26, align 4
  %27 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %27, i32 0, i32 2
  store i32 2, i32* %28, align 8
  %29 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %31, i32 0, i32 4
  store i32 1, i32* %32, align 8
  %33 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %86, %2
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %35
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %40, i32 0, i32 0
  %42 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @ieee80211_ac_from_wmm(i32 %43)
  %45 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %42, i64 %44
  store %struct.ieee80211_tx_queue_params* %45, %struct.ieee80211_tx_queue_params** %6, align 8
  %46 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ieee80211_wmm_aci_aifsn(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %55 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %54, i32 0, i32 5
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %53, i32* %60, align 4
  %61 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ieee80211_wmm_ecw(i32 %63, i32 %66)
  %68 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %67, i32* %74, align 4
  %75 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_le16(i32 %77)
  %79 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %79, i32 0, i32 5
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %39
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %35

89:                                               ; preds = %35
  ret void
}

declare dso_local %struct.ieee80211_wmm_param_ie* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_ac_from_wmm(i32) #1

declare dso_local i32 @ieee80211_wmm_aci_aifsn(i32, i32, i32) #1

declare dso_local i32 @ieee80211_wmm_ecw(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
