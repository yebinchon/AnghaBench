; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c_ieee80211_select_queue_80211.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wme.c_ieee80211_select_queue_80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local* }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@ieee802_1d_to_ac = common dso_local global i32* null, align 8
@IEEE80211_QOS_CTL_TAG1D_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_select_queue_80211(%struct.ieee80211_sub_if_data* %0, %struct.sk_buff* %1, %struct.ieee80211_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %7, align 8
  %10 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  store %struct.ieee80211_local* %12, %struct.ieee80211_local** %8, align 8
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_is_data(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  store i32 7, i32* %28, align 4
  %29 = load i32*, i32** @ieee802_1d_to_ac, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %64

36:                                               ; preds = %20
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ieee80211_is_data_qos(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load i32*, i32** @ieee802_1d_to_ac, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %64

52:                                               ; preds = %36
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %54 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %53)
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_QOS_CTL_TAG1D_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @ieee80211_downgrade_queue(%struct.ieee80211_sub_if_data* %61, i32* null, %struct.sk_buff* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %52, %42, %26, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_downgrade_queue(%struct.ieee80211_sub_if_data*, i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
