; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_build_mgmt_packet_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_build_mgmt_packet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cfg80211_chan_def = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32, i32, i32*, i64, i32, %struct.cfg80211_chan_def*)* @ieee80211_tdls_build_mgmt_packet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ieee80211_tdls_build_mgmt_packet_data(%struct.ieee80211_sub_if_data* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i64 %7, i32 %8, %struct.cfg80211_chan_def* %9) #0 {
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_sub_if_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.cfg80211_chan_def*, align 8
  %22 = alloca %struct.ieee80211_local*, align 8
  %23 = alloca %struct.sk_buff*, align 8
  %24 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 %8, i32* %20, align 4
  store %struct.cfg80211_chan_def* %9, %struct.cfg80211_chan_def** %21, align 8
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %26 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %26, align 8
  store %struct.ieee80211_local* %27, %struct.ieee80211_local** %22, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @max(i32 4, i32 4)
  %36 = add nsw i64 %34, %35
  %37 = add nsw i64 %36, 50
  %38 = add nsw i64 %37, 10
  %39 = add nsw i64 %38, 26
  %40 = add nsw i64 %39, 2
  %41 = call i64 @max(i32 4, i32 4)
  %42 = add nsw i64 %40, %41
  %43 = add nsw i64 %42, 2
  %44 = call i64 @max(i32 4, i32 4)
  %45 = add nsw i64 %43, %44
  %46 = add nsw i64 %45, 50
  %47 = add nsw i64 %46, 3
  %48 = add nsw i64 %47, 4
  %49 = add nsw i64 %48, 4
  %50 = load i64, i64* %19, align 8
  %51 = add i64 %49, %50
  %52 = add i64 %51, 4
  %53 = call %struct.sk_buff* @netdev_alloc_skb(i32 %30, i64 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %23, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %10
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %116

57:                                               ; preds = %10
  %58 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %59 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  %60 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @skb_reserve(%struct.sk_buff* %58, i64 %62)
  %64 = load i32, i32* %14, align 4
  switch i32 %64, label %93 [
    i32 130, label %65
    i32 129, label %65
    i32 131, label %65
    i32 128, label %65
    i32 132, label %65
    i32 134, label %65
    i32 133, label %65
    i32 135, label %79
  ]

65:                                               ; preds = %57, %57, %57, %57, %57, %57, %57
  %66 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  %67 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %71 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %78 = call i32 @ieee80211_prep_tdls_encap_data(i32 %69, i32 %72, i32* %73, i32 %74, i32 %75, i32 %76, %struct.sk_buff* %77)
  store i32 %78, i32* %24, align 4
  br label %96

79:                                               ; preds = %57
  %80 = load %struct.ieee80211_local*, %struct.ieee80211_local** %22, align 8
  %81 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %85 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %92 = call i32 @ieee80211_prep_tdls_direct(i32 %83, i32 %86, i32* %87, i32 %88, i32 %89, i32 %90, %struct.sk_buff* %91)
  store i32 %92, i32* %24, align 4
  br label %96

93:                                               ; preds = %57
  %94 = load i32, i32* @ENOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %24, align 4
  br label %96

96:                                               ; preds = %93, %79, %65
  %97 = load i32, i32* %24, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %113

100:                                              ; preds = %96
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32*, i32** %18, align 8
  %108 = load i64, i64* %19, align 8
  %109 = load i32, i32* %20, align 4
  %110 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %21, align 8
  %111 = call i32 @ieee80211_tdls_add_ies(%struct.ieee80211_sub_if_data* %101, %struct.sk_buff* %102, i32* %103, i32 %104, i32 %105, i32 %106, i32* %107, i64 %108, i32 %109, %struct.cfg80211_chan_def* %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %112, %struct.sk_buff** %11, align 8
  br label %116

113:                                              ; preds = %99
  %114 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  %115 = call i32 @dev_kfree_skb(%struct.sk_buff* %114)
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  br label %116

116:                                              ; preds = %113, %100, %56
  %117 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  ret %struct.sk_buff* %117
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i64) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @ieee80211_prep_tdls_encap_data(i32, i32, i32*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_prep_tdls_direct(i32, i32, i32*, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tdls_add_ies(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, i32*, i32, i32, i32, i32*, i64, i32, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
