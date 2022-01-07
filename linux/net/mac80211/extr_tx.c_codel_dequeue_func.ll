; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_codel_dequeue_func.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_codel_dequeue_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.codel_vars = type { i32 }
%struct.ieee80211_local = type { %struct.codel_vars*, %struct.fq }
%struct.fq = type { %struct.fq_flow* }
%struct.fq_flow = type { i32 }
%struct.txq_info = type { %struct.fq_flow, %struct.codel_vars, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ieee80211_local* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.codel_vars*, i8*)* @codel_dequeue_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @codel_dequeue_func(%struct.codel_vars* %0, i8* %1) #0 {
  %3 = alloca %struct.codel_vars*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.txq_info*, align 8
  %7 = alloca %struct.fq*, align 8
  %8 = alloca %struct.fq_flow*, align 8
  store %struct.codel_vars* %0, %struct.codel_vars** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.txq_info*
  store %struct.txq_info* %10, %struct.txq_info** %6, align 8
  %11 = load %struct.txq_info*, %struct.txq_info** %6, align 8
  %12 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_4__* @vif_to_sdata(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %5, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  store %struct.fq* %19, %struct.fq** %7, align 8
  %20 = load %struct.codel_vars*, %struct.codel_vars** %3, align 8
  %21 = load %struct.txq_info*, %struct.txq_info** %6, align 8
  %22 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %21, i32 0, i32 1
  %23 = icmp eq %struct.codel_vars* %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.txq_info*, %struct.txq_info** %6, align 8
  %26 = getelementptr inbounds %struct.txq_info, %struct.txq_info* %25, i32 0, i32 0
  store %struct.fq_flow* %26, %struct.fq_flow** %8, align 8
  br label %40

27:                                               ; preds = %2
  %28 = load %struct.fq*, %struct.fq** %7, align 8
  %29 = getelementptr inbounds %struct.fq, %struct.fq* %28, i32 0, i32 0
  %30 = load %struct.fq_flow*, %struct.fq_flow** %29, align 8
  %31 = load %struct.codel_vars*, %struct.codel_vars** %3, align 8
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = load %struct.codel_vars*, %struct.codel_vars** %33, align 8
  %35 = ptrtoint %struct.codel_vars* %31 to i64
  %36 = ptrtoint %struct.codel_vars* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = getelementptr inbounds %struct.fq_flow, %struct.fq_flow* %30, i64 %38
  store %struct.fq_flow* %39, %struct.fq_flow** %8, align 8
  br label %40

40:                                               ; preds = %27, %24
  %41 = load %struct.fq*, %struct.fq** %7, align 8
  %42 = load %struct.fq_flow*, %struct.fq_flow** %8, align 8
  %43 = call %struct.sk_buff* @fq_flow_dequeue(%struct.fq* %41, %struct.fq_flow* %42)
  ret %struct.sk_buff* %43
}

declare dso_local %struct.TYPE_4__* @vif_to_sdata(i32) #1

declare dso_local %struct.sk_buff* @fq_flow_dequeue(%struct.fq*, %struct.fq_flow*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
