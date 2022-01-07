; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_wmm_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_sta_wmm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_9__, %struct.ieee80211_tx_queue_params*, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_mu_edca_param_set = type { i32, i32, i32, i32, i32 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@IEEE80211_STA_UAPSD_ENABLED = common dso_local global i32 0, align 4
@IEEE80211_AC_BK = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_BK = common dso_local global i32 0, align 4
@IEEE80211_AC_VI = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_VI = common dso_local global i32 0, align 4
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_VO = common dso_local global i32 0, align 4
@IEEE80211_AC_BE = common dso_local global i32 0, align 4
@IEEE80211_WMM_IE_STA_QOSINFO_AC_BE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"AP has invalid WMM params (AIFSN=%d for ACI %d), will use 2\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"AP has invalid WMM params (CWmin/max=%d/%d for ACI %d), using defaults\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"AP has invalid WMM params (missing AC %d), using defaults\0A\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"WMM AC=%d acm=%d aifs=%d cWmin=%d cWmax=%d txop=%d uapsd=%d, downgraded=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"failed to set TX queue parameters for AC %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32*, i64, %struct.ieee80211_mu_edca_param_set*)* @ieee80211_sta_wmm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_sta_wmm_params(%struct.ieee80211_local* %0, %struct.ieee80211_sub_if_data* %1, i32* %2, i64 %3, %struct.ieee80211_mu_edca_param_set* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ieee80211_mu_edca_param_set*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ieee80211_if_managed*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %7, align 8
  store %struct.ieee80211_sub_if_data* %1, %struct.ieee80211_sub_if_data** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.ieee80211_mu_edca_param_set* %4, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %25 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %12, align 8
  %28 = alloca %struct.ieee80211_tx_queue_params, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  store %struct.ieee80211_if_managed* %31, %struct.ieee80211_if_managed** %14, align 8
  store i32 0, i32* %20, align 4
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

39:                                               ; preds = %5
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

47:                                               ; preds = %39
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

51:                                               ; preds = %47
  %52 = load i64, i64* %10, align 8
  %53 = icmp ult i64 %52, 8
  br i1 %53, label %59, label %54

54:                                               ; preds = %51
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 5
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %51
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

60:                                               ; preds = %54
  %61 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %62 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IEEE80211_STA_UAPSD_ENABLED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %69 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %20, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 6
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 15
  store i32 %75, i32* %16, align 4
  %76 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %77 = icmp ne %struct.ieee80211_mu_edca_param_set* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %80 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, %struct.ieee80211_mu_edca_param_set* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 15
  br label %84

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %78
  %85 = phi i32 [ %82, %78 ], [ -1, %83 ]
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %88 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i32, i32* %17, align 4
  %93 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %94 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

98:                                               ; preds = %91, %84
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %101 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %104 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32* %106, i32** %19, align 8
  %107 = load i64, i64* %10, align 8
  %108 = sub i64 %107, 8
  store i64 %108, i64* %15, align 8
  %109 = bitcast %struct.ieee80211_tx_queue_params* %28 to %struct.ieee80211_tx_queue_params**
  %110 = mul nuw i64 48, %26
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memset(%struct.ieee80211_tx_queue_params** %109, i32 0, i32 %111)
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 0
  store i32 0, i32* %114, align 8
  br label %115

115:                                              ; preds = %392, %98
  %116 = load i64, i64* %15, align 8
  %117 = icmp uge i64 %116, 4
  br i1 %117, label %118, label %397

118:                                              ; preds = %115
  %119 = load i32*, i32** %19, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 5
  %123 = and i32 %122, 3
  store i32 %123, i32* %22, align 4
  %124 = load i32*, i32** %19, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 4
  %128 = and i32 %127, 1
  store i32 %128, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %129 = load i32, i32* %22, align 4
  switch i32 %129, label %248 [
    i32 1, label %130
    i32 2, label %169
    i32 3, label %208
    i32 0, label %247
  ]

130:                                              ; preds = %118
  %131 = load i32, i32* @IEEE80211_AC_BK, align 4
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %23, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = call i32 @BIT(i32 1)
  %136 = call i32 @BIT(i32 2)
  %137 = or i32 %135, %136
  %138 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %134, %130
  %143 = load i32, i32* %20, align 4
  %144 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_BK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %142
  store i32 1, i32* %24, align 4
  br label %148

148:                                              ; preds = %147, %142
  %149 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %150 = icmp ne %struct.ieee80211_mu_edca_param_set* %149, null
  %151 = xor i1 %150, true
  %152 = xor i1 %151, true
  %153 = zext i1 %152 to i32
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %155
  %157 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 16
  %158 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %159 = icmp ne %struct.ieee80211_mu_edca_param_set* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %148
  %161 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %162 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, %struct.ieee80211_mu_edca_param_set* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %165
  %167 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %166, i32 0, i32 7
  store i32 %163, i32* %167, align 8
  br label %168

168:                                              ; preds = %160, %148
  br label %287

169:                                              ; preds = %118
  %170 = load i32, i32* @IEEE80211_AC_VI, align 4
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %23, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %169
  %174 = call i32 @BIT(i32 4)
  %175 = call i32 @BIT(i32 5)
  %176 = or i32 %174, %175
  %177 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %173, %169
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_VI, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  store i32 1, i32* %24, align 4
  br label %187

187:                                              ; preds = %186, %181
  %188 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %189 = icmp ne %struct.ieee80211_mu_edca_param_set* %188, null
  %190 = xor i1 %189, true
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %194
  %196 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 16
  %197 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %198 = icmp ne %struct.ieee80211_mu_edca_param_set* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %187
  %200 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %201 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, %struct.ieee80211_mu_edca_param_set* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %204
  %206 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %205, i32 0, i32 7
  store i32 %202, i32* %206, align 8
  br label %207

207:                                              ; preds = %199, %187
  br label %287

208:                                              ; preds = %118
  %209 = load i32, i32* @IEEE80211_AC_VO, align 4
  store i32 %209, i32* %18, align 4
  %210 = load i32, i32* %23, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %208
  %213 = call i32 @BIT(i32 6)
  %214 = call i32 @BIT(i32 7)
  %215 = or i32 %213, %214
  %216 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %217 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %212, %208
  %221 = load i32, i32* %20, align 4
  %222 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_VO, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  store i32 1, i32* %24, align 4
  br label %226

226:                                              ; preds = %225, %220
  %227 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %228 = icmp ne %struct.ieee80211_mu_edca_param_set* %227, null
  %229 = xor i1 %228, true
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = load i32, i32* %18, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %233
  %235 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %234, i32 0, i32 0
  store i32 %231, i32* %235, align 16
  %236 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %237 = icmp ne %struct.ieee80211_mu_edca_param_set* %236, null
  br i1 %237, label %238, label %246

238:                                              ; preds = %226
  %239 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %240 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, %struct.ieee80211_mu_edca_param_set* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %243
  %245 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %244, i32 0, i32 7
  store i32 %241, i32* %245, align 8
  br label %246

246:                                              ; preds = %238, %226
  br label %287

247:                                              ; preds = %118
  br label %248

248:                                              ; preds = %118, %247
  %249 = load i32, i32* @IEEE80211_AC_BE, align 4
  store i32 %249, i32* %18, align 4
  %250 = load i32, i32* %23, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %248
  %253 = call i32 @BIT(i32 0)
  %254 = call i32 @BIT(i32 3)
  %255 = or i32 %253, %254
  %256 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %257 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %252, %248
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* @IEEE80211_WMM_IE_STA_QOSINFO_AC_BE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %260
  store i32 1, i32* %24, align 4
  br label %266

266:                                              ; preds = %265, %260
  %267 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %268 = icmp ne %struct.ieee80211_mu_edca_param_set* %267, null
  %269 = xor i1 %268, true
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = load i32, i32* %18, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %273
  %275 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %274, i32 0, i32 0
  store i32 %271, i32* %275, align 16
  %276 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %277 = icmp ne %struct.ieee80211_mu_edca_param_set* %276, null
  br i1 %277, label %278, label %286

278:                                              ; preds = %266
  %279 = load %struct.ieee80211_mu_edca_param_set*, %struct.ieee80211_mu_edca_param_set** %11, align 8
  %280 = getelementptr inbounds %struct.ieee80211_mu_edca_param_set, %struct.ieee80211_mu_edca_param_set* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %18, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %283
  %285 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %284, i32 0, i32 7
  store i32 %281, i32* %285, align 8
  br label %286

286:                                              ; preds = %278, %266
  br label %287

287:                                              ; preds = %286, %246, %207, %168
  %288 = load i32*, i32** %19, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  %290 = load i32, i32* %289, align 4
  %291 = and i32 %290, 15
  %292 = load i32, i32* %18, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %293
  %295 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %294, i32 0, i32 1
  store i32 %291, i32* %295, align 4
  %296 = load i32, i32* %18, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %297
  %299 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = icmp slt i32 %300, 2
  br i1 %301, label %302, label %315

302:                                              ; preds = %287
  %303 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %304 = load i32, i32* %18, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %305
  %307 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %22, align 4
  %310 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %303, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %308, i32 %309)
  %311 = load i32, i32* %18, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %312
  %314 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %313, i32 0, i32 1
  store i32 2, i32* %314, align 4
  br label %315

