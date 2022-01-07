; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_fixup_ratelist.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_fixup_ratelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_supported_band = type { i32, %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i64, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64, i64 }
%struct.ieee80211_tx_rate = type { i32, i64 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_RTS_CTS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_CTS_PROTECT = common dso_local global i32 0, align 4
@IEEE80211_RATE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@IEEE80211_RATE_ERP_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_vif*, %struct.ieee80211_supported_band*, %struct.ieee80211_tx_info*, %struct.ieee80211_tx_rate*, i32)* @rate_fixup_ratelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_fixup_ratelist(%struct.ieee80211_vif* %0, %struct.ieee80211_supported_band* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_rate* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_supported_band*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_tx_rate*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_rate*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ieee80211_vif* %0, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_supported_band* %1, %struct.ieee80211_supported_band** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_tx_rate* %3, %struct.ieee80211_tx_rate** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %16, i64 0
  %18 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %21 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %103, label %25

25:                                               ; preds = %5
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @ffs(i32 %33)
  %35 = sub i64 %34, 1
  br label %37

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i64 [ %35, %32 ], [ 0, %36 ]
  store i64 %38, i64* %15, align 8
  %39 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %39, i32 0, i32 1
  %41 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %40, align 8
  %42 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %42, i64 0
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %41, i64 %45
  store %struct.ieee80211_rate* %46, %struct.ieee80211_rate** %11, align 8
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %95, %37
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %98

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %95

60:                                               ; preds = %53
  %61 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %62 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %61, i32 0, i32 1
  %63 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %63, i64 %65
  %67 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %95

74:                                               ; preds = %60
  %75 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %75, i32 0, i32 1
  %77 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %77, i64 %78
  %80 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %83 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %82, i32 0, i32 1
  %84 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %84, i64 %86
  %88 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %81, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %74
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %15, align 8
  br label %94

94:                                               ; preds = %91, %74
  br label %95

95:                                               ; preds = %94, %73, %59
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %47

98:                                               ; preds = %47
  %99 = load i64, i64* %15, align 8
  %100 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %101 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  br label %103

103:                                              ; preds = %98, %5
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %294, %103
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %297

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %112, i64 %114
  %116 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %115, i32 0, i32 1
  store i64 -1, i64* %116, align 8
  br label %294

117:                                              ; preds = %108
  %118 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %118, i64 %120
  %122 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i32 1, i32* %12, align 4
  br label %294

126:                                              ; preds = %117
  %127 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %127, i64 %129
  %131 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %171

136:                                              ; preds = %126
  %137 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %137, i64 %139
  %141 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ugt i64 %142, 76
  %144 = zext i1 %143 to i32
  %145 = call i32 @WARN_ON(i32 %144)
  %146 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %146, i64 %148
  %150 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %170, label %155

155:                                              ; preds = %136
  %156 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %157 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %163 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %163, i64 %165
  %167 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %162
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %161, %155, %136
  br label %294

171:                                              ; preds = %126
  %172 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %172, i64 %174
  %176 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %171
  %182 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %182, i64 %184
  %186 = call i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate* %185)
  %187 = icmp sgt i32 %186, 9
  %188 = zext i1 %187 to i32
  %189 = call i32 @WARN_ON(i32 %188)
  br label %294

190:                                              ; preds = %171
  %191 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %192 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %190
  %197 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %198 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %198, i64 %200
  %202 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = or i32 %203, %197
  store i32 %204, i32* %202, align 8
  %205 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %206 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i32 0, i32* %207, align 8
  br label %208

208:                                              ; preds = %196, %190
  %209 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %209, i64 %211
  %213 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %216 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = icmp uge i64 %214, %218
  %220 = zext i1 %219 to i32
  %221 = call i64 @WARN_ON_ONCE(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %208
  %224 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %224, i64 %226
  %228 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %227, i32 0, i32 1
  store i64 -1, i64* %228, align 8
  br label %294

229:                                              ; preds = %208
  %230 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %7, align 8
  %231 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %230, i32 0, i32 1
  %232 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %231, align 8
  %233 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %233, i64 %235
  %237 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %232, i64 %238
  store %struct.ieee80211_rate* %239, %struct.ieee80211_rate** %11, align 8
  %240 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %241 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %229
  %246 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %247 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @IEEE80211_RATE_SHORT_PREAMBLE, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %245
  %253 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %254 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %254, i64 %256
  %258 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %253
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %252, %245, %229
  %262 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %262, i64 %264
  %266 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @IEEE80211_TX_RC_USE_RTS_CTS, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %293, label %271

271:                                              ; preds = %261
  %272 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %273 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %271
  %278 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %11, align 8
  %279 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @IEEE80211_RATE_ERP_G, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %277
  %285 = load i32, i32* @IEEE80211_TX_RC_USE_CTS_PROTECT, align 4
  %286 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %9, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %286, i64 %288
  %290 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = or i32 %291, %285
  store i32 %292, i32* %290, align 8
  br label %293

293:                                              ; preds = %284, %277, %271, %261
  br label %294

294:                                              ; preds = %293, %223, %181, %170, %125, %111
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %13, align 4
  br label %104

297:                                              ; preds = %104
  ret void
}

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
