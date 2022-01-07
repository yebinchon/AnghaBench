; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_fwd_csa_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_mesh_fwd_csa_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { %struct.ieee80211_mgmt* }
%struct.ieee80211_local = type { i64 }
%struct.ieee80211_mgmt = type { %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt*, i32 }
%struct.ieee802_11_elems = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_CHAN_SWITCH_PARAM_INITIATOR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, %struct.ieee802_11_elems*)* @mesh_fwd_csa_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_fwd_csa_frame(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2, %struct.ieee802_11_elems* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_mgmt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee802_11_elems*, align 8
  %10 = alloca %struct.ieee80211_mgmt*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee802_11_elems* %3, %struct.ieee802_11_elems** %9, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %12, align 8
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %18, %19
  %21 = call %struct.sk_buff* @dev_alloc_skb(i64 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %79

27:                                               ; preds = %4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call %struct.ieee80211_mgmt* @skb_put(%struct.sk_buff* %33, i64 %34)
  store %struct.ieee80211_mgmt* %35, %struct.ieee80211_mgmt** %10, align 8
  %36 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %37 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @WLAN_EID_CHAN_SWITCH_PARAM_INITIATOR, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %9, align 8
  %45 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %51 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @memcpy(%struct.ieee80211_mgmt* %50, %struct.ieee80211_mgmt* %51, i64 %52)
  %54 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @eth_broadcast_addr(i32 %56)
  %58 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %58, i32 0, i32 1
  %60 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %59, align 8
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %63, align 8
  %65 = load i64, i64* @ETH_ALEN, align 8
  %66 = call i32 @memcpy(%struct.ieee80211_mgmt* %60, %struct.ieee80211_mgmt* %64, i64 %65)
  %67 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %10, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %67, i32 0, i32 0
  %69 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %68, align 8
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %72, align 8
  %74 = load i64, i64* @ETH_ALEN, align 8
  %75 = call i32 @memcpy(%struct.ieee80211_mgmt* %69, %struct.ieee80211_mgmt* %73, i64 %74)
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %76, %struct.sk_buff* %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %27, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(%struct.ieee80211_mgmt*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
