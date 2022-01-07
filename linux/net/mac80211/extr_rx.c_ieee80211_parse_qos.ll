; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_parse_qos.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_parse_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@IEEE80211_QOS_CTL_TID_MASK = common dso_local global i32 0, align 4
@IEEE80211_QOS_CTL_A_MSDU_PRESENT = common dso_local global i32 0, align 4
@IEEE80211_RX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_NUM_TIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_data*)* @ieee80211_parse_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_parse_qos(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca %struct.ieee80211_rx_data*, align 8
  %3 = alloca %struct.ieee80211_hdr*, align 8
  %4 = alloca %struct.ieee80211_rx_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %2, align 8
  %9 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %10 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %14, %struct.ieee80211_hdr** %3, align 8
  %15 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_2__* %17)
  store %struct.ieee80211_rx_status* %18, %struct.ieee80211_rx_status** %4, align 8
  %19 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ieee80211_is_data_qos(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %1
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %26 = call i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_QOS_CTL_TID_MASK, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_QOS_CTL_A_MSDU_PRESENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load i32, i32* @IEEE80211_RX_AMSDU, align 4
  %38 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %24
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %7, align 4
  br label %55

45:                                               ; preds = %1
  %46 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  store i32 %46, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ieee80211_is_mgmt(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @IEEE80211_NUM_TIDS, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %45
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sgt i32 %62, 7
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %67

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 0, %64 ], [ %66, %65 ]
  %69 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  ret void
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_2__*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32* @ieee80211_get_qos_ctl(%struct.ieee80211_hdr*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
