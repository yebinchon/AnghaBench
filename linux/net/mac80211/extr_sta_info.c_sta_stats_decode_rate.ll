; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_stats_decode_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_sta_info.c_sta_stats_decode_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.rate_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@BW = common dso_local global i32 0, align 4
@TYPE = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@VHT_MCS = common dso_local global i32 0, align 4
@VHT_NSS = common dso_local global i32 0, align 4
@SGI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@HT_MCS = common dso_local global i32 0, align 4
@LEGACY_BAND = common dso_local global i32 0, align 4
@LEGACY_IDX = common dso_local global i32 0, align 4
@RATE_INFO_BW_5 = common dso_local global i32 0, align 4
@RATE_INFO_BW_10 = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_HE_MCS = common dso_local global i32 0, align 4
@HE_MCS = common dso_local global i32 0, align 4
@HE_NSS = common dso_local global i32 0, align 4
@HE_GI = common dso_local global i32 0, align 4
@HE_RU = common dso_local global i32 0, align 4
@HE_DCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, i32, %struct.rate_info*)* @sta_stats_decode_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sta_stats_decode_rate(%struct.ieee80211_local* %0, i32 %1, %struct.rate_info* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rate_info*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rate_info* %2, %struct.rate_info** %6, align 8
  %12 = load i32, i32* @BW, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @STA_STATS_GET(i32 %12, i32 %13)
  %15 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %16 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @TYPE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @STA_STATS_GET(i32 %17, i32 %18)
  switch i32 %19, label %141 [
    i32 128, label %20
    i32 130, label %45
    i32 129, label %65
    i32 131, label %112
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %22 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %23 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @VHT_MCS, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @STA_STATS_GET(i32 %24, i32 %25)
  %27 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %28 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @VHT_NSS, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @STA_STATS_GET(i32 %29, i32 %30)
  %32 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %33 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @SGI, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @STA_STATS_GET(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %20
  %39 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %40 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %41 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %20
  br label %141

45:                                               ; preds = %3
  %46 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %47 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %48 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @HT_MCS, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @STA_STATS_GET(i32 %49, i32 %50)
  %52 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %53 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @SGI, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @STA_STATS_GET(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %60 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %61 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %45
  br label %141

65:                                               ; preds = %3
  %66 = load i32, i32* @LEGACY_BAND, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @STA_STATS_GET(i32 %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @LEGACY_IDX, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @STA_STATS_GET(i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %73 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %77, i64 %79
  %81 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %80, align 8
  store %struct.ieee80211_supported_band* %81, %struct.ieee80211_supported_band** %7, align 8
  %82 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %91 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RATE_INFO_BW_5, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %65
  store i32 2, i32* %9, align 4
  br label %105

96:                                               ; preds = %65
  %97 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %98 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RATE_INFO_BW_10, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 1, i32* %9, align 4
  br label %104

103:                                              ; preds = %96
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %103, %102
  br label %105

105:                                              ; preds = %104, %95
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = shl i32 1, %107
  %109 = call i32 @DIV_ROUND_UP(i32 %106, i32 %108)
  %110 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %111 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 4
  br label %141

112:                                              ; preds = %3
  %113 = load i32, i32* @RATE_INFO_FLAGS_HE_MCS, align 4
  %114 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %115 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @HE_MCS, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @STA_STATS_GET(i32 %116, i32 %117)
  %119 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %120 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @HE_NSS, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @STA_STATS_GET(i32 %121, i32 %122)
  %124 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %125 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @HE_GI, align 4
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @STA_STATS_GET(i32 %126, i32 %127)
  %129 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %130 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @HE_RU, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @STA_STATS_GET(i32 %131, i32 %132)
  %134 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %135 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @HE_DCM, align 4
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @STA_STATS_GET(i32 %136, i32 %137)
  %139 = load %struct.rate_info*, %struct.rate_info** %6, align 8
  %140 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %3, %112, %105, %64, %44
  ret void
}

declare dso_local i32 @STA_STATS_GET(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
