; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_rts_duration.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_rts_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_rts_duration(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_info* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_rate*, align 8
  %11 = alloca %struct.ieee80211_sub_if_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_tx_info* %3, %struct.ieee80211_tx_info** %8, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %19 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %18)
  store %struct.ieee80211_local* %19, %struct.ieee80211_local** %9, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %24, align 8
  %26 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %27 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %25, i64 %28
  %30 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %29, align 8
  store %struct.ieee80211_supported_band* %30, %struct.ieee80211_supported_band** %17, align 8
  store i32 0, i32* %12, align 4
  %31 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %32 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %31, i32 0, i32 1
  %33 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %32, align 8
  %34 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %33, i64 %37
  store %struct.ieee80211_rate* %38, %struct.ieee80211_rate** %10, align 8
  store i32 0, i32* %13, align 4
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %40 = icmp ne %struct.ieee80211_vif* %39, null
  br i1 %40, label %41, label %64

41:                                               ; preds = %4
  %42 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %43 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %42)
  store %struct.ieee80211_sub_if_data* %43, %struct.ieee80211_sub_if_data** %11, align 8
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %12, align 4
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %11, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %55, %41
  %62 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %63 = call i32 @ieee80211_vif_get_shift(%struct.ieee80211_vif* %62)
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %61, %4
  %65 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %10, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = shl i32 1, %68
  %70 = call i32 @DIV_ROUND_UP(i32 %67, i32 %69)
  store i32 %70, i32* %15, align 4
  %71 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %72 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @ieee80211_frame_duration(i32 %73, i32 10, i32 %74, i32 %75, i32 %76, i32 %77)
  store i64 %78, i64* %16, align 8
  %79 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %80 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i64 @ieee80211_frame_duration(i32 %81, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i64, i64* %16, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %16, align 8
  %91 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %17, align 8
  %92 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @ieee80211_frame_duration(i32 %93, i32 10, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i64, i64* %16, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %16, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @cpu_to_le16(i64 %101)
  ret i32 %102
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_vif_get_shift(%struct.ieee80211_vif*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @ieee80211_frame_duration(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
