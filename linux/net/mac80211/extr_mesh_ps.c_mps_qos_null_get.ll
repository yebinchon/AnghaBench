; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_mps_qos_null_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh_ps.c_mps_qos_null_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sta_info = type { %struct.TYPE_6__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__, %struct.ieee80211_local* }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_hdr = type { i32, i64, i64, i32 }

@IEEE80211_FTYPE_DATA = common dso_local global i32 0, align 4
@IEEE80211_STYPE_QOS_NULLFUNC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sta_info*)* @mps_qos_null_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @mps_qos_null_get(%struct.sta_info* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sta_info*, align 8
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %3, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %11 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %14, align 8
  store %struct.ieee80211_local* %15, %struct.ieee80211_local** %5, align 8
  store i32 32, i32* %8, align 4
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = add nsw i64 %22, 2
  %24 = call %struct.sk_buff* @dev_alloc_skb(i64 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %75

28:                                               ; preds = %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @skb_reserve(%struct.sk_buff* %29, i64 %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.ieee80211_hdr* @skb_put(%struct.sk_buff* %35, i32 %36)
  store %struct.ieee80211_hdr* %37, %struct.ieee80211_hdr** %6, align 8
  %38 = load i32, i32* @IEEE80211_FTYPE_DATA, align 4
  %39 = load i32, i32* @IEEE80211_STYPE_QOS_NULLFUNC, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @cpu_to_le16(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ieee80211_fill_mesh_addresses(%struct.ieee80211_hdr* %42, i32* %9, i32 %46, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %60 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i32 %61, i32 %65, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = call i32 @skb_put_zero(%struct.sk_buff* %68, i32 2)
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %71 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %72 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %73 = call i32 @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data* %70, %struct.sta_info* %71, %struct.ieee80211_hdr* %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %2, align 8
  br label %75

75:                                               ; preds = %28, %27
  %76 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %76
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ieee80211_fill_mesh_addresses(%struct.ieee80211_hdr*, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_mps_set_frame_flags(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
