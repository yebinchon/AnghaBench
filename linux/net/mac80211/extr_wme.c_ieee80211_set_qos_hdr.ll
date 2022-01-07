; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c_ieee80211_set_qos_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c_ieee80211_set_qos_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32 }

@IEEE80211_QOS_CTL_TAG1D_MASK = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_ACK_POLICY_MASK = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_ACK_POLICY_NOACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_RSPI = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_MESH_PS_LEVEL = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_MESH_CONTROL_PRESENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_set_qos_hdr(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_sub_if_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %14, %struct.ieee80211_hdr** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %15)
  store %struct.ieee80211_tx_info* %16, %struct.ieee80211_tx_info** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_QOS_CTL_TAG1D_MASK, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee80211_is_data_qos(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %93

28:                                               ; preds = %2
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %30 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %34 = load i32, i32* @IEEE80211_QOS_CTL_ACK_POLICY_MASK, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %32, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_multicast_ether_addr(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %28
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43, %28
  %52 = load i32, i32* @IEEE80211_QOS_CTL_ACK_POLICY_NOACK, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %56 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %51, %43
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %67, i32 0, i32 1
  %69 = call i64 @ieee80211_vif_is_mesh(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %60
  %72 = load i32, i32* @IEEE80211_QOS_CTL_RSPI, align 4
  %73 = load i32, i32* @IEEE80211_QOS_CTL_MESH_PS_LEVEL, align 4
  %74 = or i32 %72, %73
  %75 = ashr i32 %74, 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ieee80211_is_qos_nullfunc(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %71
  %85 = load i32, i32* @IEEE80211_QOS_CTL_MESH_CONTROL_PRESENT, align 4
  %86 = ashr i32 %85, 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %71
  br label %93

91:                                               ; preds = %60
  %92 = load i32*, i32** %9, align 8
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %27, %91, %90
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ieee80211_vif_is_mesh(i32*) #1

declare dso_local i32 @ieee80211_is_qos_nullfunc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
