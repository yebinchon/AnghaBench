; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate_he.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate_he.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i32, i64, i64, i32, i64, i64 }

@__const.cfg80211_calculate_bitrate_he.mcs_divisors = private unnamed_addr constant [12 x i32] [i32 34133, i32 17067, i32 11378, i32 8533, i32 5689, i32 4267, i32 3923, i32 3413, i32 2844, i32 2560, i32 2276, i32 2048], align 16
@__const.cfg80211_calculate_bitrate_he.rates_160M = private unnamed_addr constant [3 x i32] [i32 960777777, i32 907400000, i32 816666666], align 4
@__const.cfg80211_calculate_bitrate_he.rates_969 = private unnamed_addr constant [3 x i32] [i32 480388888, i32 453700000, i32 408333333], align 4
@__const.cfg80211_calculate_bitrate_he.rates_484 = private unnamed_addr constant [3 x i32] [i32 229411111, i32 216666666, i32 195000000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_242 = private unnamed_addr constant [3 x i32] [i32 114711111, i32 108333333, i32 97500000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_106 = private unnamed_addr constant [3 x i32] [i32 40000000, i32 37777777, i32 34000000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_52 = private unnamed_addr constant [3 x i32] [i32 18820000, i32 17777777, i32 16000000], align 4
@__const.cfg80211_calculate_bitrate_he.rates_26 = private unnamed_addr constant [3 x i32] [i32 9411111, i32 8888888, i32 8000000], align 4
@NL80211_RATE_INFO_HE_GI_3_2 = common dso_local global i64 0, align 8
@NL80211_RATE_INFO_HE_RU_ALLOC_2x996 = common dso_local global i64 0, align 8
@RATE_INFO_BW_160 = common dso_local global i64 0, align 8
@RATE_INFO_BW_80 = common dso_local global i64 0, align 8
@RATE_INFO_BW_HE_RU = common dso_local global i64 0, align 8
@NL80211_RATE_INFO_HE_RU_ALLOC_996 = common dso_local global i64 0, align 8
@RATE_INFO_BW_40 = common dso_local global i64 0, align 8
@NL80211_RATE_INFO_HE_RU_ALLOC_484 = common dso_local global i64 0, align 8
@RATE_INFO_BW_20 = common dso_local global i64 0, align 8
@NL80211_RATE_INFO_HE_RU_ALLOC_242 = common dso_local global i64 0, align 8
@NL80211_RATE_INFO_HE_RU_ALLOC_106 = common dso_local global i64 0, align 8
@NL80211_RATE_INFO_HE_RU_ALLOC_52 = common dso_local global i64 0, align 8
@NL80211_RATE_INFO_HE_RU_ALLOC_26 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"invalid HE MCS: bw:%d, ru:%d\0A\00", align 1
@SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rate_info*)* @cfg80211_calculate_bitrate_he to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_calculate_bitrate_he(%struct.rate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rate_info*, align 8
  %4 = alloca [12 x i32], align 16
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  %14 = bitcast [12 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %14, i8* align 16 bitcast ([12 x i32]* @__const.cfg80211_calculate_bitrate_he.mcs_divisors to i8*), i64 48, i1 false)
  %15 = bitcast [3 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.cfg80211_calculate_bitrate_he.rates_160M to i8*), i64 12, i1 false)
  %16 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast ([3 x i32]* @__const.cfg80211_calculate_bitrate_he.rates_969 to i8*), i64 12, i1 false)
  %17 = bitcast [3 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast ([3 x i32]* @__const.cfg80211_calculate_bitrate_he.rates_484 to i8*), i64 12, i1 false)
  %18 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([3 x i32]* @__const.cfg80211_calculate_bitrate_he.rates_242 to i8*), i64 12, i1 false)
  %19 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([3 x i32]* @__const.cfg80211_calculate_bitrate_he.rates_106 to i8*), i64 12, i1 false)
  %20 = bitcast [3 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([3 x i32]* @__const.cfg80211_calculate_bitrate_he.rates_52 to i8*), i64 12, i1 false)
  %21 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast ([3 x i32]* @__const.cfg80211_calculate_bitrate_he.rates_26 to i8*), i64 12, i1 false)
  %22 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %23 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 11
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON_ONCE(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %247

30:                                               ; preds = %1
  %31 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %32 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_RATE_INFO_HE_GI_3_2, align 8
  %35 = icmp ugt i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON_ONCE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %247

40:                                               ; preds = %30
  %41 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %42 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_RATE_INFO_HE_RU_ALLOC_2x996, align 8
  %45 = icmp sgt i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %247

50:                                               ; preds = %40
  %51 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %52 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %57 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = phi i1 [ true, %50 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @WARN_ON_ONCE(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %247

66:                                               ; preds = %60
  %67 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %68 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RATE_INFO_BW_160, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %74 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  br label %218

78:                                               ; preds = %66
  %79 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %80 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RATE_INFO_BW_80, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %86 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RATE_INFO_BW_HE_RU, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %84
  %91 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %92 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NL80211_RATE_INFO_HE_RU_ALLOC_996, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90, %78
  %97 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %98 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  br label %217

102:                                              ; preds = %90, %84
  %103 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %104 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RATE_INFO_BW_40, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %120, label %108

108:                                              ; preds = %102
  %109 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %110 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @RATE_INFO_BW_HE_RU, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %108
  %115 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %116 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @NL80211_RATE_INFO_HE_RU_ALLOC_484, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %114, %102
  %121 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %122 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %13, align 4
  br label %216

126:                                              ; preds = %114, %108
  %127 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %128 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @RATE_INFO_BW_20, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %144, label %132

132:                                              ; preds = %126
  %133 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %134 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @RATE_INFO_BW_HE_RU, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %140 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NL80211_RATE_INFO_HE_RU_ALLOC_242, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %138, %126
  %145 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %146 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %13, align 4
  br label %215

150:                                              ; preds = %138, %132
  %151 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %152 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @RATE_INFO_BW_HE_RU, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %158 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @NL80211_RATE_INFO_HE_RU_ALLOC_106, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %168

162:                                              ; preds = %156
  %163 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %164 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %13, align 4
  br label %214

168:                                              ; preds = %156, %150
  %169 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %170 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @RATE_INFO_BW_HE_RU, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %168
  %175 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %176 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @NL80211_RATE_INFO_HE_RU_ALLOC_52, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %174
  %181 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %182 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %13, align 4
  br label %213

186:                                              ; preds = %174, %168
  %187 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %188 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @RATE_INFO_BW_HE_RU, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %186
  %193 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %194 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @NL80211_RATE_INFO_HE_RU_ALLOC_26, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %200 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %13, align 4
  br label %212

204:                                              ; preds = %192, %186
  %205 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %206 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %209 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %207, i64 %210)
  store i32 0, i32* %2, align 4
  br label %247

212:                                              ; preds = %198
  br label %213

213:                                              ; preds = %212, %180
  br label %214

214:                                              ; preds = %213, %162
  br label %215

215:                                              ; preds = %214, %144
  br label %216

216:                                              ; preds = %215, %120
  br label %217

217:                                              ; preds = %216, %96
  br label %218

218:                                              ; preds = %217, %72
  %219 = load i32, i32* %13, align 4
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* %12, align 4
  %221 = mul nsw i32 %220, 2048
  store i32 %221, i32* %12, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %224 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @do_div(i32 %222, i32 %228)
  %230 = load i32, i32* %12, align 4
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %233 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %231, %234
  %236 = sdiv i32 %235, 8
  store i32 %236, i32* %13, align 4
  %237 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %238 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %218
  %242 = load i32, i32* %13, align 4
  %243 = sdiv i32 %242, 2
  store i32 %243, i32* %13, align 4
  br label %244

244:                                              ; preds = %241, %218
  %245 = load i32, i32* %13, align 4
  %246 = sdiv i32 %245, 10000
  store i32 %246, i32* %2, align 4
  br label %247

247:                                              ; preds = %244, %204, %65, %49, %39, %29
  %248 = load i32, i32* %2, align 4
  ret i32 %248
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #2

declare dso_local i32 @WARN(i32, i8*, i64, i64) #2

declare dso_local i32 @do_div(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