315:                                              ; preds = %302, %287
  %316 = load i32*, i32** %19, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 1
  %318 = load i32, i32* %317, align 4
  %319 = and i32 %318, 240
  %320 = ashr i32 %319, 4
  %321 = call i8* @ecw2cw(i32 %320)
  %322 = load i32, i32* %18, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %323
  %325 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %324, i32 0, i32 5
  store i8* %321, i8** %325, align 8
  %326 = load i32*, i32** %19, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 1
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, 15
  %330 = call i8* @ecw2cw(i32 %329)
  %331 = load i32, i32* %18, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %332
  %334 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %333, i32 0, i32 6
  store i8* %330, i8** %334, align 16
  %335 = load i32*, i32** %19, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 2
  %337 = call i32 @get_unaligned_le16(i32* %336)
  %338 = load i32, i32* %18, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %339
  %341 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %340, i32 0, i32 4
  store i32 %337, i32* %341, align 16
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %18, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %344
  %346 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %345, i32 0, i32 2
  store i32 %342, i32* %346, align 8
  %347 = load i32, i32* %24, align 4
  %348 = load i32, i32* %18, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %349
  %351 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %350, i32 0, i32 3
  store i32 %347, i32* %351, align 4
  %352 = load i32, i32* %18, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %353
  %355 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %354, i32 0, i32 6
  %356 = load i8*, i8** %355, align 16
  %357 = icmp eq i8* %356, null
  br i1 %357, label %370, label %358

