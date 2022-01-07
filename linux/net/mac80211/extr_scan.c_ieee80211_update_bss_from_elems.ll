; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_update_bss_from_elems.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_update_bss_from_elems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32* }
%struct.ieee80211_bss = type { i32, i32, i32, i32, i32*, i32, i64, i32, i32, i32, i32 }
%struct.ieee802_11_elems = type { i32, i32, i64, i64, i64, i64, i64, i32* }
%struct.ieee80211_rx_status = type { i64, i64, i64, i32 }

@IEEE80211_BSS_CORRUPT_BEACON = common dso_local global i32 0, align 4
@IEEE80211_BSS_CORRUPT_PROBE_RESP = common dso_local global i32 0, align 4
@IEEE80211_BSS_VALID_ERP = common dso_local global i32 0, align 4
@IEEE80211_BSS_VALID_RATES = common dso_local global i32 0, align 4
@IEEE80211_MAX_SUPP_RATES = common dso_local global i32 0, align 4
@IEEE80211_BSS_VALID_WMM = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i64 0, align 8
@RX_ENC_VHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_local*, %struct.ieee80211_bss*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*, i32)* @ieee80211_update_bss_from_elems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_update_bss_from_elems(%struct.ieee80211_local* %0, %struct.ieee80211_bss* %1, %struct.ieee802_11_elems* %2, %struct.ieee80211_rx_status* %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca %struct.ieee80211_bss*, align 8
  %8 = alloca %struct.ieee802_11_elems*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %6, align 8
  store %struct.ieee80211_bss* %1, %struct.ieee80211_bss** %7, align 8
  store %struct.ieee802_11_elems* %2, %struct.ieee802_11_elems** %8, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %18 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %21 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  br label %28

22:                                               ; preds = %5
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %30 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @IEEE80211_BSS_CORRUPT_BEACON, align 4
  %38 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @IEEE80211_BSS_CORRUPT_PROBE_RESP, align 4
  %44 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %36
  br label %67

49:                                               ; preds = %28
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* @IEEE80211_BSS_CORRUPT_BEACON, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %66

59:                                               ; preds = %49
  %60 = load i32, i32* @IEEE80211_BSS_CORRUPT_PROBE_RESP, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %63 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %69 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %105

72:                                               ; preds = %67
  %73 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %74 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IEEE80211_BSS_VALID_ERP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %77, %72
  %85 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %86 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %93 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  %94 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %95 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %84
  %99 = load i32, i32* @IEEE80211_BSS_VALID_ERP, align 4
  %100 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %84
  br label %105

105:                                              ; preds = %104, %77, %67
  %106 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %107 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %112 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IEEE80211_BSS_VALID_RATES, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %197, label %117

117:                                              ; preds = %110, %105
  store i32 0, i32* %12, align 4
  %118 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %119 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %145

122:                                              ; preds = %117
  %123 = load i32, i32* @IEEE80211_MAX_SUPP_RATES, align 4
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %126 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %131 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %129, %122
  %134 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %138 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @memcpy(i64 %136, i64 %139, i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %133, %117
  %146 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %147 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %146, i32 0, i32 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %178

150:                                              ; preds = %145
  %151 = load i32, i32* @IEEE80211_MAX_SUPP_RATES, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %151, %152
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %156 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %150
  %160 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %161 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %159, %150
  %164 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %165 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %166, %168
  %170 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %171 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @memcpy(i64 %169, i64 %172, i32 %173)
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %12, align 4
  br label %178

178:                                              ; preds = %163, %145
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %178
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %184 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %186 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %181
  %190 = load i32, i32* @IEEE80211_BSS_VALID_RATES, align 4
  %191 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %192 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %181
  br label %196

196:                                              ; preds = %195, %178
  br label %197

197:                                              ; preds = %196, %110
  %198 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %199 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %209

202:                                              ; preds = %197
  %203 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %204 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @IEEE80211_BSS_VALID_WMM, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %239, label %209

209:                                              ; preds = %202, %197
  %210 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %211 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %209
  %215 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %216 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br label %219

219:                                              ; preds = %214, %209
  %220 = phi i1 [ true, %209 ], [ %218, %214 ]
  %221 = zext i1 %220 to i32
  %222 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %223 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  %224 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %225 = call i32 @is_uapsd_supported(%struct.ieee802_11_elems* %224)
  %226 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %227 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 8
  %228 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %8, align 8
  %229 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %219
  %233 = load i32, i32* @IEEE80211_BSS_VALID_WMM, align 4
  %234 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %235 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %219
  br label %239

239:                                              ; preds = %238, %202
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %276

242:                                              ; preds = %239
  %243 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %244 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  %248 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %247, align 8
  %249 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %250 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %248, i64 %251
  %253 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %252, align 8
  store %struct.ieee80211_supported_band* %253, %struct.ieee80211_supported_band** %13, align 8
  %254 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %255 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @RX_ENC_HT, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %275, label %259

259:                                              ; preds = %242
  %260 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %261 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @RX_ENC_VHT, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %275, label %265

265:                                              ; preds = %259
  %266 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %13, align 8
  %267 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %270 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  %273 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %274 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %273, i32 0, i32 4
  store i32* %272, i32** %274, align 8
  br label %275

275:                                              ; preds = %265, %259, %242
  br label %276

276:                                              ; preds = %275, %239
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @is_uapsd_supported(%struct.ieee802_11_elems*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
