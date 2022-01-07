; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_caps.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { void (i8*, %struct.ieee80211_supported_band*, %struct.cfg80211_chan_def*, %struct.ieee80211_sta*, %struct.minstrel_ht_sta*)* }
%struct.ieee80211_supported_band = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_sta = type { i64, i64, %struct.TYPE_6__, %struct.ieee80211_sta_vht_cap }
%struct.TYPE_6__ = type { i32, i32, %struct.ieee80211_mcs_info }
%struct.ieee80211_mcs_info = type { i32* }
%struct.ieee80211_sta_vht_cap = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.minstrel_ht_sta = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.ieee80211_sta* }
%struct.minstrel_priv = type { i64 }
%struct.minstrel_ht_sta_priv = type { i32, %struct.minstrel_ht_sta, i32, i32, %struct.minstrel_ht_sta }

@minstrel_mcs_groups = common dso_local global %struct.TYPE_8__* null, align 8
@MINSTREL_GROUPS_NB = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_LDPC_CODING = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXSTBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_RXLDPC = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_STBC_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_LDPC = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_SMPS_STATIC = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@minstrel_vht_only = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_160_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_80_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_STA_RX_BW_80 = common dso_local global i64 0, align 8
@IEEE80211_VHT_CAP_SHORT_GI_80 = common dso_local global i32 0, align 4
@BW_40 = common dso_local global i32 0, align 4
@BW_80 = common dso_local global i32 0, align 4
@BW_20 = common dso_local global i32 0, align 4
@mac80211_minstrel = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_supported_band*, %struct.cfg80211_chan_def*, %struct.ieee80211_sta*, i8*)* @minstrel_ht_update_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_caps(i8* %0, %struct.ieee80211_supported_band* %1, %struct.cfg80211_chan_def* %2, %struct.ieee80211_sta* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.minstrel_priv*, align 8
  %12 = alloca %struct.minstrel_ht_sta_priv*, align 8
  %13 = alloca %struct.minstrel_ht_sta*, align 8
  %14 = alloca %struct.ieee80211_mcs_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i8* %4, i8** %10, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %27, %struct.minstrel_priv** %11, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to %struct.minstrel_ht_sta_priv*
  store %struct.minstrel_ht_sta_priv* %29, %struct.minstrel_ht_sta_priv** %12, align 8
  %30 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %31 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %30, i32 0, i32 4
  store %struct.minstrel_ht_sta* %31, %struct.minstrel_ht_sta** %13, align 8
  %32 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store %struct.ieee80211_mcs_info* %34, %struct.ieee80211_mcs_info** %14, align 8
  %35 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %15, align 4
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 3
  store %struct.ieee80211_sta_vht_cap* %40, %struct.ieee80211_sta_vht_cap** %16, align 8
  store i32 0, i32* %18, align 4
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %5
  br label %400

47:                                               ; preds = %5
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @minstrel_mcs_groups, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %48)
  %50 = load i32, i32* @MINSTREL_GROUPS_NB, align 4
  %51 = icmp ne i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUILD_BUG_ON(i32 %52)
  %54 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %16, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %16, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @cpu_to_le16(i32 -1)
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %17, align 4
  br label %67

66:                                               ; preds = %47
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %66, %58
  %68 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %69 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %71 = call i32 @memset(%struct.minstrel_ht_sta* %70, i32 0, i32 72)
  %72 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %73 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %74 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %73, i32 0, i32 13
  store %struct.ieee80211_sta* %72, %struct.ieee80211_sta** %74, align 8
  %75 = load i32, i32* @jiffies, align 4
  %76 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %77 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @ieee80211_frame_duration(i32 %80, i32 10, i32 60, i32 1, i32 1, i32 0)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %19, align 4
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @ieee80211_frame_duration(i32 %85, i32 0, i32 60, i32 1, i32 1, i32 0)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %89 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %92 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %96 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %19, align 4
  %99 = mul nsw i32 2, %98
  %100 = add nsw i32 %97, %99
  %101 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %102 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = call i32 @MINSTREL_FRAC(i32 1, i32 1)
  %104 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %105 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %104, i32 0, i32 11
  store i32 %103, i32* %105, align 8
  %106 = load %struct.minstrel_priv*, %struct.minstrel_priv** %11, align 8
  %107 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %67
  %111 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %112 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %111, i32 0, i32 2
  store i32 16, i32* %112, align 8
  %113 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %114 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %113, i32 0, i32 3
  store i32 0, i32* %114, align 4
  br label %120

