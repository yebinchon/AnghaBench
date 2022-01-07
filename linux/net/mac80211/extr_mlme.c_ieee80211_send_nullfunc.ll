; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_send_nullfunc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_send_nullfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ieee80211_hdr_3addr = type { i32 }
%struct.TYPE_6__ = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_HE = common dso_local global i32 0, align 4
@DOESNT_SUPPORT_QOS_NDP = common dso_local global i32 0, align 4
@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_OFFCHAN_TX_OK = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_STA_CONNECTION_POLL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_USE_MINRATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_send_nullfunc(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %9 = alloca %struct.ieee80211_if_managed*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.ieee80211_if_managed* %12, %struct.ieee80211_if_managed** %9, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %96

27:                                               ; preds = %19, %3
  %28 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %28, i32 0, i32 0
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = load i32, i32* @DOESNT_SUPPORT_QOS_NDP, align 4
  %35 = call i64 @ieee80211_hw_check(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call %struct.sk_buff* @ieee80211_nullfunc_get(i32* %29, %struct.TYPE_5__* %31, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  br label %96

43:                                               ; preds = %27
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %47, %struct.ieee80211_hdr_3addr** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %8, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %43
  %58 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %59 = load i32, i32* @IEEE80211_TX_INTFL_OFFCHAN_TX_OK, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %62 = call %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %67 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %66, i32 0, i32 0
  %68 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %69 = call i64 @ieee80211_hw_check(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %57
  %72 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = call %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %72
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %57
  %79 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %80 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IEEE80211_STA_CONNECTION_POLL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* @IEEE80211_TX_CTL_USE_MINRATE, align 4
  %87 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %88 = call %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %78
  %93 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %95 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %93, %struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %92, %42, %26
  ret void
}

declare dso_local %struct.sk_buff* @ieee80211_nullfunc_get(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_6__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
