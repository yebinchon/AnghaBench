; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_18__, %struct.TYPE_15__, %struct.ieee80211_local* }
%struct.TYPE_18__ = type { i32, %struct.ieee80211_bss_conf, i64, i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_15__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i64, i32, i64, i64, i64, i32, %struct.TYPE_20__*, %struct.TYPE_13__*, i64 }
%struct.TYPE_20__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.ieee80211_local = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i64, i32 }
%struct.ieee80211_rx_status = type { i64, i32, i32, i32, i32 }
%struct.ieee802_11_elems = type { i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }
%struct.sta_info = type { i32 }
%struct.ieee80211_p2p_noa_attr = type { i64 }

@IEEE80211_DEAUTH_FRAME_LEN = common dso_local global i32 0, align 4
@TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA11_EMA_SUPPORT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@RX_FLAG_NO_SIGNAL_VAL = common dso_local global i32 0, align 4
@IEEE80211_STA_CONNECTION_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"cancelling AP probe due to a received beacon\0A\00", align 1
@care_about_ies = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_VIF_GET_NOA_UPDATE = common dso_local global i32 0, align 4
@IEEE80211_P2P_ATTR_ABSENCE_NOTICE = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i64 0, align 8
@IEEE80211_STA_DISABLE_WMM = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON_INFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to follow AP %pM bandwidth change, disconnect\0A\00", align 1
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_rx_status*)* @ieee80211_rx_mgmt_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_mgmt_beacon(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.ieee80211_if_managed*, align 8
  %10 = alloca %struct.ieee80211_bss_conf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ieee802_11_elems, align 8
  %13 = alloca %struct.ieee80211_local*, align 8
  %14 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %15 = alloca %struct.ieee80211_channel*, align 8
  %16 = alloca %struct.sta_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.ieee80211_p2p_noa_attr, align 8
  %26 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %5, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %8, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store %struct.ieee80211_if_managed* %29, %struct.ieee80211_if_managed** %9, align 8
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %32, %struct.ieee80211_bss_conf** %10, align 8
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 2
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %34, align 8
  store %struct.ieee80211_local* %35, %struct.ieee80211_local** %13, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %19, align 4
  %36 = load i32, i32* @IEEE80211_DEAUTH_FRAME_LEN, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %22, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %23, align 8
  %40 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %41 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %40)
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %49 = bitcast %struct.ieee80211_mgmt* %48 to i32*
  %50 = ptrtoint i32* %47 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %4
  store i32 1, i32* %24, align 4
  br label %657

58:                                               ; preds = %4
  %59 = call i32 (...) @rcu_read_lock()
  %60 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %63)
  store %struct.ieee80211_chanctx_conf* %64, %struct.ieee80211_chanctx_conf** %14, align 8
  %65 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %14, align 8
  %66 = icmp ne %struct.ieee80211_chanctx_conf* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %58
  %68 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %24, align 4
  br label %657

69:                                               ; preds = %58
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %14, align 8
  %74 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %75, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %72, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = call i32 (...) @rcu_read_unlock()
  store i32 1, i32* %24, align 4
  br label %657

82:                                               ; preds = %69
  %83 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %14, align 8
  %84 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %85, align 8
  store %struct.ieee80211_channel* %86, %struct.ieee80211_channel** %15, align 8
  %87 = call i32 (...) @rcu_read_unlock()
  %88 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %89 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %88, i32 0, i32 9
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %89, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %222

92:                                               ; preds = %82
  %93 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %94 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %93, i32 0, i32 9
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %222

