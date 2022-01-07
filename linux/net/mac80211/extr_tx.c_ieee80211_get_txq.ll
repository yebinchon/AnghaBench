; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_get_txq.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_get_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txq_info = type { i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_vif = type { i64, %struct.ieee80211_txq* }
%struct.ieee80211_txq = type { i32 }
%struct.sta_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.ieee80211_txq** }
%struct.sk_buff = type { i64, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_TX_CTL_SEND_AFTER_DTIM = common dso_local global i32 0, align 4
@IEEE80211_TX_CTRL_PS_RESPONSE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@IEEE80211_NUM_TIDS = common dso_local global i64 0, align 8
@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.txq_info* (%struct.ieee80211_local*, %struct.ieee80211_vif*, %struct.sta_info*, %struct.sk_buff*)* @ieee80211_get_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.txq_info* @ieee80211_get_txq(%struct.ieee80211_local* %0, %struct.ieee80211_vif* %1, %struct.sta_info* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.txq_info*, align 8
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_txq*, align 8
  %13 = alloca i64, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.sta_info* %2, %struct.sta_info** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %11, align 8
  store %struct.ieee80211_txq* null, %struct.ieee80211_txq** %12, align 8
  %20 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IEEE80211_TX_CTL_SEND_AFTER_DTIM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_TX_CTRL_PS_RESPONSE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %4
  store %struct.txq_info* null, %struct.txq_info** %5, align 8
  br label %118

35:                                               ; preds = %26
  %36 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ieee80211_is_data_present(i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %80

45:                                               ; preds = %35
  %46 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %47 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ieee80211_is_mgmt(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ieee80211_is_bufferable_mmpdu(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57, %51, %45
  %64 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %65 = icmp ne %struct.sta_info* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %68 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %74, align 8
  %76 = load i64, i64* @IEEE80211_NUM_TIDS, align 8
  %77 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %75, i64 %76
  %78 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %77, align 8
  store %struct.ieee80211_txq* %78, %struct.ieee80211_txq** %12, align 8
  br label %79

79:                                               ; preds = %71, %66, %63, %57
  br label %111

80:                                               ; preds = %35
  %81 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %82 = icmp ne %struct.sta_info* %81, null
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IEEE80211_QOS_CTL_TID_MASK, align 8
  %88 = and i64 %86, %87
  store i64 %88, i64* %13, align 8
  %89 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %83
  store %struct.txq_info* null, %struct.txq_info** %5, align 8
  br label %118

94:                                               ; preds = %83
  %95 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.ieee80211_txq**, %struct.ieee80211_txq*** %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds %struct.ieee80211_txq*, %struct.ieee80211_txq** %98, i64 %99
  %101 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %100, align 8
  store %struct.ieee80211_txq* %101, %struct.ieee80211_txq** %12, align 8
  br label %110

102:                                              ; preds = %80
  %103 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %104 = icmp ne %struct.ieee80211_vif* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %107 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %106, i32 0, i32 1
  %108 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %107, align 8
  store %struct.ieee80211_txq* %108, %struct.ieee80211_txq** %12, align 8
  br label %109

109:                                              ; preds = %105, %102
  br label %110

110:                                              ; preds = %109, %94
  br label %111

111:                                              ; preds = %110, %79
  %112 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %113 = icmp ne %struct.ieee80211_txq* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  store %struct.txq_info* null, %struct.txq_info** %5, align 8
  br label %118

115:                                              ; preds = %111
  %116 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %12, align 8
  %117 = call %struct.txq_info* @to_txq_info(%struct.ieee80211_txq* %116)
  store %struct.txq_info* %117, %struct.txq_info** %5, align 8
  br label %118

118:                                              ; preds = %115, %114, %93, %34
  %119 = load %struct.txq_info*, %struct.txq_info** %5, align 8
  ret %struct.txq_info* %119
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_is_data_present(i32) #1

declare dso_local i32 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_bufferable_mmpdu(i32) #1

declare dso_local %struct.txq_info* @to_txq_info(%struct.ieee80211_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
