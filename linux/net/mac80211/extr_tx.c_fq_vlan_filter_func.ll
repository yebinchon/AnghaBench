; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_fq_vlan_filter_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_fq_vlan_filter_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq = type { i32 }
%struct.fq_tin = type { i32 }
%struct.fq_flow = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fq*, %struct.fq_tin*, %struct.fq_flow*, %struct.sk_buff*, i8*)* @fq_vlan_filter_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fq_vlan_filter_func(%struct.fq* %0, %struct.fq_tin* %1, %struct.fq_flow* %2, %struct.sk_buff* %3, i8* %4) #0 {
  %6 = alloca %struct.fq*, align 8
  %7 = alloca %struct.fq_tin*, align 8
  %8 = alloca %struct.fq_flow*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  store %struct.fq* %0, %struct.fq** %6, align 8
  store %struct.fq_tin* %1, %struct.fq_tin** %7, align 8
  store %struct.fq_flow* %2, %struct.fq_flow** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %13 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %12)
  store %struct.ieee80211_tx_info* %13, %struct.ieee80211_tx_info** %11, align 8
  %14 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp eq i8* %17, %18
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
