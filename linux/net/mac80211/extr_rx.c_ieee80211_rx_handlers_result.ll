; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_handlers_result.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_handlers_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_14__*, i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_rx_status = type { i64, i64, i32 }

@RX_ENC_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_rx_data*, i32)* @ieee80211_rx_handlers_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_handlers_result(%struct.ieee80211_rx_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_rate*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %101 [
    i32 130, label %9
    i32 131, label %31
    i32 129, label %66
    i32 128, label %92
  ]

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @I802_DEBUG_INC(i32 %16)
  %18 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %18, i32 0, i32 2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %9
  %23 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %22, %9
  br label %31

31:                                               ; preds = %2, %30
  store %struct.ieee80211_rate* null, %struct.ieee80211_rate** %5, align 8
  %32 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(i32 %34)
  store %struct.ieee80211_rx_status* %35, %struct.ieee80211_rx_status** %7, align 8
  %36 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %42, align 8
  %44 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %43, i64 %46
  %48 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %47, align 8
  store %struct.ieee80211_supported_band* %48, %struct.ieee80211_supported_band** %6, align 8
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @RX_ENC_LEGACY, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %31
  %55 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %55, i32 0, i32 0
  %57 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %56, align 8
  %58 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %57, i64 %60
  store %struct.ieee80211_rate* %61, %struct.ieee80211_rate** %5, align 8
  br label %62

62:                                               ; preds = %54, %31
  %63 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %64 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %5, align 8
  %65 = call i32 @ieee80211_rx_cooked_monitor(%struct.ieee80211_rx_data* %63, %struct.ieee80211_rate* %64)
  br label %101

66:                                               ; preds = %2
  %67 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %68 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @I802_DEBUG_INC(i32 %73)
  %75 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = icmp ne %struct.TYPE_12__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %66
  %80 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %79, %66
  %88 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_kfree_skb(i32 %90)
  br label %101

92:                                               ; preds = %2
  %93 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %94 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @I802_DEBUG_INC(i32 %99)
  br label %101

101:                                              ; preds = %2, %92, %87, %62
  ret void
}

declare dso_local i32 @I802_DEBUG_INC(i32) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(i32) #1

declare dso_local i32 @ieee80211_rx_cooked_monitor(%struct.ieee80211_rx_data*, %struct.ieee80211_rate*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