358:                                              ; preds = %315
  %359 = load i32, i32* %18, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %360
  %362 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %361, i32 0, i32 6
  %363 = load i8*, i8** %362, align 16
  %364 = load i32, i32* %18, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %365
  %367 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %366, i32 0, i32 5
  %368 = load i8*, i8** %367, align 8
  %369 = icmp ugt i8* %363, %368
  br i1 %369, label %370, label %385

370:                                              ; preds = %358, %315
  %371 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %372 = load i32, i32* %18, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %373
  %375 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %374, i32 0, i32 6
  %376 = load i8*, i8** %375, align 16
  %377 = ptrtoint i8* %376 to i32
  %378 = load i32, i32* %18, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %379
  %381 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %380, i32 0, i32 5
  %382 = load i8*, i8** %381, align 8
  %383 = load i32, i32* %22, align 4
  %384 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %371, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %377, i8* %382, i32 %383)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

385:                                              ; preds = %358
  %386 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %387 = load i32, i32* %18, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %388
  %390 = load i32, i32* %18, align 4
  %391 = call i32 @ieee80211_regulatory_limit_wmm_params(%struct.ieee80211_sub_if_data* %386, %struct.ieee80211_tx_queue_params* %389, i32 %390)
  br label %392

392:                                              ; preds = %385
  %393 = load i64, i64* %15, align 8
  %394 = sub i64 %393, 4
  store i64 %394, i64* %15, align 8
  %395 = load i32*, i32** %19, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 4
  store i32* %396, i32** %19, align 8
  br label %115

397:                                              ; preds = %115
  store i32 0, i32* %18, align 4
  br label %398

