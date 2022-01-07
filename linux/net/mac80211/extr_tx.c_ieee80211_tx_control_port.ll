; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_control_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_tx_control_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { i64, %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.ethhdr = type { i64, i32, i32 }

@ETH_P_PREAUTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_tx_control_port(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i64 %3, i32* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wiphy*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_sub_if_data*, align 8
  %17 = alloca %struct.ieee80211_local*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca %struct.ethhdr*, align 8
  %20 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %9, align 8
  store %struct.net_device* %1, %struct.net_device** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %21 = load %struct.net_device*, %struct.net_device** %10, align 8
  %22 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %21)
  store %struct.ieee80211_sub_if_data* %22, %struct.ieee80211_sub_if_data** %16, align 8
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 2
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %24, align 8
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %17, align 8
  %26 = load i64, i64* %14, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %7
  %32 = load i64, i64* %14, align 8
  %33 = load i32, i32* @ETH_P_PREAUTH, align 4
  %34 = call i64 @cpu_to_be16(i32 %33)
  %35 = icmp ne i64 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %110

39:                                               ; preds = %31, %7
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 8
  store i64 %43, i64* %20, align 8
  br label %45

44:                                               ; preds = %39
  store i64 0, i64* %20, align 8
  br label %45

45:                                               ; preds = %44, %42
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 16
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %50, %51
  %53 = call %struct.sk_buff* @dev_alloc_skb(i64 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %18, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %45
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %110

59:                                               ; preds = %45
  %60 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %61 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  %62 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 16
  %66 = call i32 @skb_reserve(%struct.sk_buff* %60, i64 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @skb_put_data(%struct.sk_buff* %67, i32* %68, i64 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %72 = call %struct.ethhdr* @skb_push(%struct.sk_buff* %71, i32 16)
  store %struct.ethhdr* %72, %struct.ethhdr** %19, align 8
  %73 = load %struct.ethhdr*, %struct.ethhdr** %19, align 8
  %74 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* @ETH_ALEN, align 4
  %78 = call i32 @memcpy(i32 %75, i32* %76, i32 %77)
  %79 = load %struct.ethhdr*, %struct.ethhdr** %19, align 8
  %80 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %16, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32 %81, i32* %85, i32 %86)
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.ethhdr*, %struct.ethhdr** %19, align 8
  %90 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %10, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  store %struct.net_device* %91, %struct.net_device** %93, align 8
  %94 = load i32, i32* @ETH_P_802_3, align 4
  %95 = call i32 @htons(i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %99 = call i32 @skb_reset_network_header(%struct.sk_buff* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %101 = call i32 @skb_reset_mac_header(%struct.sk_buff* %100)
  %102 = call i32 (...) @local_bh_disable()
  %103 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load %struct.net_device*, %struct.net_device** %105, align 8
  %107 = load i64, i64* %20, align 8
  %108 = call i32 @__ieee80211_subif_start_xmit(%struct.sk_buff* %103, %struct.net_device* %106, i64 %107, i32 0)
  %109 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %59, %56, %36
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i64) #1

declare dso_local %struct.ethhdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @__ieee80211_subif_start_xmit(%struct.sk_buff*, %struct.net_device*, i64, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
