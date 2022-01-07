; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_codel_drop_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_codel_drop_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_local = type { %struct.ieee80211_hw }
%struct.ieee80211_hw = type { i32 }
%struct.txq_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_local* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @codel_drop_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codel_drop_func(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.txq_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.txq_info*
  store %struct.txq_info* %9, %struct.txq_info** %7, align 8
  %10 = load %struct.txq_info*, %struct.txq_info** %7, align 8
  %11 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.TYPE_4__* @vif_to_sdata(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  store %struct.ieee80211_local* %16, %struct.ieee80211_local** %5, align 8
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %17, i32 0, i32 0
  store %struct.ieee80211_hw* %18, %struct.ieee80211_hw** %6, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %19, %struct.sk_buff* %20)
  ret void
}

declare dso_local %struct.TYPE_4__* @vif_to_sdata(i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
