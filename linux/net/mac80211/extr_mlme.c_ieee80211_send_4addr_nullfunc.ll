; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_send_4addr_nullfunc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_send_4addr_nullfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_hdr = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_HE = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_NULLFUNC = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*)* @ieee80211_send_4addr_nullfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_4addr_nullfunc(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1) #0 {
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %4, align 8
  %8 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %105

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %105

28:                                               ; preds = %18
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 30
  %34 = call %struct.sk_buff* @dev_alloc_skb(i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %105

38:                                               ; preds = %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @skb_reserve(%struct.sk_buff* %39, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call %struct.ieee80211_hdr* @skb_put_zero(%struct.sk_buff* %45, i32 30)
  store %struct.ieee80211_hdr* %46, %struct.ieee80211_hdr** %6, align 8
  %47 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %48 = load i32, i32* @IEEE80211_STYPE_NULLFUNC, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @cpu_to_le16(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i32 %60, i32 %65, i32 %66)
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = call i32 @memcpy(i32 %70, i32 %74, i32 %75)
  %77 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ETH_ALEN, align 4
  %86 = call i32 @memcpy(i32 %79, i32 %84, i32 %85)
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %91 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = call i32 @memcpy(i32 %89, i32 %93, i32 %94)
  %96 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = call %struct.TYPE_10__* @IEEE80211_SKB_CB(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %102, %struct.sk_buff* %103)
  br label %105

105:                                              ; preds = %38, %37, %27, %17
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_hdr* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_10__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
