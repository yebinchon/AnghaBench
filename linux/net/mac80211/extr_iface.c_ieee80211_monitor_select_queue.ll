; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_monitor_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_monitor_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_radiotap_header = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @ieee80211_monitor_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_monitor_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_hdr*, align 8
  %11 = alloca %struct.ieee80211_radiotap_header*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %12)
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %8, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %15, align 8
  store %struct.ieee80211_local* %16, %struct.ieee80211_local** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.ieee80211_radiotap_header*
  store %struct.ieee80211_radiotap_header* %21, %struct.ieee80211_radiotap_header** %11, align 8
  %22 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %23 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %39 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = add nsw i32 %41, 2
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %62

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %11, align 8
  %51 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = bitcast i32* %55 to i8*
  %57 = bitcast i8* %56 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %57, %struct.ieee80211_hdr** %10, align 8
  %58 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %10, align 8
  %61 = call i32 @ieee80211_select_queue_80211(%struct.ieee80211_sub_if_data* %58, %struct.sk_buff* %59, %struct.ieee80211_hdr* %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %45, %44, %28
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_select_queue_80211(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
