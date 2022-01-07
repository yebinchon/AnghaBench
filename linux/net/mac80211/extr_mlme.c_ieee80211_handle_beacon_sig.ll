; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_handle_beacon_sig.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_handle_beacon_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32 }
%struct.ieee80211_local = type { i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_event = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IEEE80211_STA_RESET_SIGNAL_AVE = common dso_local global i32 0, align 4
@IEEE80211_SIGNAL_AVE_MIN_COUNT = common dso_local global i32 0, align 4
@RSSI_EVENT = common dso_local global i32 0, align 4
@RSSI_EVENT_HIGH = common dso_local global i32 0, align 4
@RSSI_EVENT_LOW = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_if_managed*, %struct.ieee80211_bss_conf*, %struct.ieee80211_local*, %struct.ieee80211_rx_status*)* @ieee80211_handle_beacon_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_handle_beacon_sig(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_if_managed* %1, %struct.ieee80211_bss_conf* %2, %struct.ieee80211_local* %3, %struct.ieee80211_rx_status* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca %struct.ieee80211_bss_conf*, align 8
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_event, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.ieee80211_if_managed* %1, %struct.ieee80211_if_managed** %7, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %8, align 8
  store %struct.ieee80211_local* %3, %struct.ieee80211_local** %9, align 8
  store %struct.ieee80211_rx_status* %4, %struct.ieee80211_rx_status** %10, align 8
  %22 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %23 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IEEE80211_STA_RESET_SIGNAL_AVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %5
  %29 = load i32, i32* @IEEE80211_STA_RESET_SIGNAL_AVE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %32 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %35, i32 0, i32 6
  %37 = call i32 @ewma_beacon_signal_init(i32* %36)
  %38 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %41 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %42, i32 0, i32 3
  store i32 0, i32* %43, align 4
  br label %49

44:                                               ; preds = %5
  %45 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %46 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %28
  %50 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %50, i32 0, i32 6
  %52 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %53 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @ewma_beacon_signal_add(i32* %51, i32 %55)
  %57 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %58 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %139

64:                                               ; preds = %49
  %65 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IEEE80211_SIGNAL_AVE_MIN_COUNT, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %139

70:                                               ; preds = %64
  %71 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %71, i32 0, i32 6
  %73 = call i32 @ewma_beacon_signal_read(i32* %72)
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  %75 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %76 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 0
  %79 = bitcast %struct.TYPE_5__* %78 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %79, i8 0, i64 4, i1 false)
  %80 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 1
  %81 = load i32, i32* @RSSI_EVENT, align 4
  store i32 %81, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %70
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %90, %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %12, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95, %88
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %101 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @RSSI_EVENT_HIGH, align 4
  %103 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %102, i32* %105, align 4
  %106 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %107 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %108 = call i32 @drv_event_callback(%struct.ieee80211_local* %106, %struct.ieee80211_sub_if_data* %107, %struct.ieee80211_event* %13)
  br label %138

109:                                              ; preds = %95, %70
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %113 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %109
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp sge i64 %118, %121
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %12, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %123, %116
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %129 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @RSSI_EVENT_LOW, align 4
  %131 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %135 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %136 = call i32 @drv_event_callback(%struct.ieee80211_local* %134, %struct.ieee80211_sub_if_data* %135, %struct.ieee80211_event* %13)
  br label %137

137:                                              ; preds = %126, %123, %109
  br label %138

138:                                              ; preds = %137, %98
  br label %139

139:                                              ; preds = %138, %64, %49
  %140 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %141 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %219

144:                                              ; preds = %139
  %145 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %146 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @IEEE80211_SIGNAL_AVE_MIN_COUNT, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %219

150:                                              ; preds = %144
  %151 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %219, label %158

158:                                              ; preds = %150
  %159 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %160 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %159, i32 0, i32 6
  %161 = call i32 @ewma_beacon_signal_read(i32* %160)
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %14, align 4
  %163 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %164 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %15, align 4
  %166 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %167 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %16, align 4
  %169 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %170 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %16, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %194

175:                                              ; preds = %158
  %176 = load i32, i32* %15, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %17, align 4
  %182 = sub nsw i32 %180, %181
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %178, %175
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %187 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %189 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %188, i32 0, i32 0
  %190 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @GFP_KERNEL, align 4
  %193 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_6__* %189, i32 %190, i32 %191, i32 %192)
  br label %218

194:                                              ; preds = %178, %158
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %217

198:                                              ; preds = %194
  %199 = load i32, i32* %15, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %203, %204
  %206 = icmp sgt i32 %202, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %201, %198
  %208 = load i32, i32* %14, align 4
  %209 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %210 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %212 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %211, i32 0, i32 0
  %213 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* @GFP_KERNEL, align 4
  %216 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_6__* %212, i32 %213, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %207, %201, %194
  br label %218

218:                                              ; preds = %217, %184
  br label %219

219:                                              ; preds = %218, %150, %144, %139
  %220 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %221 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %287

224:                                              ; preds = %219
  %225 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %226 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @IEEE80211_SIGNAL_AVE_MIN_COUNT, align 4
  %229 = icmp sge i32 %227, %228
  br i1 %229, label %230, label %287

230:                                              ; preds = %224
  %231 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %232 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %231, i32 0, i32 6
  %233 = call i32 @ewma_beacon_signal_read(i32* %232)
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %18, align 4
  %235 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %236 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %19, align 4
  %238 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %239 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %20, align 4
  %241 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %8, align 8
  %242 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %21, align 4
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %20, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %230
  %248 = load i32, i32* %19, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %19, align 4
  %252 = load i32, i32* %20, align 4
  %253 = icmp sge i32 %251, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %250, %247
  %255 = load i32, i32* %18, align 4
  %256 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %257 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %259 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %258, i32 0, i32 0
  %260 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW, align 4
  %261 = load i32, i32* %18, align 4
  %262 = load i32, i32* @GFP_KERNEL, align 4
  %263 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_6__* %259, i32 %260, i32 %261, i32 %262)
  br label %286

264:                                              ; preds = %250, %230
  %265 = load i32, i32* %18, align 4
  %266 = load i32, i32* %21, align 4
  %267 = icmp sgt i32 %265, %266
  br i1 %267, label %268, label %285

268:                                              ; preds = %264
  %269 = load i32, i32* %19, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %21, align 4
  %274 = icmp sle i32 %272, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %271, %268
  %276 = load i32, i32* %18, align 4
  %277 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %278 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  %279 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %280 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %279, i32 0, i32 0
  %281 = load i32, i32* @NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH, align 4
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* @GFP_KERNEL, align 4
  %284 = call i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_6__* %280, i32 %281, i32 %282, i32 %283)
  br label %285

285:                                              ; preds = %275, %271, %264
  br label %286

286:                                              ; preds = %285, %254
  br label %287

287:                                              ; preds = %286, %224, %219
  ret void
}

declare dso_local i32 @ewma_beacon_signal_init(i32*) #1

declare dso_local i32 @ewma_beacon_signal_add(i32*, i32) #1

declare dso_local i32 @ewma_beacon_signal_read(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @drv_event_callback(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_event*) #1

declare dso_local i32 @ieee80211_cqm_rssi_notify(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
