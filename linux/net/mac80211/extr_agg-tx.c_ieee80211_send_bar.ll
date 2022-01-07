; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_send_bar.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-tx.c_ieee80211_send_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { i32* }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_bar = type { i8*, i8*, i32, i32, i8* }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_FTYPE_CTL = common dso_local global i32 0, align 4
@IEEE80211_STYPE_BACK_REQ = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL = common dso_local global i64 0, align 8
@IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA = common dso_local global i64 0, align 8
@IEEE80211_BAR_CTRL_TID_INFO_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_bar(%struct.ieee80211_vif* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_sub_if_data*, align 8
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_bar*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %14)
  store %struct.ieee80211_sub_if_data* %15, %struct.ieee80211_sub_if_data** %9, align 8
  %16 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %16, i32 0, i32 1
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %17, align 8
  store %struct.ieee80211_local* %18, %struct.ieee80211_local** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 32, %22
  %24 = call %struct.sk_buff* @dev_alloc_skb(i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %11, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %91

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @skb_reserve(%struct.sk_buff* %29, i64 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = call %struct.ieee80211_bar* @skb_put_zero(%struct.sk_buff* %35, i32 32)
  store %struct.ieee80211_bar* %36, %struct.ieee80211_bar** %12, align 8
  %37 = load i32, i32* @IEEE80211_FTYPE_CTL, align 4
  %38 = load i32, i32* @IEEE80211_STYPE_BACK_REQ, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %42 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %44 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %45, i32* %46, i32 %47)
  %49 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %50 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32 %51, i32* %55, i32 %56)
  %58 = load i64, i64* @IEEE80211_BAR_CTRL_ACK_POLICY_NORMAL, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %13, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %13, align 4
  %62 = load i64, i64* @IEEE80211_BAR_CTRL_CBMTID_COMPRESSED_BA, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* %13, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @IEEE80211_BAR_CTRL_TID_INFO_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %74 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @cpu_to_le16(i32 %75)
  %77 = load %struct.ieee80211_bar*, %struct.ieee80211_bar** %12, align 8
  %78 = getelementptr inbounds %struct.ieee80211_bar, %struct.ieee80211_bar* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %80 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = call %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %81
  store i32 %86, i32* %84, align 4
  %87 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @ieee80211_tx_skb_tid(%struct.ieee80211_sub_if_data* %87, %struct.sk_buff* %88, i32 %89)
  br label %91

91:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_bar* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb_tid(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
