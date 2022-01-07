; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.rate_control_ref* }
%struct.rate_control_ref = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* }
%struct.ieee80211_sta = type { i32 }
%struct.sta_info = type { i32, i8*, %struct.ieee80211_sta }
%struct.ieee80211_tx_rate_control = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i64 }

@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@HAS_RATE_CONTROL = common dso_local global i32 0, align 4
@WLAN_STA_RATE_CONTROL = common dso_local global i32 0, align 4
@SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rate_control_get_rate(%struct.ieee80211_sub_if_data* %0, %struct.sta_info* %1, %struct.ieee80211_tx_rate_control* %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %7 = alloca %struct.rate_control_ref*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.ieee80211_tx_rate_control* %2, %struct.ieee80211_tx_rate_control** %6, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.rate_control_ref*, %struct.rate_control_ref** %15, align 8
  store %struct.rate_control_ref* %16, %struct.rate_control_ref** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.ieee80211_sta* null, %struct.ieee80211_sta** %9, align 8
  %17 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32 %19)
  store %struct.ieee80211_tx_info* %20, %struct.ieee80211_tx_info** %10, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %50, %3
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 -1, i32* %33, align 8
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %21

53:                                               ; preds = %21
  %54 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %55 = icmp ne %struct.sta_info* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 2
  br label %60

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi %struct.ieee80211_sta* [ %58, %56 ], [ null, %59 ]
  %62 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %63 = call i64 @rate_control_send_low(%struct.ieee80211_sta* %61, %struct.ieee80211_tx_rate_control* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %140

66:                                               ; preds = %60
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* @HAS_RATE_CONTROL, align 4
  %72 = call i64 @ieee80211_hw_check(i32* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %140

75:                                               ; preds = %66
  %76 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %77 = icmp ne %struct.sta_info* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %80 = load i32, i32* @WLAN_STA_RATE_CONTROL, align 4
  %81 = call i64 @test_sta_flag(%struct.sta_info* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %85 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %84, i32 0, i32 2
  store %struct.ieee80211_sta* %85, %struct.ieee80211_sta** %9, align 8
  %86 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %87 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %8, align 8
  br label %89

89:                                               ; preds = %83, %78, %75
  %90 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %91 = icmp ne %struct.ieee80211_sta* %90, null
  br i1 %91, label %92, label %111

92:                                               ; preds = %89
  %93 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %94 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %93, i32 0, i32 0
  %95 = call i32 @spin_lock_bh(i32* %94)
  %96 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %97 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32 (i32, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)*, i32 (i32, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)** %99, align 8
  %101 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %102 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %107 = call i32 %100(i32 %103, %struct.ieee80211_sta* %104, i8* %105, %struct.ieee80211_tx_rate_control* %106)
  %108 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %109 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_bh(i32* %109)
  br label %114

111:                                              ; preds = %89
  %112 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %113 = call i64 @rate_control_send_low(%struct.ieee80211_sta* null, %struct.ieee80211_tx_rate_control* %112)
  br label %114

114:                                              ; preds = %111, %92
  %115 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %116 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* @SUPPORTS_RC_TABLE, align 4
  %120 = call i64 @ieee80211_hw_check(i32* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %140

123:                                              ; preds = %114
  %124 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %124, i32 0, i32 0
  %126 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %127 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %131 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %135 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %137)
  %139 = call i32 @ieee80211_get_tx_rates(i32* %125, %struct.ieee80211_sta* %126, i32 %129, %struct.TYPE_9__* %133, i32 %138)
  br label %140

140:                                              ; preds = %123, %122, %74, %65
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(i32) #1

declare dso_local i64 @rate_control_send_low(%struct.ieee80211_sta*, %struct.ieee80211_tx_rate_control*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i64 @test_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_get_tx_rates(i32*, %struct.ieee80211_sta*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
