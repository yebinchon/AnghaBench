; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_ht_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minstrel_priv = type { i32, i32, i32 }
%struct.minstrel_ht_sta = type { i64, i64, i64, i64, i32, i32*, i32*, i32, i32, i8*, %struct.minstrel_mcs_group_data*, i64, i64, i64 }
%struct.minstrel_mcs_group_data = type { i32*, %struct.minstrel_rate_stats* }
%struct.minstrel_rate_stats = type { i32, i32 }

@MAX_THR_RATES = common dso_local global i32 0, align 4
@MINSTREL_SAMPLE_IDLE = common dso_local global i8* null, align 8
@SAMPLE_SWITCH_THR = common dso_local global i64 0, align 8
@TX_STATUS_NO_AMPDU_LEN = common dso_local global i32 0, align 4
@EWMA_LEVEL = common dso_local global i32 0, align 4
@MINSTREL_CCK_GROUP = common dso_local global i64 0, align 8
@MCS_GROUP_RATES = common dso_local global i64 0, align 8
@MINSTREL_VHT_GROUP_0 = common dso_local global i64 0, align 8
@MINSTREL_HT_GROUP_0 = common dso_local global i64 0, align 8
@minstrel_mcs_groups = common dso_local global i64* null, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.minstrel_priv*, %struct.minstrel_ht_sta*, i32)* @minstrel_ht_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_ht_update_stats(%struct.minstrel_priv* %0, %struct.minstrel_ht_sta* %1, i32 %2) #0 {
  %4 = alloca %struct.minstrel_priv*, align 8
  %5 = alloca %struct.minstrel_ht_sta*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.minstrel_mcs_group_data*, align 8
  %8 = alloca %struct.minstrel_rate_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.minstrel_priv* %0, %struct.minstrel_priv** %4, align 8
  store %struct.minstrel_ht_sta* %1, %struct.minstrel_ht_sta** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @MAX_THR_RATES, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load i32, i32* @MAX_THR_RATES, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %15, align 8
  %25 = load i32, i32* @MAX_THR_RATES, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  %28 = load i8*, i8** @MINSTREL_SAMPLE_IDLE, align 8
  %29 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %30 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %3
  %34 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %35 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %38 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %42 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %44 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %47 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %33, %3
  %49 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %50 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %56 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SAMPLE_SWITCH_THR, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %62 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %60, %54
  %67 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %68 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %73 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TX_STATUS_NO_AMPDU_LEN, align 4
  %76 = call i32 @ieee80211_hw_check(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %71
  %79 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %80 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %79, i32 0, i32 13
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %83 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %82, i32 0, i32 12
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %86 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @MINSTREL_FRAC(i64 %84, i64 %87)
  %89 = load i32, i32* @EWMA_LEVEL, align 4
  %90 = call i64 @minstrel_ewma(i64 %81, i32 %88, i32 %89)
  %91 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %92 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %91, i32 0, i32 13
  store i64 %90, i64* %92, align 8
  br label %96

93:                                               ; preds = %71
  %94 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %95 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %94, i32 0, i32 13
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %78
  %97 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %98 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %97, i32 0, i32 12
  store i64 0, i64* %98, align 8
  %99 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %100 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %96, %66
  %102 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %103 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %102, i32 0, i32 11
  store i64 0, i64* %103, align 8
  %104 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %105 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %104, i32 0, i32 4
  store i32 0, i32* %105, align 8
  %106 = mul nuw i64 8, %19
  %107 = trunc i64 %106 to i32
  %108 = call i32 @memset(i64* %21, i32 0, i32 %107)
  %109 = mul nuw i64 8, %26
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i64* %27, i32 0, i32 %110)
  %112 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %113 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %101
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %131, %119
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @ARRAY_SIZE(i64* %27)
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %120
  %125 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %126 = load i64, i64* @MCS_GROUP_RATES, align 8
  %127 = mul i64 %125, %126
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %27, i64 %129
  store i64 %127, i64* %130, align 8
  br label %131

131:                                              ; preds = %124
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %120

134:                                              ; preds = %120
  br label %135

135:                                              ; preds = %134, %101
  %136 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %137 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @MINSTREL_VHT_GROUP_0, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %135
  %144 = load i64, i64* @MINSTREL_VHT_GROUP_0, align 8
  %145 = load i64, i64* @MCS_GROUP_RATES, align 8
  %146 = mul i64 %144, %145
  store i64 %146, i64* %17, align 8
  br label %151

147:                                              ; preds = %135
  %148 = load i64, i64* @MINSTREL_HT_GROUP_0, align 8
  %149 = load i64, i64* @MCS_GROUP_RATES, align 8
  %150 = mul i64 %148, %149
  store i64 %150, i64* %17, align 8
  br label %151

151:                                              ; preds = %147, %143
  store i32 0, i32* %11, align 4
  br label %152

152:                                              ; preds = %161, %151
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @ARRAY_SIZE(i64* %21)
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i64, i64* %17, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %21, i64 %159
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %152

164:                                              ; preds = %152
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %287, %164
  %166 = load i32, i32* %9, align 4
  %167 = load i64*, i64** @minstrel_mcs_groups, align 8
  %168 = call i32 @ARRAY_SIZE(i64* %167)
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %290

170:                                              ; preds = %165
  %171 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %172 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %171, i32 0, i32 10
  %173 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %172, align 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %173, i64 %175
  store %struct.minstrel_mcs_group_data* %176, %struct.minstrel_mcs_group_data** %7, align 8
  %177 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %178 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %170
  br label %287

186:                                              ; preds = %170
  %187 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %188 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  store i32 0, i32* %11, align 4
  br label %191