398:                                              ; preds = %414, %397
  %399 = load i32, i32* %18, align 4
  %400 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %401 = icmp slt i32 %399, %400
  br i1 %401, label %402, label %417

402:                                              ; preds = %398
  %403 = load i32, i32* %18, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %404
  %406 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %405, i32 0, i32 6
  %407 = load i8*, i8** %406, align 16
  %408 = icmp eq i8* %407, null
  br i1 %408, label %409, label %413

409:                                              ; preds = %402
  %410 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %411 = load i32, i32* %18, align 4
  %412 = call i32 (%struct.ieee80211_sub_if_data*, i8*, i32, ...) @sdata_info(%struct.ieee80211_sub_if_data* %410, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %411)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

413:                                              ; preds = %402
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %18, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %18, align 4
  br label %398

417:                                              ; preds = %398
  store i32 0, i32* %18, align 4
  br label %418

418:                                              ; preds = %498, %417
  %419 = load i32, i32* %18, align 4
  %420 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %501

422:                                              ; preds = %418
  %423 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %424 = load i32, i32* %18, align 4
  %425 = load i32, i32* %18, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %426
  %428 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* %18, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %431
  %433 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* %18, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %436
  %438 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %437, i32 0, i32 6
  %439 = load i8*, i8** %438, align 16
  %440 = load i32, i32* %18, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %441
  %443 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %442, i32 0, i32 5
  %444 = load i8*, i8** %443, align 8
  %445 = load i32, i32* %18, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %446
  %448 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 16
  %450 = load i32, i32* %18, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %451
  %453 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %456 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %455, i32 0, i32 4
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %456, align 8
  %458 = load i32, i32* %18, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i64 %459
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @mlme_dbg(%struct.ieee80211_sub_if_data* %423, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %424, i32 %429, i32 %434, i8* %439, i8* %444, i32 %449, i32 %454, i32 %462)
  %464 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %465 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %464, i32 0, i32 2
  %466 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %465, align 8
  %467 = load i32, i32* %18, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %466, i64 %468
  %470 = load i32, i32* %18, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %471
  %473 = bitcast %struct.ieee80211_tx_queue_params* %469 to i8*
  %474 = bitcast %struct.ieee80211_tx_queue_params* %472 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %473, i8* align 16 %474, i64 48, i1 false)
  %475 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %14, align 8
  %476 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %475, i32 0, i32 4
  %477 = load %struct.TYPE_7__*, %struct.TYPE_7__** %476, align 8
  %478 = load i32, i32* %18, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %497, label %484

484:                                              ; preds = %422
  %485 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %486 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %487 = load i32, i32* %18, align 4
  %488 = load i32, i32* %18, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i64 %489
  %491 = call i64 @drv_conf_tx(%struct.ieee80211_local* %485, %struct.ieee80211_sub_if_data* %486, i32 %487, %struct.ieee80211_tx_queue_params* %490)
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %497

493:                                              ; preds = %484
  %494 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %495 = load i32, i32* %18, align 4
  %496 = call i32 @sdata_err(%struct.ieee80211_sub_if_data* %494, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %495)
  br label %497

497:                                              ; preds = %493, %484, %422
  br label %498

498:                                              ; preds = %497
  %499 = load i32, i32* %18, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %18, align 4
  br label %418

501:                                              ; preds = %418
  %502 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %503 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %502, i32 0, i32 1
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %504, i32 0, i32 0
  store i32 1, i32* %505, align 4
  store i32 1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %506

506:                                              ; preds = %501, %409, %370, %97, %59, %50, %46, %38
  %507 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %507)
  %508 = load i32, i32* %6, align 4
  ret i32 %508
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.ieee80211_tx_queue_params**, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, ...) #2

declare dso_local i8* @ecw2cw(i32) #2

declare dso_local i32 @get_unaligned_le16(i32*) #2

declare dso_local i32 @ieee80211_regulatory_limit_wmm_params(%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_queue_params*, i32) #2

declare dso_local i32 @mlme_dbg(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32, i8*, i8*, i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @drv_conf_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_tx_queue_params*) #2

declare dso_local i32 @sdata_err(%struct.ieee80211_sub_if_data*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
