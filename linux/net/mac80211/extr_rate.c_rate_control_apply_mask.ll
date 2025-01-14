; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_apply_mask.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_apply_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_tx_rate = type { i64, i32 }

@IEEE80211_HT_MCS_MASK_LEN = common dso_local global i32 0, align 4
@NL80211_VHT_NSS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_rate*, i32)* @rate_control_apply_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_apply_mask(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sta* %1, %struct.ieee80211_supported_band* %2, %struct.ieee80211_tx_rate* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.ieee80211_supported_band*, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.ieee80211_supported_band* %2, %struct.ieee80211_supported_band** %8, align 8
  store %struct.ieee80211_tx_rate* %3, %struct.ieee80211_tx_rate** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* @IEEE80211_HT_MCS_MASK_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @NL80211_VHT_NSS_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %29 = call i32 @rate_control_cap_mask(%struct.ieee80211_sub_if_data* %26, %struct.ieee80211_supported_band* %27, %struct.ieee80211_sta* %28, i32* %14, i32* %22, i32* %25)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %5
  store i32 1, i32* %18, align 4
  br label %78

32:                                               ; preds = %5
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %74, %32
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %44, i64 %46
  %48 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %77

52:                                               ; preds = %43
  %53 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %53, i64 %55
  %57 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %15, align 4
  %59 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i64 %61
  %63 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %62, i32 0, i32 0
  %64 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %8, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @rate_idx_match_mask(i64* %63, i32* %15, %struct.ieee80211_supported_band* %64, i32 %65, i32 %66, i32* %22, i32* %25)
  %68 = load i32, i32* %15, align 4
  %69 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %69, i64 %71
  %73 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 8
  br label %74

74:                                               ; preds = %52
  %75 = load i32, i32* %17, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %17, align 4
  br label %39

77:                                               ; preds = %51, %39
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %31
  %79 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %18, align 4
  switch i32 %80, label %82 [
    i32 0, label %81
    i32 1, label %81
  ]

81:                                               ; preds = %78, %78
  ret void

82:                                               ; preds = %78
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rate_control_cap_mask(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*, i32*, i32*, i32*) #2

declare dso_local i32 @rate_idx_match_mask(i64*, i32*, %struct.ieee80211_supported_band*, i32, i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
