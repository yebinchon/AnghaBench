; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { void (i8*, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_tx_status*)* }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_tx_status = type { %struct.ieee80211_tx_info* }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32 }
%struct.minstrel_ht_sta_priv = type { i32, i32, %struct.minstrel_ht_sta }
%struct.minstrel_ht_sta = type { i32, i32, i32, i64, i32, i32, i64, i32*, i32, i32 }
%struct.minstrel_rate_stats = type { i32, i32 }
%struct.minstrel_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@mac80211_minstrel = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, i8*, %struct.ieee80211_tx_status*)* @minstrel_ht_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_tx_status(i8* %0, %struct.ieee80211_supported_band* %1, i8* %2, %struct.ieee80211_tx_status* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_status*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.minstrel_ht_sta_priv*, align 8
  %11 = alloca %struct.minstrel_ht_sta*, align 8
  %12 = alloca %struct.ieee80211_tx_rate*, align 8
  %13 = alloca %struct.minstrel_rate_stats*, align 8
  %14 = alloca %struct.minstrel_rate_stats*, align 8
  %15 = alloca %struct.minstrel_rate_stats*, align 8
  %16 = alloca %struct.minstrel_priv*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_status* %3, %struct.ieee80211_tx_status** %8, align 8
  %22 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_status, %struct.ieee80211_tx_status* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %23, align 8
  store %struct.ieee80211_tx_info* %24, %struct.ieee80211_tx_info** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast i8* %25 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %26, %struct.minstrel_ht_sta_priv** %10, align 8
  %27 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %28 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %27, i32 0, i32 2
  store %struct.minstrel_ht_sta* %28, %struct.minstrel_ht_sta** %11, align 8
  %29 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %31, align 8
  store %struct.ieee80211_tx_rate* %32, %struct.ieee80211_tx_rate** %12, align 8
  store %struct.minstrel_rate_stats* null, %struct.minstrel_rate_stats** %15, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = bitcast i8* %33 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %34, %struct.minstrel_priv** %16, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %35 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %36 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %4
  %40 = load void (i8*, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_tx_status*)*, void (i8*, %struct.ieee80211_supported_band*, i32*, %struct.ieee80211_tx_status*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mac80211_minstrel, i32 0, i32 0), align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %43 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %10, align 8
  %44 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %43, i32 0, i32 0
  %45 = load %struct.ieee80211_tx_status*, %struct.ieee80211_tx_status** %8, align 8
  call void %40(i8* %41, %struct.ieee80211_supported_band* %42, i32* %44, %struct.ieee80211_tx_status* %45)
  br label %336

46:                                               ; preds = %4
  %47 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %336

61:                                               ; preds = %53, %46
  %62 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IEEE80211_TX_STAT_AMPDU, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %61
  %69 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %70 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %68, %61
  %84 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %85 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %93 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %97 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %83
  %101 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %102 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %124, label %105

105:                                              ; preds = %100
  %106 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %107 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %124

110:                                              ; preds = %105
  %111 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %112 = call i32 @minstrel_ht_avg_ampdu_len(%struct.minstrel_ht_sta* %111)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = mul nsw i32 2, %113
  %115 = add nsw i32 16, %114
  %116 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %117 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %119 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %118, i32 0, i32 2
  store i32 1, i32* %119, align 8
  %120 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %121 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %121, align 8
  br label %124

124:                                              ; preds = %110, %105, %100, %83
  %125 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %126 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %133 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %137 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %131, %124
  %141 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %142 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 129
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %147 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %148 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 8
  %150 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %146, i32 %149)
  store %struct.minstrel_rate_stats* %150, %struct.minstrel_rate_stats** %15, align 8
  br label %151

151:                                              ; preds = %145, %140
  %152 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %153 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %154 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %153, i64 0
  %155 = call i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv* %152, %struct.ieee80211_tx_rate* %154)
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %159

159:                                              ; preds = %220, %151
  %160 = load i32, i32* %17, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  br i1 %162, label %163, label %223

163:                                              ; preds = %159
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %166 = sub nsw i32 %165, 1
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %178, label %168

168:                                              ; preds = %163
  %169 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %170 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %171 = load i32, i32* %20, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %170, i64 %173
  %175 = call i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv* %169, %struct.ieee80211_tx_rate* %174)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  br label %178