115:                                              ; preds = %67
  %116 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %117 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %116, i32 0, i32 2
  store i32 8, i32* %117, align 8
  %118 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %119 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %118, i32 0, i32 3
  store i32 8, i32* %119, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %122 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %121, i32 0, i32 4
  store i32 4, i32* %122, align 8
  %123 = load i32, i32* %17, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_SHIFT, align 4
  %130 = ashr i32 %128, %129
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @IEEE80211_HT_CAP_LDPC_CODING, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %22, align 4
  br label %147

134:                                              ; preds = %120
  %135 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %16, align 8
  %136 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_MASK, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* @IEEE80211_VHT_CAP_RXSTBC_SHIFT, align 4
  %141 = ashr i32 %139, %140
  store i32 %141, i32* %20, align 4
  %142 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %16, align 8
  %143 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IEEE80211_VHT_CAP_RXLDPC, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %22, align 4
  br label %147

147:                                              ; preds = %134, %125
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* @IEEE80211_TX_CTL_STBC_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %152 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load i32, i32* %22, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load i32, i32* @IEEE80211_TX_CTL_LDPC, align 4
  %159 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %160 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %147
  store i32 0, i32* %21, align 4
  br label %164

164:                                              ; preds = %374, %163
  %165 = load i32, i32* %21, align 4
  %166 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %167 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %166, i32 0, i32 10
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %168)
  %170 = icmp slt i32 %165, %169
  br i1 %170, label %171, label %377

171:                                              ; preds = %164
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** @minstrel_mcs_groups, align 8
  %173 = load i32, i32* %21, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %23, align 4
  %178 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %179 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %178, i32 0, i32 6
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 0, i32* %183, align 4
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %171
  %188 = load %struct.minstrel_priv*, %struct.minstrel_priv** %11, align 8
  %189 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %190 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %191 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %192 = call i32 @minstrel_ht_update_cck(%struct.minstrel_priv* %188, %struct.minstrel_ht_sta* %189, %struct.ieee80211_supported_band* %190, %struct.ieee80211_sta* %191)
  br label %374

193:                                              ; preds = %171
  %194 = load i32, i32* %23, align 4
  %195 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %193
  %199 = load i32, i32* %23, align 4
  %200 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load i32, i32* %15, align 4
  %205 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %203
  br label %374

209:                                              ; preds = %203
  br label %217

210:                                              ; preds = %198
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  br label %374

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %216, %209
  br label %218

218:                                              ; preds = %217, %193
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  %224 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %225 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  br label %374

230:                                              ; preds = %223, %218
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** @minstrel_mcs_groups, align 8
  %232 = load i32, i32* %21, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %25, align 4
  %237 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %238 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @IEEE80211_SMPS_STATIC, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %230
  %243 = load i32, i32* %25, align 4
  %244 = icmp sgt i32 %243, 1
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  br label %374

246:                                              ; preds = %242, %230
  %247 = load i32, i32* %23, align 4
  %248 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %285

251:                                              ; preds = %246
  %252 = load i32, i32* %17, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %258

254:                                              ; preds = %251
  %255 = load i64, i64* @minstrel_vht_only, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  br label %374

258:                                              ; preds = %254, %251
  %259 = load %struct.ieee80211_mcs_info*, %struct.ieee80211_mcs_info** %14, align 8
  %260 = getelementptr inbounds %struct.ieee80211_mcs_info, %struct.ieee80211_mcs_info* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %25, align 4
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %268 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %267, i32 0, i32 6
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %21, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 %266, i32* %272, align 4
  %273 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %274 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %273, i32 0, i32 6
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %21, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %258
  %282 = load i32, i32* %18, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %18, align 4
  br label %284

284:                                              ; preds = %281, %258
  br label %374

285:                                              ; preds = %246
  %286 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %16, align 8
  %287 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %305

