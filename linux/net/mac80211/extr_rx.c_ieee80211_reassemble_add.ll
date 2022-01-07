; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_reassemble_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_reassemble_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_fragment_entry = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.ieee80211_sub_if_data = type { i64, %struct.ieee80211_fragment_entry* }
%struct.sk_buff = type { i32 }

@IEEE80211_FRAGMENT_MAX = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_fragment_entry* (%struct.ieee80211_sub_if_data*, i32, i32, i32, %struct.sk_buff**)* @ieee80211_reassemble_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_fragment_entry* @ieee80211_reassemble_add(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2, i32 %3, %struct.sk_buff** %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff**, align 8
  %11 = alloca %struct.ieee80211_fragment_entry*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff** %4, %struct.sk_buff*** %10, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %13, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %14, i64 %17
  store %struct.ieee80211_fragment_entry* %19, %struct.ieee80211_fragment_entry** %11, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_FRAGMENT_MAX, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %5
  %29 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %30 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %29, i32 0, i32 6
  %31 = call i32 @skb_queue_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %35 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %34, i32 0, i32 6
  %36 = call i32 @__skb_queue_purge(i32* %35)
  br label %37

37:                                               ; preds = %33, %28
  %38 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %38, i32 0, i32 6
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %40, align 8
  %42 = call i32 @__skb_queue_tail(i32* %39, %struct.sk_buff* %41)
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %43, align 8
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %46 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %52 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %55 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %57 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %56, i32 0, i32 3
  store i32 0, i32* %57, align 4
  %58 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  %59 = getelementptr inbounds %struct.ieee80211_fragment_entry, %struct.ieee80211_fragment_entry* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.ieee80211_fragment_entry*, %struct.ieee80211_fragment_entry** %11, align 8
  ret %struct.ieee80211_fragment_entry* %60
}

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
