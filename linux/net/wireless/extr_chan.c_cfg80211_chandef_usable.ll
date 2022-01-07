; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_usable.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_chan.c_cfg80211_chandef_usable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.ieee80211_edmg, %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_ht_cap }
%struct.ieee80211_edmg = type { i64 }
%struct.ieee80211_sta_vht_cap = type { i32, i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IEEE80211_CHAN_NO_10MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_20MHZ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_40MHZ_INTOLERANT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40MINUS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_HT40PLUS = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_160MHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_NO_OFDM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_chandef_usable(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %9 = alloca %struct.ieee80211_sta_vht_cap*, align 8
  %10 = alloca %struct.ieee80211_edmg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %15 = call i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %243

22:                                               ; preds = %3
  %23 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %24 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %24, align 8
  %26 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %27 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %25, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.ieee80211_sta_ht_cap* %33, %struct.ieee80211_sta_ht_cap** %8, align 8
  %34 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %35 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %38 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store %struct.ieee80211_sta_vht_cap* %44, %struct.ieee80211_sta_vht_cap** %9, align 8
  %45 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %46 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %49 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.ieee80211_edmg* %55, %struct.ieee80211_edmg** %10, align 8
  %56 = load %struct.ieee80211_edmg*, %struct.ieee80211_edmg** %10, align 8
  %57 = getelementptr inbounds %struct.ieee80211_edmg, %struct.ieee80211_edmg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %22
  %61 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %62 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %63 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %67 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %71 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ieee80211_edmg*, %struct.ieee80211_edmg** %10, align 8
  %76 = call i32 @cfg80211_edmg_usable(%struct.wiphy* %61, i32 %65, i32 %69, i32 %74, %struct.ieee80211_edmg* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %243

79:                                               ; preds = %60, %22
  %80 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %81 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %12, align 4
  %85 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %86 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  switch i32 %87, label %203 [
    i32 130, label %88
    i32 135, label %89
    i32 133, label %93
    i32 132, label %100
    i32 131, label %104
    i32 128, label %158
    i32 129, label %169
    i32 134, label %179
  ]

88:                                               ; preds = %79
  store i32 5, i32* %11, align 4
  br label %205

89:                                               ; preds = %79
  %90 = load i32, i32* @IEEE80211_CHAN_NO_10MHZ, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  store i32 10, i32* %11, align 4
  br label %205

93:                                               ; preds = %79
  %94 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %243

99:                                               ; preds = %93
  br label %100

100:                                              ; preds = %79, %99
  %101 = load i32, i32* @IEEE80211_CHAN_NO_20MHZ, align 4
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  store i32 20, i32* %11, align 4
  br label %205

104:                                              ; preds = %79
  store i32 40, i32* %11, align 4
  %105 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %106 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %243

110:                                              ; preds = %104
  %111 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @IEEE80211_HT_CAP_40MHZ_INTOLERANT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %117, %110
  store i32 0, i32* %4, align 4
  br label %243

125:                                              ; preds = %117
  %126 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %127 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %133 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %132, i32 0, i32 3
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IEEE80211_CHAN_NO_HT40MINUS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %243

141:                                              ; preds = %131, %125
  %142 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %143 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp sgt i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %149 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %148, i32 0, i32 3
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IEEE80211_CHAN_NO_HT40PLUS, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %243

157:                                              ; preds = %147, %141
  br label %205

158:                                              ; preds = %79
  %159 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %160 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %163 = and i32 %161, %162
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %243

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %79, %168
  %170 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %171 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %243

175:                                              ; preds = %169
  %176 = load i32, i32* @IEEE80211_CHAN_NO_80MHZ, align 4
  %177 = load i32, i32* %7, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %7, align 4
  store i32 80, i32* %11, align 4
  br label %205

179:                                              ; preds = %79
  %180 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %181 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %179
  store i32 0, i32* %4, align 4
  br label %243

185:                                              ; preds = %179
  %186 = load %struct.ieee80211_sta_vht_cap*, %struct.ieee80211_sta_vht_cap** %9, align 8
  %187 = getelementptr inbounds %struct.ieee80211_sta_vht_cap, %struct.ieee80211_sta_vht_cap* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_MASK, align 4
  %190 = and i32 %188, %189
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %185
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @IEEE80211_VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  store i32 0, i32* %4, align 4
  br label %243

199:                                              ; preds = %194, %185
  %200 = load i32, i32* @IEEE80211_CHAN_NO_160MHZ, align 4
  %201 = load i32, i32* %7, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %7, align 4
  store i32 160, i32* %11, align 4
  br label %205

203:                                              ; preds = %79
  %204 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %4, align 4
  br label %243

205:                                              ; preds = %199, %175, %157, %100, %89, %88
  %206 = load i32, i32* %11, align 4
  %207 = icmp sgt i32 %206, 20
  br i1 %207, label %208, label %212

208:                                              ; preds = %205
  %209 = load i32, i32* @IEEE80211_CHAN_NO_OFDM, align 4
  %210 = load i32, i32* %7, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %208, %205
  %213 = load i32, i32* %11, align 4
  %214 = icmp slt i32 %213, 20
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* @IEEE80211_CHAN_NO_OFDM, align 4
  %217 = load i32, i32* %7, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %7, align 4
  br label %219

219:                                              ; preds = %215, %212
  %220 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %221 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %222 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @cfg80211_secondary_chans_ok(%struct.wiphy* %220, i32 %223, i32 %224, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %219
  store i32 0, i32* %4, align 4
  br label %243

229:                                              ; preds = %219
  %230 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %231 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %229
  store i32 1, i32* %4, align 4
  br label %243

235:                                              ; preds = %229
  %236 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %237 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %238 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @cfg80211_secondary_chans_ok(%struct.wiphy* %236, i32 %239, i32 %240, i32 %241)
  store i32 %242, i32* %4, align 4
  br label %243

243:                                              ; preds = %235, %234, %228, %203, %198, %184, %174, %167, %156, %140, %124, %109, %98, %78, %21
  %244 = load i32, i32* %4, align 4
  ret i32 %244
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def*) #1

declare dso_local i32 @cfg80211_edmg_usable(%struct.wiphy*, i32, i32, i32, %struct.ieee80211_edmg*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cfg80211_secondary_chans_ok(%struct.wiphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