290:                                              ; preds = %285
  %291 = load i32, i32* %23, align 4
  %292 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = call i64 @WARN_ON(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %305, label %299

299:                                              ; preds = %290
  %300 = load i32, i32* %23, align 4
  %301 = load i32, i32* @IEEE80211_TX_RC_160_MHZ_WIDTH, align 4
  %302 = and i32 %300, %301
  %303 = call i64 @WARN_ON(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %299, %290, %285
  br label %374

306:                                              ; preds = %299
  %307 = load i32, i32* %23, align 4
  %308 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %331

311:                                              ; preds = %306
  %312 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %313 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @IEEE80211_STA_RX_BW_80, align 8
  %316 = icmp slt i64 %314, %315
  br i1 %316, label %329, label %317

317:                                              ; preds = %311
  %318 = load i32, i32* %23, align 4
  %319 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %317
  %323 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %16, align 8
  %324 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @IEEE80211_VHT_CAP_SHORT_GI_80, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %322, %311
  br label %374

330:                                              ; preds = %322, %317
  br label %331

331:                                              ; preds = %330, %306
  %332 = load i32, i32* %23, align 4
  %333 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %331
  %337 = load i32, i32* @BW_40, align 4
  store i32 %337, i32* %24, align 4
  br label %348

338:                                              ; preds = %331
  %339 = load i32, i32* %23, align 4
  %340 = load i32, i32* @IEEE80211_TX_RC_80_MHZ_WIDTH, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i32, i32* @BW_80, align 4
  store i32 %344, i32* %24, align 4
  br label %347

345:                                              ; preds = %338
  %346 = load i32, i32* @BW_20, align 4
  store i32 %346, i32* %24, align 4
  br label %347

347:                                              ; preds = %345, %343
  br label %348

348:                                              ; preds = %347, %336
  %349 = load i32, i32* %24, align 4
  %350 = load i32, i32* %25, align 4
  %351 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %16, align 8
  %352 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = call i32 @minstrel_get_valid_vht_rates(i32 %349, i32 %350, i64 %354)
  %356 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %357 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %356, i32 0, i32 6
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %21, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  store i32 %355, i32* %361, align 4
  %362 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %363 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %362, i32 0, i32 6
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %21, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %373

370:                                              ; preds = %348
  %371 = load i32, i32* %18, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %18, align 4
  br label %373

373:                                              ; preds = %370, %348
  br label %374

374:                                              ; preds = %373, %329, %305, %284, %257, %245, %229, %215, %208, %187
  %375 = load i32, i32* %21, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %21, align 4
  br label %164

377:                                              ; preds = %164
  %378 = load i32, i32* %18, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %381, label %380

380:                                              ; preds = %377
  br label %400

381:                                              ; preds = %377
  %382 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %383 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %382, i32 0, i32 7
  %384 = load i32, i32* %383, align 8
  %385 = shl i32 %384, 4
  %386 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %387 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %386, i32 0, i32 6
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* @MINSTREL_CCK_GROUP, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = or i32 %392, %385
  store i32 %393, i32* %391, align 4
  %394 = load %struct.minstrel_priv*, %struct.minstrel_priv** %11, align 8
  %395 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %396 = call i32 @minstrel_ht_update_stats(%struct.minstrel_priv* %394, %struct.minstrel_ht_sta* %395, i32 1)
  %397 = load %struct.minstrel_priv*, %struct.minstrel_priv** %11, align 8
  %398 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %13, align 8
  %399 = call i32 @minstrel_ht_update_rates(%struct.minstrel_priv* %397, %struct.minstrel_ht_sta* %398)
  br label %425

400:                                              ; preds = %380, %46
  %401 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %402 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %401, i32 0, i32 0
  store i32 0, i32* %402, align 8
  %403 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %404 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %403, i32 0, i32 1
  %405 = call i32 @memset(%struct.minstrel_ht_sta* %404, i32 0, i32 72)
  %406 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %407 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %410 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %410, i32 0, i32 9
  store i32 %408, i32* %411, align 8
  %412 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %413 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 8
  %415 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %416 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %416, i32 0, i32 8
  store i32 %414, i32* %417, align 4
  %418 = load void (i8*, %struct.ieee80211_supported_band*, %struct.cfg80211_chan_def*, %struct.ieee80211_sta*, %struct.minstrel_ht_sta*)*, void (i8*, %struct.ieee80211_supported_band*, %struct.cfg80211_chan_def*, %struct.ieee80211_sta*, %struct.minstrel_ht_sta*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mac80211_minstrel, i32 0, i32 0), align 8
  %419 = load i8*, i8** %6, align 8
  %420 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %421 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %422 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %423 = load %struct.minstrel_ht_sta_priv*, %struct.minstrel_ht_sta_priv** %12, align 8
  %424 = getelementptr inbounds %struct.minstrel_ht_sta_priv, %struct.minstrel_ht_sta_priv* %423, i32 0, i32 1
  call void %418(i8* %419, %struct.ieee80211_supported_band* %420, %struct.cfg80211_chan_def* %421, %struct.ieee80211_sta* %422, %struct.minstrel_ht_sta* %424)
  br label %425

425:                                              ; preds = %400, %381
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(%struct.minstrel_ht_sta*, i32, i32) #1

declare dso_local i8* @ieee80211_frame_duration(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_ht_update_cck(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, %struct.ieee80211_supported_band*, %struct.ieee80211_sta*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @minstrel_get_valid_vht_rates(i32, i32, i64) #1

declare dso_local i32 @minstrel_ht_update_stats(%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32) #1

declare dso_local i32 @minstrel_ht_update_rates(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
