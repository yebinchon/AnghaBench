; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_beacon_add_tim.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c_ieee80211_beacon_add_tim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { i32, i64 }
%struct.ps_data = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.ps_data*, %struct.sk_buff*, i32)* @ieee80211_beacon_add_tim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %0, %struct.ps_data* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ps_data*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ps_data* %1, %struct.ps_data** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %9, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %19 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @__ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %18, %struct.ps_data* %19, %struct.sk_buff* %20, i32 %21)
  br label %35

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_bh(i32* %25)
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %28 = load %struct.ps_data*, %struct.ps_data** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @__ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %27, %struct.ps_data* %28, %struct.sk_buff* %29, i32 %30)
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_bh(i32* %33)
  br label %35

35:                                               ; preds = %23, %17
  ret i32 0
}

declare dso_local i32 @__ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data*, %struct.ps_data*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