191:                                              ; preds = %203, %186
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @MAX_THR_RATES, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load i64, i64* @MCS_GROUP_RATES, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = mul i64 %196, %198
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %24, i64 %201
  store i64 %199, i64* %202, align 8
  br label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %191

206:                                              ; preds = %191
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %279, %206
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* @MCS_GROUP_RATES, align 8
  %211 = icmp ult i64 %209, %210
  br i1 %211, label %212, label %282

212:                                              ; preds = %207
  %213 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %214 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* %10, align 4
  %221 = call i32 @BIT(i32 %220)
  %222 = and i32 %219, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %212
  br label %279

225:                                              ; preds = %212
  %226 = load i64, i64* @MCS_GROUP_RATES, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = mul i64 %226, %228
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = add i64 %229, %231
  store i64 %232, i64* %17, align 8
  %233 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %234 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %233, i32 0, i32 1
  %235 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %235, i64 %237
  store %struct.minstrel_rate_stats* %238, %struct.minstrel_rate_stats** %8, align 8
  %239 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %8, align 8
  %240 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %239, i32 0, i32 0
  store i32 0, i32* %240, align 4
  %241 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %8, align 8
  %242 = call i32 @minstrel_calc_rate_stats(%struct.minstrel_rate_stats* %241)
  %243 = load %struct.minstrel_rate_stats*, %struct.minstrel_rate_stats** %8, align 8
  %244 = getelementptr inbounds %struct.minstrel_rate_stats, %struct.minstrel_rate_stats* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %12, align 4
  %246 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %10, align 4
  %249 = load i32, i32* %12, align 4
  %250 = call i64 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta* %246, i32 %247, i32 %248, i32 %249)
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %225
  br label %279

253:                                              ; preds = %225
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %257 = icmp ne i64 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %260 = load i64, i64* %17, align 8
  %261 = call i32 @minstrel_ht_sort_best_tp_rates(%struct.minstrel_ht_sta* %259, i64 %260, i64* %21)
  br label %272

262:                                              ; preds = %253
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* @MINSTREL_CCK_GROUP, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %269 = load i64, i64* %17, align 8
  %270 = call i32 @minstrel_ht_sort_best_tp_rates(%struct.minstrel_ht_sta* %268, i64 %269, i64* %27)
  br label %271

271:                                              ; preds = %267, %262
  br label %272

272:                                              ; preds = %271, %258
  %273 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %274 = load i64, i64* %17, align 8
  %275 = call i32 @minstrel_ht_sort_best_tp_rates(%struct.minstrel_ht_sta* %273, i64 %274, i64* %24)
  %276 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %277 = load i64, i64* %17, align 8
  %278 = call i32 @minstrel_ht_set_best_prob_rate(%struct.minstrel_ht_sta* %276, i64 %277)
  br label %279

279:                                              ; preds = %272, %252, %224
  %280 = load i32, i32* %10, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %10, align 4
  br label %207

282:                                              ; preds = %207
  %283 = load %struct.minstrel_mcs_group_data*, %struct.minstrel_mcs_group_data** %7, align 8
  %284 = getelementptr inbounds %struct.minstrel_mcs_group_data, %struct.minstrel_mcs_group_data* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @memcpy(i32* %285, i64* %24, i32 8)
  br label %287

287:                                              ; preds = %282, %185
  %288 = load i32, i32* %9, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %9, align 4
  br label %165

290:                                              ; preds = %165
  %291 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %292 = call i32 @minstrel_ht_assign_best_tp_rates(%struct.minstrel_ht_sta* %291, i64* %21, i64* %27)
  %293 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %294 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %293, i32 0, i32 6
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @memcpy(i32* %295, i64* %21, i32 8)
  %297 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %298 = call i32 @minstrel_ht_prob_rate_reduce_streams(%struct.minstrel_ht_sta* %297)
  %299 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %300 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = mul nsw i32 %301, 8
  store i32 %302, i32* %300, align 8
  %303 = load i32, i32* %6, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %290
  %306 = load %struct.minstrel_priv*, %struct.minstrel_priv** %4, align 8
  %307 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %308 = call i32 @minstrel_ht_rate_sample_switch(%struct.minstrel_priv* %306, %struct.minstrel_ht_sta* %307)
  br label %309

309:                                              ; preds = %305, %290
  %310 = load i32, i32* @jiffies, align 4
  %311 = load %struct.minstrel_ht_sta*, %struct.minstrel_ht_sta** %5, align 8
  %312 = getelementptr inbounds %struct.minstrel_ht_sta, %struct.minstrel_ht_sta* %311, i32 0, i32 8
  store i32 %310, i32* %312, align 4
  %313 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %313)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ieee80211_hw_check(i32, i32) #2

declare dso_local i64 @minstrel_ewma(i64, i32, i32) #2

declare dso_local i32 @MINSTREL_FRAC(i64, i64) #2

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @minstrel_calc_rate_stats(%struct.minstrel_rate_stats*) #2

declare dso_local i64 @minstrel_ht_get_tp_avg(%struct.minstrel_ht_sta*, i32, i32, i32) #2

declare dso_local i32 @minstrel_ht_sort_best_tp_rates(%struct.minstrel_ht_sta*, i64, i64*) #2

declare dso_local i32 @minstrel_ht_set_best_prob_rate(%struct.minstrel_ht_sta*, i64) #2

declare dso_local i32 @memcpy(i32*, i64*, i32) #2

declare dso_local i32 @minstrel_ht_assign_best_tp_rates(%struct.minstrel_ht_sta*, i64*, i64*) #2

declare dso_local i32 @minstrel_ht_prob_rate_reduce_streams(%struct.minstrel_ht_sta*) #2

declare dso_local i32 @minstrel_ht_rate_sample_switch(%struct.minstrel_priv*, %struct.minstrel_ht_sta*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
