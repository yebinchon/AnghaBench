; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_change_bss.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_ieee80211_change_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32* }
%struct.net_device = type { i32 }
%struct.bss_parameters = type { i64, i64, i32, i64, i64, i32, i64, i32, i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_10__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__, i64, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_supported_band = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@IEEE80211_SDATA_DONT_BRIDGE_PACKETS = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_CTWINDOW_MASK = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i32 0, align 4
@IEEE80211_P2P_OPPPS_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.bss_parameters*)* @ieee80211_change_bss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_change_bss(%struct.wiphy* %0, %struct.net_device* %1, %struct.bss_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.bss_parameters*, align 8
  %8 = alloca %struct.ieee80211_sub_if_data*, align 8
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.bss_parameters* %2, %struct.bss_parameters** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %11)
  store %struct.ieee80211_sub_if_data* %12, %struct.ieee80211_sub_if_data** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %19 = call i32 @sdata_dereference(i32 %17, %struct.ieee80211_sub_if_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %247

24:                                               ; preds = %3
  %25 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %26 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %25)
  store %struct.ieee80211_supported_band* %26, %struct.ieee80211_supported_band** %9, align 8
  %27 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %28 = icmp ne %struct.ieee80211_supported_band* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %247

32:                                               ; preds = %24
  %33 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %34 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %39 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  %45 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %37, %32
  %49 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %50 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %55 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i64 %56, i64* %60, align 8
  %61 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %62 = load i32, i32* %10, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %53, %48
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  %72 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %79 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %77, %71, %64
  %86 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %87 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %92 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 8
  %98 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %90, %85
  %102 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %103 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %135

106:                                              ; preds = %101
  %107 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 6
  %111 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %112 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %115 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %120 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %123 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 5
  %129 = call i32 @ieee80211_parse_bitrates(i32* %110, i32 %118, i64 %121, i32 %124, i32* %128)
  %130 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %134 = call i32 @ieee80211_check_rate_mask(%struct.ieee80211_sub_if_data* %133)
  br label %135

135:                                              ; preds = %106, %101
  %136 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %137 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp sge i64 %138, 0
  br i1 %139, label %140, label %161

140:                                              ; preds = %135
  %141 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %142 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @IEEE80211_SDATA_DONT_BRIDGE_PACKETS, align 4
  %147 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %148 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %158

151:                                              ; preds = %140
  %152 = load i32, i32* @IEEE80211_SDATA_DONT_BRIDGE_PACKETS, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %155 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %151, %145
  %159 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %160 = call i32 @ieee80211_check_fast_rx_iface(%struct.ieee80211_sub_if_data* %159)
  br label %161

161:                                              ; preds = %158, %135
  %162 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %163 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp sge i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %168 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %171 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 4
  store i64 %169, i64* %173, align 8
  %174 = load i32, i32* @BSS_CHANGED_HT, align 4
  %175 = load i32, i32* %10, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %166, %161
  %178 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %179 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %207

182:                                              ; preds = %177
  %183 = load i32, i32* @IEEE80211_P2P_OPPPS_CTWINDOW_MASK, align 4
  %184 = xor i32 %183, -1
  %185 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %186 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, %184
  store i32 %191, i32* %189, align 4
  %192 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %193 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @IEEE80211_P2P_OPPPS_CTWINDOW_MASK, align 4
  %196 = and i32 %194, %195
  %197 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %198 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %196
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %205 = load i32, i32* %10, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %10, align 4
  br label %207

207:                                              ; preds = %182, %177
  %208 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %209 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %210, 0
  br i1 %211, label %212, label %224

212:                                              ; preds = %207
  %213 = load i32, i32* @IEEE80211_P2P_OPPPS_ENABLE_BIT, align 4
  %214 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %215 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %213
  store i32 %220, i32* %218, align 4
  %221 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %222 = load i32, i32* %10, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* %10, align 4
  br label %243

224:                                              ; preds = %207
  %225 = load %struct.bss_parameters*, %struct.bss_parameters** %7, align 8
  %226 = getelementptr inbounds %struct.bss_parameters, %struct.bss_parameters* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load i32, i32* @IEEE80211_P2P_OPPPS_ENABLE_BIT, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %233 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = and i32 %237, %231
  store i32 %238, i32* %236, align 4
  %239 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %240 = load i32, i32* %10, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %229, %224
  br label %243

243:                                              ; preds = %242, %212
  %244 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %8, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %244, i32 %245)
  store i32 0, i32* %4, align 4
  br label %247

247:                                              ; preds = %243, %29, %21
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @sdata_dereference(i32, %struct.ieee80211_sub_if_data*) #1

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_parse_bitrates(i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @ieee80211_check_rate_mask(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_check_fast_rx_iface(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
