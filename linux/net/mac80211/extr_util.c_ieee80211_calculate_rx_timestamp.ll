; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_calculate_rx_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_calculate_rx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32, i64, i32, i64, i32, i32, i32 }
%struct.rate_info = type { i64, i32, i32, i32, i32 }

@RATE_INFO_FLAGS_MCS = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@RATE_INFO_FLAGS_VHT_MCS = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_PLCP_START = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Invalid bitrate: flags=0x%llx, idx=%d, vht_nss=%d\0A\00", align 1
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_calculate_rx_timestamp(%struct.ieee80211_local* %0, %struct.ieee80211_rx_status* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rate_info, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %17 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %20 = call i32 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %194

27:                                               ; preds = %4
  %28 = call i32 @memset(%struct.rate_info* %11, i32 0, i32 24)
  %29 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 4
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %82 [
    i32 130, label %36
    i32 128, label %57
    i32 129, label %84
  ]

36:                                               ; preds = %27
  %37 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* @RATE_INFO_FLAGS_MCS, align 4
  %42 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %53 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %36
  br label %151

57:                                               ; preds = %27
  %58 = load i32, i32* @RATE_INFO_FLAGS_VHT_MCS, align 4
  %59 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 3
  store i32 %68, i32* %69, align 8
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RX_ENC_FLAG_SHORT_GI, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %57
  %77 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %78 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %76, %57
  br label %151

82:                                               ; preds = %27
  %83 = call i64 @WARN_ON(i32 1)
  br label %84

84:                                               ; preds = %27, %82
  store i32 0, i32* %14, align 4
  %85 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %90 [
    i32 132, label %88
    i32 131, label %89
  ]

88:                                               ; preds = %84
  store i32 1, i32* %14, align 4
  br label %90

89:                                               ; preds = %84
  store i32 2, i32* %14, align 4
  br label %90

90:                                               ; preds = %84, %89, %88
  %91 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %95, align 8
  %97 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %96, i64 %99
  %101 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %100, align 8
  store %struct.ieee80211_supported_band* %101, %struct.ieee80211_supported_band** %13, align 8
  %102 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %103 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %14, align 4
  %113 = shl i32 1, %112
  %114 = call i32 @DIV_ROUND_UP(i32 %111, i32 %113)
  %115 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %11, i32 0, i32 1
  store i32 %114, i32* %115, align 8
  %116 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @RX_FLAG_MACTIME_PLCP_START, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %150

122:                                              ; preds = %90
  %123 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load i32, i32* %14, align 4
  %130 = shl i32 20, %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add i32 %133, 2
  store i32 %134, i32* %9, align 4
  br label %149

135:                                              ; preds = %122
  %136 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %137 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %135
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 96
  store i32 %144, i32* %10, align 4
  br label %148

145:                                              ; preds = %135
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 192
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %128
  br label %150

150:                                              ; preds = %149, %90
  br label %151

151:                                              ; preds = %150, %81, %56
  %152 = call i32 @cfg80211_calculate_bitrate(%struct.rate_info* %11)
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %158 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %162 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %165 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @WARN_ONCE(i32 %156, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %160, i64 %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  store i32 0, i32* %5, align 4
  br label %194

170:                                              ; preds = %151
  %171 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %172 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %170
  %178 = load i32, i32* %8, align 4
  %179 = mul i32 %178, 8
  %180 = mul i32 %179, 10
  %181 = load i32, i32* %12, align 4
  %182 = udiv i32 %180, %181
  %183 = load i32, i32* %10, align 4
  %184 = sub i32 %183, %182
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %177, %170
  %186 = load i32, i32* %9, align 4
  %187 = mul i32 %186, 8
  %188 = mul i32 %187, 10
  %189 = load i32, i32* %12, align 4
  %190 = udiv i32 %188, %189
  %191 = load i32, i32* %10, align 4
  %192 = add i32 %191, %190
  store i32 %192, i32* %10, align 4
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %5, align 4
  br label %194

194:                                              ; preds = %185, %169, %26
  %195 = load i32, i32* %5, align 4
  ret i32 %195
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status*) #1

declare dso_local i32 @memset(%struct.rate_info*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cfg80211_calculate_bitrate(%struct.rate_info*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