178:                                              ; preds = %168, %163
  %179 = phi i1 [ true, %163 ], [ %177, %168 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %17, align 4
  %181 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %182 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %183 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %183, i64 %185
  %187 = call %struct.minstrel_rate_stats* @minstrel_ht_get_stats(%struct.minstrel_priv* %181, %struct.minstrel_ht_sta* %182, %struct.ieee80211_tx_rate* %186)
  store %struct.minstrel_rate_stats* %187, %struct.minstrel_rate_stats** %13, align 8
  %188 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %189 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %15, align 8
  %190 = icmp eq %struct.minstrel_rate_stats* %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %178
  store i32 1, i32* %19, align 4
  br label %192

192:                                              ; preds = %191, %178
  %193 = load i32, i32* %17, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %197 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %201 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %195, %192
  %205 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %205, i64 %207
  %209 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %212 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = mul nsw i32 %210, %214
  %216 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %217 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %204
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %20, align 4
  br label %159

223:                                              ; preds = %159
  %224 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %225 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 4
  switch i32 %226, label %243 [
    i32 129, label %227
    i32 130, label %228
    i32 128, label %235
  ]

227:                                              ; preds = %223
  br label %243

228:                                              ; preds = %223
  %229 = load i32, i32* %19, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  br label %243

232:                                              ; preds = %228
  %233 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %234 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %233, i32 0, i32 5
  store i32 128, i32* %234, align 4
  store i32 1, i32* %18, align 4
  br label %243

235:                                              ; preds = %223
  %236 = load i32, i32* %19, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  br label %243

239:                                              ; preds = %235
  store i32 1, i32* %18, align 4
  %240 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %241 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %242 = call i32 @minstrel_ht_update_stats(%struct.minstrel_priv* %240, %struct.minstrel_ht_sta* %241, i32 0)
  br label %243

243:                                              ; preds = %223, %239, %238, %232, %231, %227
  %244 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %245 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %244, i32 0, i32 1
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %248, 1
  br i1 %249, label %250, label %309

250:                                              ; preds = %243
  %251 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %252 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %253 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %252, i32 0, i32 7
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %251, i32 %256)
  store %struct.minstrel_rate_stats* %257, %struct.minstrel_rate_stats** %13, align 8
  %258 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %259 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp sgt i32 %260, 30
  br i1 %261, label %262, label %279

262:                                              ; preds = %250
  %263 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %264 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %13, align 8
  %267 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i64 @MINSTREL_FRAC(i32 %265, i32 %268)
  %270 = call i64 @MINSTREL_FRAC(i32 20, i32 100)
  %271 = icmp slt i64 %269, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %262
  %273 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %274 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %275 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %274, i32 0, i32 7
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = call i32 @minstrel_downgrade_rate(%struct.minstrel_ht_sta* %273, i32* %277, i32 1)
  store i32 1, i32* %18, align 4
  br label %279

279:                                              ; preds = %272, %262, %250
  %280 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %281 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %282 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %281, i32 0, i32 7
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 1
  %285 = load i32, i32* %284, align 4
  %286 = call %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta* %280, i32 %285)
  store %struct.minstrel_rate_stats* %286, %struct.minstrel_rate_stats** %14, align 8
  %287 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %288 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = icmp sgt i32 %289, 30
  br i1 %290, label %291, label %308

291:                                              ; preds = %279
  %292 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %293 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %14, align 8
  %296 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @MINSTREL_FRAC(i32 %294, i32 %297)
  %299 = call i64 @MINSTREL_FRAC(i32 20, i32 100)
  %300 = icmp slt i64 %298, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %291
  %302 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %303 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %304 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %303, i32 0, i32 7
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  %307 = call i32 @minstrel_downgrade_rate(%struct.minstrel_ht_sta* %302, i32* %306, i32 0)
  store i32 1, i32* %18, align 4
  br label %308

308:                                              ; preds = %301, %291, %279
  br label %309

309:                                              ; preds = %308, %243
  %310 = load i32, i32* @jiffies, align 4
  %311 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %312 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %311, i32 0, i32 6
  %313 = load i64, i64* %312, align 8
  %314 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %315 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = sdiv i32 %316, 2
  %318 = load i32, i32* @HZ, align 4
  %319 = mul nsw i32 %317, %318
  %320 = sdiv i32 %319, 1000
  %321 = sext i32 %320 to i64
  %322 = add nsw i64 %313, %321
  %323 = call i64 @time_after(i32 %310, i64 %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %309
  store i32 1, i32* %18, align 4
  %326 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %327 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %328 = call i32 @minstrel_ht_update_stats(%struct.minstrel_priv* %326, %struct.minstrel_ht_sta* %327, i32 1)
  br label %329

329:                                              ; preds = %325, %309
  %330 = load i32, i32* %18, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load %struct.minstrel_priv*, %struct.minstrel_priv** %16, align 8
  %334 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %11, align 8
  %335 = call i32 @minstrel_ht_update_rates(%struct.minstrel_priv* %333, %struct.minstrel_ht_sta* %334)
  br label %336

336:                                              ; preds = %39, %60, %332, %329
  ret void
}

declare dso_local i32 @minstrel_ht_avg_ampdu_len(%struct.minstrel_ht_sta*) #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_get_ratestats(%struct.minstrel_ht_sta*, i32) #1

declare dso_local i32 @minstrel_ht_txstat_valid(%struct.minstrel_priv*, %struct.ieee80211_tx_rate*) #1

declare dso_local %struct.minstrel_rate_stats* @minstrel_ht_get_stats(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_tx_rate*) #1

declare dso_local i32 @minstrel_ht_update_stats(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_downgrade_rate(%struct.minstrel_ht_sta*, i32*, i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @minstrel_ht_update_rates(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