99:                                               ; preds = %92
  %100 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %104 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %103, i32 0, i32 9
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %106, align 8
  %108 = call i64 @ieee80211_rx_our_beacon(i32 %102, %struct.TYPE_20__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %222

110:                                              ; preds = %99
  %111 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %112 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %11, align 8
  %118 = sub i64 %116, %117
  %119 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %123 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %122, i32 0, i32 9
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @ieee802_11_parse_elems(i64 %115, i64 %118, i32 0, %struct.ieee802_11_elems* %12, i32 %121, i32* %128)
  %130 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %131 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %134 = call i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data* %130, %struct.ieee80211_mgmt* %131, i64 %132, %struct.ieee80211_rx_status* %133)
  %135 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 12
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %110
  %139 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 12
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %142 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %141, i32 0, i32 10
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %110
  %144 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %145 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %147 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %146, i32 0, i32 9
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %151 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %150, i32 0, i32 3
  %152 = load i32, i32* @TIMING_BEACON_ONLY, align 4
  %153 = call i64 @ieee80211_hw_check(%struct.TYPE_11__* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %143
  %156 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %157 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @le64_to_cpu(i32 %160)
  %162 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %163 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %164, i32 0, i32 4
  store i8* %161, i8** %165, align 8
  %166 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %167 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %170 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %171, i32 0, i32 3
  store i32 %168, i32* %172, align 4
  %173 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 16
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %176 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 8
  br label %179

179:                                              ; preds = %155, %143
  %180 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 19
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = icmp ne %struct.TYPE_12__* %181, null
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 19
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %189 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %183, %179
  %191 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp sge i32 %192, 11
  br i1 %193, label %194, label %205

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 10
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @WLAN_EXT_CAPA11_EMA_SUPPORT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %194
  %203 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %204 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %203, i32 0, i32 0
  store i32 1, i32* %204, align 8
  br label %205

205:                                              ; preds = %202, %194, %190
  %206 = load i32, i32* @jiffies, align 4
  %207 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %208 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %207, i32 0, i32 9
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 2
  store i32 %206, i32* %210, align 8
  %211 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %212 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %211, i32 0, i32 9
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 1
  store i32 1, i32* %214, align 4
  %215 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %216 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %217 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %216, i32 0, i32 9
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @run_again(%struct.ieee80211_sub_if_data* %215, i32 %220)
  store i32 1, i32* %24, align 4
  br label %657

222:                                              ; preds = %99, %92, %82
  %223 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %224 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %223, i32 0, i32 8
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %224, align 8
  %226 = icmp ne %struct.TYPE_20__* %225, null
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %229 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %232 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %231, i32 0, i32 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %232, align 8
  %234 = call i64 @ieee80211_rx_our_beacon(i32 %230, %struct.TYPE_20__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %227, %222
  store i32 1, i32* %24, align 4
  br label %657

237:                                              ; preds = %227
  %238 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %239 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %238, i32 0, i32 8
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  store i32* %242, i32** %21, align 8
  %243 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %244 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @RX_FLAG_NO_SIGNAL_VAL, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %237
  %250 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %251 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %252 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %253 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %254 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %255 = call i32 @ieee80211_handle_beacon_sig(%struct.ieee80211_sub_if_data* %250, %struct.ieee80211_if_managed* %251, %struct.ieee80211_bss_conf* %252, %struct.ieee80211_local* %253, %struct.ieee80211_rx_status* %254)
  br label %256

256:                                              ; preds = %249, %237
  %257 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %258 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @IEEE80211_STA_CONNECTION_POLL, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %256
  %264 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %265 = call i32 @mlme_dbg_ratelimited(%struct.ieee80211_sub_if_data* %264, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %266 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %267 = call i32 @ieee80211_reset_ap_probe(%struct.ieee80211_sub_if_data* %266)
  br label %268

268:                                              ; preds = %263, %256
  %269 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %270 = call i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data* %269)
  %271 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %272 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 3
  %275 = bitcast i32* %274 to i8*
  %276 = call i64 @crc32_be(i32 0, i8* %275, i32 4)
  store i64 %276, i64* %20, align 8
  %277 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %278 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* %7, align 8
  %283 = load i64, i64* %11, align 8
  %284 = sub i64 %282, %283
  %285 = load i32, i32* @care_about_ies, align 4
  %286 = load i64, i64* %20, align 8
  %287 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %288 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load i32*, i32** %21, align 8
  %291 = call i64 @ieee802_11_parse_elems_crc(i64 %281, i64 %284, i32 0, %struct.ieee802_11_elems* %12, i32 %285, i64 %286, i32 %289, i32* %290)
  store i64 %291, i64* %20, align 8
  %292 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %293 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %292, i32 0, i32 3
  %294 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %295 = call i64 @ieee80211_hw_check(%struct.TYPE_11__* %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %359

297:                                              ; preds = %268
  %298 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 18
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 17
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %303 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %302, i32 0, i32 7
  %304 = load i32, i32* %303, align 8
  %305 = call i64 @ieee80211_check_tim(i32 %299, i32 %301, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %359

307:                                              ; preds = %297
  %308 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %309 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp sgt i64 %312, 0
  br i1 %313, label %314, label %339

314:                                              ; preds = %307
  %315 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %316 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %335

323:                                              ; preds = %314
  %324 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %327 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %326, i32 0, i32 3
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = and i32 %330, %325
  store i32 %331, i32* %329, align 8
  %332 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %333 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %334 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %332, i32 %333)
  br label %335

335:                                              ; preds = %323, %314
  %336 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %337 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %338 = call i32 @ieee80211_send_nullfunc(%struct.ieee80211_local* %336, %struct.ieee80211_sub_if_data* %337, i32 0)
  br label %358

339:                                              ; preds = %307
  %340 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %341 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %357, label %344

344:                                              ; preds = %339
  %345 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %346 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %347, i32 0, i32 6
  %349 = load i64, i64* %348, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %344
  %352 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %353 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %352, i32 0, i32 0
  store i32 1, i32* %353, align 8
  %354 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %355 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %356 = call i32 @ieee80211_send_pspoll(%struct.ieee80211_local* %354, %struct.ieee80211_sub_if_data* %355)
  br label %357

357:                                              ; preds = %351, %344, %339
  br label %358

358:                                              ; preds = %357, %335
  br label %359

359:                                              ; preds = %358, %297, %268
  %360 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %361 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %361, i32 0, i32 2
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %373, label %365

365:                                              ; preds = %359
  %366 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %367 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @IEEE80211_VIF_GET_NOA_UPDATE, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %435

373:                                              ; preds = %365, %359
  %374 = bitcast %struct.ieee80211_p2p_noa_attr* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %374, i8 0, i64 8, i1 false)
  %375 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %376 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %377, i32 0, i32 2
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* %7, align 8
  %381 = load i64, i64* %11, align 8
  %382 = sub i64 %380, %381
  %383 = load i32, i32* @IEEE80211_P2P_ATTR_ABSENCE_NOTICE, align 4
  %384 = bitcast %struct.ieee80211_p2p_noa_attr* %25 to i32*
  %385 = call i32 @cfg80211_get_p2p_attr(i64 %379, i64 %382, i32 %383, i32* %384, i32 8)
  store i32 %385, i32* %26, align 4
  %386 = load i32, i32* %26, align 4
  %387 = icmp sge i32 %386, 2
  br i1 %387, label %388, label %413

388:                                              ; preds = %373
  %389 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %390 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %25, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %393, %395
  br i1 %396, label %397, label %412

397:                                              ; preds = %388
  %398 = getelementptr inbounds %struct.ieee80211_p2p_noa_attr, %struct.ieee80211_p2p_noa_attr* %25, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %401 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %402, i32 0, i32 2
  store i64 %399, i64* %403, align 8
  %404 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %405 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %404, i32 0, i32 5
  %406 = call i32 @memcpy(i32* %405, %struct.ieee80211_p2p_noa_attr* %25, i32 8)
  %407 = load i64, i64* @BSS_CHANGED_P2P_PS, align 8
  %408 = load i64, i64* %17, align 8
  %409 = or i64 %408, %407
  store i64 %409, i64* %17, align 8
  %410 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %411 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %410, i32 0, i32 3
  store i32 0, i32* %411, align 8
  br label %412

412:                                              ; preds = %397, %388
  br label %434

413:                                              ; preds = %373
  %414 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %415 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %416, i32 0, i32 2
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, -1
  br i1 %419, label %420, label %433

420:                                              ; preds = %413
  %421 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %422 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %423, i32 0, i32 2
  store i64 -1, i64* %424, align 8
  %425 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %426 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %425, i32 0, i32 5
  %427 = call i32 @memset(i32* %426, i32 0, i32 4)
  %428 = load i64, i64* @BSS_CHANGED_P2P_PS, align 8
  %429 = load i64, i64* %17, align 8
  %430 = or i64 %429, %428
  store i64 %430, i64* %17, align 8
  %431 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %432 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %431, i32 0, i32 3
  store i32 0, i32* %432, align 8
  br label %433

433:                                              ; preds = %420, %413
  br label %434

434:                                              ; preds = %433, %412
  br label %435

435:                                              ; preds = %434, %365
  %436 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %437 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %436, i32 0, i32 5
  %438 = load i64, i64* %437, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %443

440:                                              ; preds = %435
  %441 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %442 = call i32 @ieee80211_chswitch_post_beacon(%struct.ieee80211_sub_if_data* %441)
  br label %443

443:                                              ; preds = %440, %435
  %444 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %445 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %444, i32 0, i32 3
  %446 = load i32, i32* @TIMING_BEACON_ONLY, align 4
  %447 = call i64 @ieee80211_hw_check(%struct.TYPE_11__* %445, i32 %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %473

449:                                              ; preds = %443
  %450 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %451 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = call i8* @le64_to_cpu(i32 %454)
  %456 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %457 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %458, i32 0, i32 4
  store i8* %455, i8** %459, align 8
  %460 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %461 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %460, i32 0, i32 3
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %464 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %464, i32 0, i32 1
  %466 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %465, i32 0, i32 3
  store i32 %462, i32* %466, align 4
  %467 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 16
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %470 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %471, i32 0, i32 2
  store i32 %468, i32* %472, align 8
  br label %473

473:                                              ; preds = %449, %443
  %474 = load i64, i64* %20, align 8
  %475 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %476 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %475, i32 0, i32 4
  %477 = load i64, i64* %476, align 8
  %478 = icmp eq i64 %474, %477
  br i1 %478, label %479, label %485

479:                                              ; preds = %473
  %480 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %481 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 8
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %485

484:                                              ; preds = %479
  store i32 1, i32* %24, align 4
  br label %657

485:                                              ; preds = %479, %473
  %486 = load i64, i64* %20, align 8
  %487 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %488 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %487, i32 0, i32 4
  store i64 %486, i64* %488, align 8
  %489 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %490 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %489, i32 0, i32 3
  store i32 1, i32* %490, align 8
  %491 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %492 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %493 = load i64, i64* %7, align 8
  %494 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %495 = call i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data* %491, %struct.ieee80211_mgmt* %492, i64 %493, %struct.ieee80211_rx_status* %494)
  %496 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %497 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %498 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %497, i32 0, i32 4
  %499 = load i32, i32* %498, align 4
  %500 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %501 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %500, i32 0, i32 3
  %502 = load i32, i32* %501, align 8
  %503 = call i32 @ieee80211_sta_process_chanswitch(%struct.ieee80211_sub_if_data* %496, i32 %499, i32 %502, %struct.ieee802_11_elems* %12, i32 1)
  %504 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %505 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 4
  %507 = load i32, i32* @IEEE80211_STA_DISABLE_WMM, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %525, label %510

510:                                              ; preds = %485
  %511 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %512 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %513 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 15
  %514 = load i32, i32* %513, align 8
  %515 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 14
  %516 = load i32, i32* %515, align 4
  %517 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 13
  %518 = load i32, i32* %517, align 8
  %519 = call i64 @ieee80211_sta_wmm_params(%struct.ieee80211_local* %511, %struct.ieee80211_sub_if_data* %512, i32 %514, i32 %516, i32 %518)
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %525

521:                                              ; preds = %510
  %522 = load i64, i64* @BSS_CHANGED_QOS, align 8
  %523 = load i64, i64* %17, align 8
  %524 = or i64 %523, %522
  store i64 %524, i64* %17, align 8
  br label %525

525:                                              ; preds = %521, %510, %485
  %526 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %527 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %556, label %530

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 12
  %532 = load i64, i64* %531, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %530
  br label %536

535:                                              ; preds = %530
  br label %536

536:                                              ; preds = %535, %534
  %537 = phi i64 [ %532, %534 ], [ 1, %535 ]
  %538 = trunc i64 %537 to i32
  %539 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %10, align 8
  %540 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %539, i32 0, i32 1
  store i32 %538, i32* %540, align 4
  %541 = load i64, i64* @BSS_CHANGED_BEACON_INFO, align 8
  %542 = load i64, i64* %17, align 8
  %543 = or i64 %542, %541
  store i64 %543, i64* %17, align 8
  %544 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %9, align 8
  %545 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %544, i32 0, i32 0
  store i32 1, i32* %545, align 8
  %546 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %547 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %546, i32 0, i32 2
  %548 = call i32 @mutex_lock(i32* %547)
  %549 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %550 = call i32 @ieee80211_recalc_ps(%struct.ieee80211_local* %549)
  %551 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %552 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %551, i32 0, i32 2
  %553 = call i32 @mutex_unlock(i32* %552)
  %554 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %555 = call i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data* %554)
  br label %556

556:                                              ; preds = %536, %525
  %557 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 11
  %558 = load i32*, i32** %557, align 8
  %559 = icmp ne i32* %558, null
  br i1 %559, label %560, label %565

560:                                              ; preds = %556
  store i32 1, i32* %18, align 4
  %561 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 11
  %562 = load i32*, i32** %561, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 0
  %564 = load i32, i32* %563, align 4
  store i32 %564, i32* %19, align 4
  br label %566

565:                                              ; preds = %556
  store i32 0, i32* %18, align 4
  br label %566

566:                                              ; preds = %565, %560
  %567 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %568 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %569 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 8
  %573 = call i32 @le16_to_cpu(i32 %572)
  %574 = load i32, i32* %18, align 4
  %575 = load i32, i32* %19, align 4
  %576 = call i64 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data* %567, i32 %573, i32 %574, i32 %575)
  %577 = load i64, i64* %17, align 8
  %578 = or i64 %577, %576
  store i64 %578, i64* %17, align 8
  %579 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %580 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %579, i32 0, i32 1
  %581 = call i32 @mutex_lock(i32* %580)
  %582 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %583 = load i32*, i32** %21, align 8
  %584 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %582, i32* %583)
  store %struct.sta_info* %584, %struct.sta_info** %16, align 8
  %585 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %586 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %587 = call i64 @ieee80211_recalc_twt_req(%struct.ieee80211_sub_if_data* %585, %struct.sta_info* %586, %struct.ieee802_11_elems* %12)
  %588 = load i64, i64* %17, align 8
  %589 = or i64 %588, %587
  store i64 %589, i64* %17, align 8
  %590 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %591 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %592 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 10
  %593 = load i32, i32* %592, align 4
  %594 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 9
  %595 = load i32, i32* %594, align 8
  %596 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 8
  %597 = load i32, i32* %596, align 4
  %598 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 7
  %599 = load i32, i32* %598, align 8
  %600 = load i32*, i32** %21, align 8
  %601 = call i64 @ieee80211_config_bw(%struct.ieee80211_sub_if_data* %590, %struct.sta_info* %591, i32 %593, i32 %595, i32 %597, i32 %599, i32* %600, i64* %17)
  %602 = icmp ne i64 %601, 0
  br i1 %602, label %603, label %619

