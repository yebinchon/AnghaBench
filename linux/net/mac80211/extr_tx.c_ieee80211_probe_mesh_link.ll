; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_probe_mesh_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_probe_mesh_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { %struct.net_device*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i32 0, align 4
@IEEE80211_TX_CTRL_SKIP_MPATH_LOOKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_probe_mesh_link(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %13)
  store %struct.ieee80211_sub_if_data* %14, %struct.ieee80211_sub_if_data** %10, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %11, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  %24 = add i64 %23, 30
  %25 = add i64 %24, 18
  %26 = call %struct.sk_buff* @dev_alloc_skb(i64 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %12, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %62

32:                                               ; preds = %4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @skb_reserve(%struct.sk_buff* %33, i64 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @skb_put_data(%struct.sk_buff* %39, i32* %40, i64 %41)
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  %46 = load i32, i32* @ETH_P_802_3, align 4
  %47 = call i32 @htons(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = call i32 @skb_reset_network_header(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %53 = call i32 @skb_reset_mac_header(%struct.sk_buff* %52)
  %54 = call i32 (...) @local_bh_disable()
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load %struct.net_device*, %struct.net_device** %57, align 8
  %59 = load i32, i32* @IEEE80211_TX_CTRL_SKIP_MPATH_LOOKUP, align 4
  %60 = call i32 @__ieee80211_subif_start_xmit(%struct.sk_buff* %55, %struct.net_device* %58, i32 0, i32 %59)
  %61 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %32, %29
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @__ieee80211_subif_start_xmit(%struct.sk_buff*, %struct.net_device*, i32, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
