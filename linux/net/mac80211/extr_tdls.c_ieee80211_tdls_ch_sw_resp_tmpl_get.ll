; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_ch_sw_resp_tmpl_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_ch_sw_resp_tmpl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { i32 }

@WLAN_TDLS_CHANNEL_SWITCH_RESPONSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed building TDLS channel switch resp frame\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"No switch timing IE in TDLS switch resp\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"TDLS get channel switch response template for %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sta_info*, i32**)* @ieee80211_tdls_ch_sw_resp_tmpl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ieee80211_tdls_ch_sw_resp_tmpl_get(%struct.sta_info* %0, i32** %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32*, align 8
  store %struct.sta_info* %0, %struct.sta_info** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %6, align 8
  %13 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %14 = call i32 @iee80211_tdls_add_ch_switch_timing(i32* %13, i32 0, i32 0)
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @WLAN_TDLS_CHANNEL_SWITCH_RESPONSE, align 4
  %21 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %29 = call %struct.sk_buff* @ieee80211_tdls_build_mgmt_packet_data(%struct.ieee80211_sub_if_data* %15, i32 %19, i32 %20, i32 0, i32 0, i32 %27, i32* %28, i32 24, i32 0, i32* null)
  store %struct.sk_buff* %29, %struct.sk_buff** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %73

33:                                               ; preds = %2
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call %struct.sk_buff* @ieee80211_build_data_template(%struct.ieee80211_sub_if_data* %34, %struct.sk_buff* %35, i32 0)
  store %struct.sk_buff* %36, %struct.sk_buff** %7, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = call i64 @IS_ERR(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %42 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @tdls_dbg(%struct.ieee80211_sub_if_data* %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %73

43:                                               ; preds = %33
  %44 = load i32**, i32*** %5, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = call i32* @ieee80211_tdls_find_sw_timing_ie(%struct.sk_buff* %47)
  store i32* %48, i32** %9, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %53 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @tdls_dbg(%struct.ieee80211_sub_if_data* %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %73

56:                                               ; preds = %46
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 0, %61
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  br label %65

65:                                               ; preds = %56, %43
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %67 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @tdls_dbg(%struct.ieee80211_sub_if_data* %66, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %72, %struct.sk_buff** %3, align 8
  br label %73

73:                                               ; preds = %65, %51, %40, %32
  %74 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %74
}

declare dso_local i32 @iee80211_tdls_add_ch_switch_timing(i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_tdls_build_mgmt_packet_data(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local %struct.sk_buff* @ieee80211_build_data_template(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i32* @ieee80211_tdls_find_sw_timing_ie(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