603:                                              ; preds = %566
  %604 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %605 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %604, i32 0, i32 1
  %606 = call i32 @mutex_unlock(i32* %605)
  %607 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %608 = load i32*, i32** %21, align 8
  %609 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %607, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32* %608)
  %610 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %611 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %612 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %613 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %610, i32 %611, i32 %612, i32 1, i32* %39)
  %614 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %615 = mul nuw i64 4, %37
  %616 = trunc i64 %615 to i32
  %617 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %618 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %614, i32* %39, i32 %616, i32 1, i32 %617)
  store i32 1, i32* %24, align 4
  br label %657

619:                                              ; preds = %566
  %620 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %621 = icmp ne %struct.sta_info* %620, null
  br i1 %621, label %622, label %636

622:                                              ; preds = %619
  %623 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 6
  %624 = load i32*, i32** %623, align 8
  %625 = icmp ne i32* %624, null
  br i1 %625, label %626, label %636

626:                                              ; preds = %622
  %627 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %628 = load %struct.sta_info*, %struct.sta_info** %16, align 8
  %629 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 6
  %630 = load i32*, i32** %629, align 8
  %631 = load i32, i32* %630, align 4
  %632 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %633 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 4
  %635 = call i32 @ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data* %627, %struct.sta_info* %628, i32 %631, i32 %634)
  br label %636

