; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_set_wmm_default.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_set_wmm_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_12__, %struct.ieee80211_tx_queue_params*, %struct.ieee80211_local* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i32 }
%struct.ieee80211_local = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_OCB = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_NAN = common dso_local global i64 0, align 8
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_local*, align 8
  %8 = alloca %struct.ieee80211_tx_queue_params, align 4
  %9 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 3
  %17 = load %struct.ieee80211_local*, %struct.ieee80211_local** %16, align 8
  store %struct.ieee80211_local* %17, %struct.ieee80211_local** %7, align 8
  %18 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %226

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %226

33:                                               ; preds = %25
  %34 = call i32 @memset(%struct.ieee80211_tx_queue_params* %8, i32 0, i32 20)
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %37 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %39)
  store %struct.ieee80211_chanctx_conf* %40, %struct.ieee80211_chanctx_conf** %9, align 8
  %41 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %42 = icmp ne %struct.ieee80211_chanctx_conf* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %52, %43, %33
  %61 = phi i1 [ false, %43 ], [ false, %33 ], [ %59, %52 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %11, align 4
  %63 = call i32 (...) @rcu_read_unlock()
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NL80211_IFTYPE_OCB, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %12, align 4
  store i32 1023, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i32 31, i32* %13, align 4
  br label %75

74:                                               ; preds = %60
  store i32 15, i32* %13, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %14, align 4
  %77 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %13, align 4
  %79 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 2, i32* %81, align 4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %189, %75
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %192

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %172

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  switch i32 %90, label %104 [
    i32 130, label %91
    i32 131, label %105
    i32 129, label %118
    i32 128, label %146
  ]

91:                                               ; preds = %89
  %92 = load i32, i32* %14, align 4
  %93 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 0
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 9, i32* %100, align 4
  br label %103

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 7, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %99
  br label %171

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %89, %104
  %106 = load i32, i32* %14, align 4
  %107 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %13, align 4
  %109 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 0, i32* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 6, i32* %114, align 4
  br label %117

115:                                              ; preds = %105
  %116 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 3, i32* %116, align 4
  br label %117

117:                                              ; preds = %115, %113
  br label %171

118:                                              ; preds = %89
  %119 = load i32, i32* %13, align 4
  %120 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  %123 = sdiv i32 %122, 2
  %124 = sub nsw i32 %123, 1
  %125 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 1
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 0, i32* %129, align 4
  br label %138

130:                                              ; preds = %118
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 188, i32* %134, align 4
  br label %137

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 94, i32* %136, align 4
  br label %137

137:                                              ; preds = %135, %133
  br label %138

138:                                              ; preds = %137, %128
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 3, i32* %142, align 4
  br label %145

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 2, i32* %144, align 4
  br label %145

145:                                              ; preds = %143, %141
  br label %171

146:                                              ; preds = %89
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  %149 = sdiv i32 %148, 2
  %150 = sub nsw i32 %149, 1
  %151 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 0
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  %154 = sdiv i32 %153, 4
  %155 = sub nsw i32 %154, 1
  %156 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 1
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 0, i32* %160, align 4
  br label %169

161:                                              ; preds = %146
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 102, i32* %165, align 4
  br label %168

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 2
  store i32 47, i32* %167, align 4
  br label %168

168:                                              ; preds = %166, %164
  br label %169

169:                                              ; preds = %168, %159
  %170 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 3
  store i32 2, i32* %170, align 4
  br label %171

171:                                              ; preds = %169, %145, %117, %103
  br label %172

172:                                              ; preds = %171, %86
  %173 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %174 = load i32, i32* %10, align 4
  %175 = call i32 @ieee80211_regulatory_limit_wmm_params(%struct.ieee80211_sub_if_data* %173, %struct.ieee80211_tx_queue_params* %8, i32 %174)
  %176 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %8, i32 0, i32 4
  store i32 0, i32* %176, align 4
  %177 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %178 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %177, i32 0, i32 2
  %179 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %179, i64 %181
  %183 = bitcast %struct.ieee80211_tx_queue_params* %182 to i8*
  %184 = bitcast %struct.ieee80211_tx_queue_params* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 20, i1 false)
  %185 = load %struct.ieee80211_local*, %struct.ieee80211_local** %7, align 8
  %186 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @drv_conf_tx(%struct.ieee80211_local* %185, %struct.ieee80211_sub_if_data* %186, i32 %187, %struct.ieee80211_tx_queue_params* %8)
  br label %189

189:                                              ; preds = %172
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %82

192:                                              ; preds = %82
  %193 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %192
  %200 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %201 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %226

206:                                              ; preds = %199
  %207 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %208 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @NL80211_IFTYPE_NAN, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %206
  %214 = load i32, i32* %6, align 4
  %215 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %216 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  store i32 %214, i32* %218, align 8
  %219 = load i32, i32* %5, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %213
  %222 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %223 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %224 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %213
  br label %226

226:                                              ; preds = %24, %32, %225, %206, %199, %192
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_tx_queue_params*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_regulatory_limit_wmm_params(%struct.ieee80211_sub_if_data*, %struct.ieee80211_tx_queue_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @drv_conf_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_tx_queue_params*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
