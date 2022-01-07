; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.h_sta_stats_encode_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.h_sta_stats_encode_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BW = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@SGI = common dso_local global i32 0, align 4
@TYPE = common dso_local global i32 0, align 4
@STA_STATS_RATE_TYPE_VHT = common dso_local global i32 0, align 4
@VHT_NSS = common dso_local global i32 0, align 4
@VHT_MCS = common dso_local global i32 0, align 4
@STA_STATS_RATE_TYPE_HT = common dso_local global i32 0, align 4
@HT_MCS = common dso_local global i32 0, align 4
@STA_STATS_RATE_TYPE_LEGACY = common dso_local global i32 0, align 4
@LEGACY_BAND = common dso_local global i32 0, align 4
@LEGACY_IDX = common dso_local global i32 0, align 4
@STA_STATS_RATE_TYPE_HE = common dso_local global i32 0, align 4
@HE_NSS = common dso_local global i32 0, align 4
@HE_MCS = common dso_local global i32 0, align 4
@HE_GI = common dso_local global i32 0, align 4
@HE_RU = common dso_local global i32 0, align 4
@HE_DCM = common dso_local global i32 0, align 4
@STA_STATS_RATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_status*)* @sta_stats_encode_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_stats_encode_rate(%struct.ieee80211_rx_status* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_status*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_rx_status* %0, %struct.ieee80211_rx_status** %3, align 8
  %5 = load i32, i32* @BW, align 4
  %6 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @STA_STATS_FIELD(i32 %5, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @SGI, align 4
  %18 = call i32 @STA_STATS_FIELD(i32 %17, i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %119 [
    i32 128, label %25
    i32 130, label %45
    i32 129, label %58
    i32 131, label %78
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @TYPE, align 4
  %27 = load i32, i32* @STA_STATS_RATE_TYPE_VHT, align 4
  %28 = call i32 @STA_STATS_FIELD(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @VHT_NSS, align 4
  %32 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @STA_STATS_FIELD(i32 %31, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @VHT_MCS, align 4
  %39 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @STA_STATS_FIELD(i32 %38, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %122

45:                                               ; preds = %21
  %46 = load i32, i32* @TYPE, align 4
  %47 = load i32, i32* @STA_STATS_RATE_TYPE_HT, align 4
  %48 = call i32 @STA_STATS_FIELD(i32 %46, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @HT_MCS, align 4
  %52 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @STA_STATS_FIELD(i32 %51, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %122

58:                                               ; preds = %21
  %59 = load i32, i32* @TYPE, align 4
  %60 = load i32, i32* @STA_STATS_RATE_TYPE_LEGACY, align 4
  %61 = call i32 @STA_STATS_FIELD(i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @LEGACY_BAND, align 4
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @STA_STATS_FIELD(i32 %64, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* @LEGACY_IDX, align 4
  %72 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %73 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @STA_STATS_FIELD(i32 %71, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %122

78:                                               ; preds = %21
  %79 = load i32, i32* @TYPE, align 4
  %80 = load i32, i32* @STA_STATS_RATE_TYPE_HE, align 4
  %81 = call i32 @STA_STATS_FIELD(i32 %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* @HE_NSS, align 4
  %85 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @STA_STATS_FIELD(i32 %84, i32 %87)
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @HE_MCS, align 4
  %92 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @STA_STATS_FIELD(i32 %91, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @HE_GI, align 4
  %99 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @STA_STATS_FIELD(i32 %98, i32 %101)
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* @HE_RU, align 4
  %106 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %107 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @STA_STATS_FIELD(i32 %105, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* @HE_DCM, align 4
  %113 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @STA_STATS_FIELD(i32 %112, i32 %115)
  %117 = load i32, i32* %4, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %4, align 4
  br label %122

119:                                              ; preds = %21
  %120 = call i32 @WARN_ON(i32 1)
  %121 = load i32, i32* @STA_STATS_RATE_INVALID, align 4
  store i32 %121, i32* %2, align 4
  br label %124

122:                                              ; preds = %78, %58, %45, %25
  %123 = load i32, i32* %4, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @STA_STATS_FIELD(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