636:                                              ; preds = %626, %622, %619
  %637 = load %struct.ieee80211_local*, %struct.ieee80211_local** %13, align 8
  %638 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %637, i32 0, i32 1
  %639 = call i32 @mutex_unlock(i32* %638)
  %640 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %641 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %642 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %643 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 5
  %644 = load i32, i32* %643, align 4
  %645 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 4
  %646 = load i32, i32* %645, align 8
  %647 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 3
  %648 = load i32, i32* %647, align 4
  %649 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 2
  %650 = load i32, i32* %649, align 8
  %651 = call i64 @ieee80211_handle_pwr_constr(%struct.ieee80211_sub_if_data* %640, %struct.ieee80211_channel* %641, %struct.ieee80211_mgmt* %642, i32 %644, i32 %646, i32 %648, i32 %650)
  %652 = load i64, i64* %17, align 8
  %653 = or i64 %652, %651
  store i64 %653, i64* %17, align 8
  %654 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %655 = load i64, i64* %17, align 8
  %656 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %654, i64 %655)
  store i32 0, i32* %24, align 4
  br label %657

657:                                              ; preds = %636, %603, %484, %236, %205, %80, %67, %57
  %658 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %658)
  %659 = load i32, i32* %24, align 4
  switch i32 %659, label %661 [
    i32 0, label %660
    i32 1, label %660
  ]

660:                                              ; preds = %657, %657
  ret void

661:                                              ; preds = %657
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i64 @ieee80211_rx_our_beacon(i32, %struct.TYPE_20__*) #2

declare dso_local i32 @ieee802_11_parse_elems(i64, i64, i32, %struct.ieee802_11_elems*, i32, i32*) #2

declare dso_local i32 @ieee80211_rx_bss_info(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_rx_status*) #2

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_11__*, i32) #2

declare dso_local i8* @le64_to_cpu(i32) #2

declare dso_local i32 @run_again(%struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @ieee80211_handle_beacon_sig(%struct.ieee80211_sub_if_data*, %struct.ieee80211_if_managed*, %struct.ieee80211_bss_conf*, %struct.ieee80211_local*, %struct.ieee80211_rx_status*) #2

declare dso_local i32 @mlme_dbg_ratelimited(%struct.ieee80211_sub_if_data*, i8*) #2

declare dso_local i32 @ieee80211_reset_ap_probe(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data*) #2

declare dso_local i64 @crc32_be(i32, i8*, i32) #2

declare dso_local i64 @ieee802_11_parse_elems_crc(i64, i64, i32, %struct.ieee802_11_elems*, i32, i64, i32, i32*) #2

declare dso_local i64 @ieee80211_check_tim(i32, i32, i32) #2

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #2

declare dso_local i32 @ieee80211_send_nullfunc(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @ieee80211_send_pspoll(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @cfg80211_get_p2p_attr(i64, i64, i32, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, %struct.ieee80211_p2p_noa_attr*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ieee80211_chswitch_post_beacon(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @ieee80211_sta_process_chanswitch(%struct.ieee80211_sub_if_data*, i32, i32, %struct.ieee802_11_elems*, i32) #2

declare dso_local i64 @ieee80211_sta_wmm_params(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ieee80211_recalc_ps(%struct.ieee80211_local*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data*) #2

declare dso_local i64 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data*, i32, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #2

declare dso_local i64 @ieee80211_recalc_twt_req(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee802_11_elems*) #2

declare dso_local i64 @ieee80211_config_bw(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32, i32, i32, i32*, i64*) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32*) #2

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #2

declare dso_local i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data*, i32*, i32, i32, i32) #2

declare dso_local i32 @ieee80211_vht_handle_opmode(%struct.ieee80211_sub_if_data*, %struct.sta_info*, i32, i32) #2

declare dso_local i64 @ieee80211_handle_pwr_constr(%struct.ieee80211_sub_if_data*, %struct.ieee80211_channel*, %struct.ieee80211_mgmt*, i32, i32, i32, i32) #2

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i64) #2

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
