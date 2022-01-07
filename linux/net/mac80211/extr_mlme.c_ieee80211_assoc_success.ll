; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_assoc_success.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_assoc_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.ieee80211_local*, %struct.TYPE_15__, %struct.TYPE_17__ }
%struct.ieee80211_local = type { i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_15__ = type { %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8* }
%struct.TYPE_17__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, i32, i32, i64, %struct.ieee80211_mgd_assoc_data* }
%struct.ieee80211_mgd_assoc_data = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.cfg80211_bss = type { i32, i32, %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32*, i32, i32 }
%struct.ieee80211_supported_band = type { i32 }
%struct.sta_info = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.ieee802_11_elems = type { i32*, i32, i32*, %struct.TYPE_14__*, i32, i32, i64, i32, %struct.TYPE_16__*, i32*, i32, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.cfg80211_bss_ies = type { i64, i32* }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_MAX_AID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"invalid AID value %d (out of range), turn off PS\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"no SuppRates element in AssocResp\0A\00", align 1
@WLAN_EXT_CAPA5_TDLS_CH_SW_PROHIBITED = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_HT = common dso_local global i32 0, align 4
@IEEE80211_STA_DISABLE_VHT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"AP bug: WMM param missing from AssocResp\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"AP bug: HT capability missing from AssocResp\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"AP bug: HT operation missing from AssocResp\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"AP bug: VHT capa missing from AssocResp\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"AP bug: VHT operation missing from AssocResp\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"HT AP is missing WMM params or HT capability/operation\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"VHT AP is missing VHT capability/operation\0A\00", align 1
@IEEE80211_STA_DISABLE_HE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"HE AP is missing HE capability/operation\0A\00", align 1
@IEEE80211_HE_OPERATION_BSS_COLOR_MASK = common dso_local global i32 0, align 4
@IEEE80211_HE_OPERATION_DFLT_PE_DURATION_MASK = common dso_local global i32 0, align 4
@IEEE80211_HE_OPERATION_RTS_THRESHOLD_MASK = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP2_32BIT_BA_BITMAP = common dso_local global i32 0, align 4
@IEEE80211_HE_MAC_CAP2_ACK_EN = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_RX_NSS_MASK = common dso_local global i32 0, align 4
@IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_STA_MFP_ENABLED = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i64 0, align 8
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@IEEE80211_STA_CONTROL_PORT = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"failed to move station %pM to desired state\0A\00", align 1
@IEEE80211_STA_DISABLE_WMM = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@WLAN_IDLE_OPTIONS_PROTECTED_KEEP_ALIVE = common dso_local global i32 0, align 4
@BSS_CHANGED_KEEP_ALIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*, %struct.ieee80211_mgmt*, i64)* @ieee80211_assoc_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_assoc_success(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1, %struct.ieee80211_mgmt* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.cfg80211_bss*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_if_managed*, align 8
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.ieee80211_supported_band*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee802_11_elems, align 8
  %18 = alloca %struct.ieee80211_bss_conf*, align 8
  %19 = alloca %struct.cfg80211_bss_ies*, align 8
  %20 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.cfg80211_bss_ies*, align 8
  %25 = alloca %struct.ieee802_11_elems, align 8
  %26 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %7, align 8
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %8, align 8
  store i64 %3, i64* %9, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store %struct.ieee80211_if_managed* %29, %struct.ieee80211_if_managed** %10, align 8
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %30, i32 0, i32 0
  %32 = load %struct.ieee80211_local*, %struct.ieee80211_local** %31, align 8
  store %struct.ieee80211_local* %32, %struct.ieee80211_local** %11, align 8
  %33 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  store %struct.ieee80211_bss_conf* %35, %struct.ieee80211_bss_conf** %18, align 8
  store %struct.cfg80211_bss_ies* null, %struct.cfg80211_bss_ies** %19, align 8
  %36 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %37 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %36, i32 0, i32 7
  %38 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %37, align 8
  store %struct.ieee80211_mgd_assoc_data* %38, %struct.ieee80211_mgd_assoc_data** %20, align 8
  store i32 0, i32* %21, align 4
  %39 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le16_to_cpu(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i8* @le16_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = and i32 %53, 2047
  store i32 %54, i32* %16, align 4
  %55 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %56 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* %16, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @IEEE80211_MAX_AID, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59, %4
  %64 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %65 = load i32, i32* %16, align 4
  %66 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %64, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 0, i32* %16, align 4
  %67 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %68 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %71 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  store i32* %74, i32** %14, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %79 = bitcast %struct.ieee80211_mgmt* %78 to i32*
  %80 = ptrtoint i32* %77 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = sub i64 %76, %83
  %85 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %20, align 8
  %89 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ieee802_11_parse_elems(i32* %75, i64 %84, i32 0, %struct.ieee802_11_elems* %17, i32 %87, i32 %92)
  %94 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 16
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %69
  %98 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %99 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %787

100:                                              ; preds = %69
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %103 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %109, 5
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @WLAN_EXT_CAPA5_TDLS_CH_SW_PROHIBITED, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %111, %107, %100
  %120 = phi i1 [ false, %107 ], [ false, %100 ], [ %118, %111 ]
  %121 = zext i1 %120 to i32
  %122 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %123 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %20, align 8
  %125 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %119
  %129 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %162

132:                                              ; preds = %128, %119
  %133 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %134 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 13
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 15
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %143, %132
  %148 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %149 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %302, label %154

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 12
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 14
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %302, label %162

162:                                              ; preds = %158, %154, %143, %139, %128
  %163 = call i32 (...) @rcu_read_lock()
  %164 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %165 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %166)
  store %struct.cfg80211_bss_ies* %167, %struct.cfg80211_bss_ies** %24, align 8
  %168 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %24, align 8
  %169 = icmp ne %struct.cfg80211_bss_ies* %168, null
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %24, align 8
  %172 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %24, align 8
  %173 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 16, %174
  %176 = load i32, i32* @GFP_ATOMIC, align 4
  %177 = call %struct.cfg80211_bss_ies* @kmemdup(%struct.cfg80211_bss_ies* %171, i64 %175, i32 %176)
  store %struct.cfg80211_bss_ies* %177, %struct.cfg80211_bss_ies** %19, align 8
  br label %178

178:                                              ; preds = %170, %162
  %179 = call i32 (...) @rcu_read_unlock()
  %180 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %19, align 8
  %181 = icmp ne %struct.cfg80211_bss_ies* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  store i32 0, i32* %5, align 4
  br label %787

183:                                              ; preds = %178
  %184 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %19, align 8
  %185 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %19, align 8
  %188 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %191 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %20, align 8
  %194 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %193, i32 0, i32 1
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ieee802_11_parse_elems(i32* %186, i64 %189, i32 0, %struct.ieee802_11_elems* %25, i32 %192, i32 %197)
  %199 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %20, align 8
  %200 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %183
  %204 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %217, label %207

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 6
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 6
  store i64 %213, i64* %214, align 8
  %215 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %216 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %215, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %217

217:                                              ; preds = %211, %207, %203, %183
  %218 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 13
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %238, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 13
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %221
  %226 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %227 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 13
  %234 = load i64, i64* %233, align 8
  %235 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 13
  store i64 %234, i64* %235, align 8
  %236 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %237 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %236, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %238

238:                                              ; preds = %232, %225, %221, %217
  %239 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 15
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %259, label %242

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 15
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %259

246:                                              ; preds = %242
  %247 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %248 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 15
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 15
  store i64 %255, i64* %256, align 8
  %257 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %258 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %257, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %259

259:                                              ; preds = %253, %246, %242, %238
  %260 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 12
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %280, label %263

263:                                              ; preds = %259
  %264 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 12
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %263
  %268 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %269 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 12
  %276 = load i64, i64* %275, align 8
  %277 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 12
  store i64 %276, i64* %277, align 8
  %278 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %279 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %278, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %280

280:                                              ; preds = %274, %267, %263, %259
  %281 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 14
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %301, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 14
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %301

288:                                              ; preds = %284
  %289 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %290 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %301, label %295

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %25, i32 0, i32 14
  %297 = load i64, i64* %296, align 8
  %298 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 14
  store i64 %297, i64* %298, align 8
  %299 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %300 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %299, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %301

301:                                              ; preds = %295, %288, %284, %280
  br label %302

302:                                              ; preds = %301, %158, %147
  %303 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %304 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %324, label %309

309:                                              ; preds = %302
  %310 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 6
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 13
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %313
  %318 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 15
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %317, %313, %309
  %322 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %323 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %322, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  br label %783

324:                                              ; preds = %317, %302
  %325 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %326 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %342, label %331

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 12
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 14
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %335, %331
  %340 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %341 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %340, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  br label %783

342:                                              ; preds = %335, %324
  %343 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %344 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %343, i32 0, i32 0
  %345 = load %struct.ieee80211_local*, %struct.ieee80211_local** %344, align 8
  %346 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %345, i32 0, i32 0
  %347 = call i32 @mutex_lock(i32* %346)
  %348 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %349 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %350 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 8
  %352 = call %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data* %348, i32 %351)
  store %struct.sta_info* %352, %struct.sta_info** %13, align 8
  %353 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %354 = icmp ne %struct.sta_info* %353, null
  %355 = xor i1 %354, true
  %356 = zext i1 %355 to i32
  %357 = call i64 @WARN_ON(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %342
  %360 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %361 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %360, i32 0, i32 0
  %362 = load %struct.ieee80211_local*, %struct.ieee80211_local** %361, align 8
  %363 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %362, i32 0, i32 0
  %364 = call i32 @mutex_unlock(i32* %363)
  store i32 0, i32* %23, align 4
  br label %783

365:                                              ; preds = %342
  %366 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %367 = call %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data* %366)
  store %struct.ieee80211_supported_band* %367, %struct.ieee80211_supported_band** %12, align 8
  %368 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %369 = icmp ne %struct.ieee80211_supported_band* %368, null
  br i1 %369, label %376, label %370

370:                                              ; preds = %365
  %371 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %372 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %371, i32 0, i32 0
  %373 = load %struct.ieee80211_local*, %struct.ieee80211_local** %372, align 8
  %374 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %373, i32 0, i32 0
  %375 = call i32 @mutex_unlock(i32* %374)
  store i32 0, i32* %23, align 4
  br label %783

376:                                              ; preds = %365
  %377 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %378 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %399, label %383

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 11
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %388, align 8
  %390 = icmp ne %struct.TYPE_16__* %389, null
  br i1 %390, label %399, label %391

391:                                              ; preds = %387, %383
  %392 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %393 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %392, i32 0, i32 0
  %394 = load %struct.ieee80211_local*, %struct.ieee80211_local** %393, align 8
  %395 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %394, i32 0, i32 0
  %396 = call i32 @mutex_unlock(i32* %395)
  %397 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %398 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %397, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  br label %783

399:                                              ; preds = %387, %376
  %400 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 13
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %417

403:                                              ; preds = %399
  %404 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %405 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @IEEE80211_STA_DISABLE_HT, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %417, label %410

410:                                              ; preds = %403
  %411 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %412 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %413 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 13
  %414 = load i64, i64* %413, align 8
  %415 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %416 = call i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data* %411, %struct.ieee80211_supported_band* %412, i64 %414, %struct.sta_info* %415)
  br label %417

417:                                              ; preds = %410, %403, %399
  %418 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 12
  %419 = load i64, i64* %418, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %435

421:                                              ; preds = %417
  %422 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %423 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @IEEE80211_STA_DISABLE_VHT, align 4
  %426 = and i32 %424, %425
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %435, label %428

428:                                              ; preds = %421
  %429 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %430 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %431 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 12
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %434 = call i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data* %429, %struct.ieee80211_supported_band* %430, i64 %432, %struct.sta_info* %433)
  br label %435

435:                                              ; preds = %428, %421, %417
  %436 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 8
  %437 = load %struct.TYPE_16__*, %struct.TYPE_16__** %436, align 8
  %438 = icmp ne %struct.TYPE_16__* %437, null
  br i1 %438, label %439, label %471

439:                                              ; preds = %435
  %440 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %441 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @IEEE80211_STA_DISABLE_HE, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %471, label %446

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 11
  %448 = load i64, i64* %447, align 8
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %471

450:                                              ; preds = %446
  %451 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %452 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %12, align 8
  %453 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 11
  %454 = load i64, i64* %453, align 8
  %455 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 10
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %458 = call i32 @ieee80211_he_cap_ie_to_sta_he_cap(%struct.ieee80211_sub_if_data* %451, %struct.ieee80211_supported_band* %452, i64 %454, i32 %456, %struct.sta_info* %457)
  %459 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %460 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %460, i32 0, i32 4
  %462 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %465 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %464, i32 0, i32 0
  store i32 %463, i32* %465, align 8
  %466 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %467 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %468 = call i32 @ieee80211_recalc_twt_req(%struct.ieee80211_sub_if_data* %466, %struct.sta_info* %467, %struct.ieee802_11_elems* %17)
  %469 = load i32, i32* %21, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %21, align 4
  br label %476

471:                                              ; preds = %446, %439, %435
  %472 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %473 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %472, i32 0, i32 0
  store i32 0, i32* %473, align 8
  %474 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %475 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %474, i32 0, i32 1
  store i32 0, i32* %475, align 4
  br label %476

476:                                              ; preds = %471, %450
  %477 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %478 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %559

481:                                              ; preds = %476
  %482 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 8
  %483 = load %struct.TYPE_16__*, %struct.TYPE_16__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @IEEE80211_HE_OPERATION_BSS_COLOR_MASK, align 4
  %487 = call i8* @le32_get_bits(i32 %485, i32 %486)
  %488 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %489 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %488, i32 0, i32 16
  store i8* %487, i8** %489, align 8
  %490 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 8
  %491 = load %struct.TYPE_16__*, %struct.TYPE_16__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* @IEEE80211_HE_OPERATION_DFLT_PE_DURATION_MASK, align 4
  %495 = call i8* @le32_get_bits(i32 %493, i32 %494)
  %496 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %497 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %496, i32 0, i32 15
  store i8* %495, i8** %497, align 8
  %498 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 8
  %499 = load %struct.TYPE_16__*, %struct.TYPE_16__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @IEEE80211_HE_OPERATION_RTS_THRESHOLD_MASK, align 4
  %503 = call i8* @le32_get_bits(i32 %501, i32 %502)
  %504 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %505 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %504, i32 0, i32 14
  store i8* %503, i8** %505, align 8
  %506 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %507 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %507, i32 0, i32 4
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %509, i32 0, i32 0
  %511 = load i32*, i32** %510, align 8
  %512 = getelementptr inbounds i32, i32* %511, i64 2
  %513 = load i32, i32* %512, align 4
  %514 = load i32, i32* @IEEE80211_HE_MAC_CAP2_32BIT_BA_BITMAP, align 4
  %515 = and i32 %513, %514
  %516 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %517 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %516, i32 0, i32 2
  store i32 %515, i32* %517, align 8
  %518 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %519 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %519, i32 0, i32 4
  %521 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %521, i32 0, i32 0
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 2
  %525 = load i32, i32* %524, align 4
  %526 = load i32, i32* @IEEE80211_HE_MAC_CAP2_ACK_EN, align 4
  %527 = and i32 %525, %526
  %528 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %529 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %528, i32 0, i32 3
  store i32 %527, i32* %529, align 4
  %530 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 9
  %531 = load i32*, i32** %530, align 8
  %532 = icmp ne i32* %531, null
  %533 = xor i1 %532, true
  %534 = xor i1 %533, true
  %535 = zext i1 %534 to i32
  %536 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %537 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %536, i32 0, i32 4
  store i32 %535, i32* %537, align 8
  %538 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 9
  %539 = load i32*, i32** %538, align 8
  %540 = icmp ne i32* %539, null
  br i1 %540, label %541, label %548

541:                                              ; preds = %481
  %542 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 9
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 0
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %547 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %546, i32 0, i32 13
  store i32 %545, i32* %547, align 4
  br label %548

548:                                              ; preds = %541, %481
  %549 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %550 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %549, i32 0, i32 1
  %551 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 8
  %552 = load %struct.TYPE_16__*, %struct.TYPE_16__** %551, align 8
  %553 = call i32 @ieee80211_he_op_ie_to_bss_conf(%struct.TYPE_15__* %550, %struct.TYPE_16__* %552)
  %554 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %555 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 7
  %557 = load i32, i32* %556, align 8
  %558 = call i32 @ieee80211_he_spr_ie_to_bss_conf(%struct.TYPE_15__* %555, i32 %557)
  br label %559

559:                                              ; preds = %548, %476
  %560 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %561 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %560, i32 0, i32 2
  %562 = load %struct.TYPE_23__*, %struct.TYPE_23__** %561, align 8
  %563 = icmp ne %struct.TYPE_23__* %562, null
  br i1 %563, label %564, label %586

564:                                              ; preds = %559
  %565 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %566 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %565, i32 0, i32 5
  store i32 1, i32* %566, align 4
  %567 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %568 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %567, i32 0, i32 12
  %569 = load i32, i32* %568, align 8
  %570 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %571 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %570, i32 0, i32 2
  %572 = load %struct.TYPE_23__*, %struct.TYPE_23__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = call i32 @ether_addr_copy(i32 %569, i32 %574)
  %576 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %577 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %576, i32 0, i32 1
  %578 = load i32, i32* %577, align 4
  %579 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %580 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %579, i32 0, i32 11
  store i32 %578, i32* %580, align 4
  %581 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %582 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %585 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %584, i32 0, i32 10
  store i32 %583, i32* %585, align 8
  br label %586

586:                                              ; preds = %564, %559
  %587 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 2
  %588 = load i32*, i32** %587, align 8
  %589 = icmp ne i32* %588, null
  br i1 %589, label %590, label %612

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 2
  %592 = load i32*, i32** %591, align 8
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_TYPE_BF, align 4
  %595 = and i32 %593, %594
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %612, label %597

597:                                              ; preds = %590
  %598 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 2
  %599 = load i32*, i32** %598, align 8
  %600 = load i32, i32* %599, align 4
  %601 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_MASK, align 4
  %602 = and i32 %600, %601
  store i32 %602, i32* %26, align 4
  %603 = load i32, i32* @IEEE80211_OPMODE_NOTIF_RX_NSS_SHIFT, align 4
  %604 = load i32, i32* %26, align 4
  %605 = ashr i32 %604, %603
  store i32 %605, i32* %26, align 4
  %606 = load i32, i32* %26, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %26, align 4
  %608 = load i32, i32* %26, align 4
  %609 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %610 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %610, i32 0, i32 0
  store i32 %608, i32* %611, align 8
  br label %612

612:                                              ; preds = %597, %590, %586
  %613 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %614 = call i32 @rate_control_rate_init(%struct.sta_info* %613)
  %615 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %616 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %615, i32 0, i32 3
  %617 = load i32, i32* %616, align 4
  %618 = load i32, i32* @IEEE80211_STA_MFP_ENABLED, align 4
  %619 = and i32 %617, %618
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %628

621:                                              ; preds = %612
  %622 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %623 = load i32, i32* @WLAN_STA_MFP, align 4
  %624 = call i32 @set_sta_flag(%struct.sta_info* %622, i32 %623)
  %625 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %626 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %626, i32 0, i32 1
  store i32 1, i32* %627, align 4
  br label %632

628:                                              ; preds = %612
  %629 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %630 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %630, i32 0, i32 1
  store i32 0, i32* %631, align 4
  br label %632

632:                                              ; preds = %628, %621
  %633 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 6
  %634 = load i64, i64* %633, align 8
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %643

636:                                              ; preds = %632
  %637 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %638 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %638, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = load i64, i64* @IEEE80211_NUM_ACS, align 8
  %642 = icmp sge i64 %640, %641
  br label %643

643:                                              ; preds = %636, %632
  %644 = phi i1 [ false, %632 ], [ %642, %636 ]
  %645 = zext i1 %644 to i32
  %646 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %647 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %647, i32 0, i32 2
  store i32 %645, i32* %648, align 8
  %649 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %650 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %651 = call i32 @sta_info_move_state(%struct.sta_info* %649, i32 %650)
  store i32 %651, i32* %22, align 4
  %652 = load i32, i32* %22, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %665, label %654

654:                                              ; preds = %643
  %655 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %656 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %655, i32 0, i32 3
  %657 = load i32, i32* %656, align 4
  %658 = load i32, i32* @IEEE80211_STA_CONTROL_PORT, align 4
  %659 = and i32 %657, %658
  %660 = icmp ne i32 %659, 0
  br i1 %660, label %665, label %661

661:                                              ; preds = %654
  %662 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %663 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %664 = call i32 @sta_info_move_state(%struct.sta_info* %662, i32 %663)
  store i32 %664, i32* %22, align 4
  br label %665

665:                                              ; preds = %661, %654, %643
  %666 = load i32, i32* %22, align 4
  %667 = icmp ne i32 %666, 0
  br i1 %667, label %668, label %683

668:                                              ; preds = %665
  %669 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %670 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %671 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %671, i32 0, i32 3
  %673 = load i32, i32* %672, align 4
  %674 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %669, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %673)
  %675 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %676 = call i32 @__sta_info_destroy(%struct.sta_info* %675)
  %677 = call i64 @WARN_ON(i32 %676)
  %678 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %679 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %678, i32 0, i32 0
  %680 = load %struct.ieee80211_local*, %struct.ieee80211_local** %679, align 8
  %681 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %680, i32 0, i32 0
  %682 = call i32 @mutex_unlock(i32* %681)
  store i32 0, i32* %23, align 4
  br label %783

683:                                              ; preds = %665
  %684 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %685 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %684, i32 0, i32 0
  %686 = load %struct.ieee80211_local*, %struct.ieee80211_local** %685, align 8
  %687 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %686, i32 0, i32 0
  %688 = call i32 @mutex_unlock(i32* %687)
  %689 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %690 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %689, i32 0, i32 4
  store i32 -1, i32* %690, align 8
  %691 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %692 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %691, i32 0, i32 5
  store i32 -1, i32* %692, align 4
  %693 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %694 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %693, i32 0, i32 3
  %695 = load i32, i32* %694, align 4
  %696 = load i32, i32* @IEEE80211_STA_DISABLE_WMM, align 4
  %697 = and i32 %695, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %702

699:                                              ; preds = %683
  %700 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %701 = call i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data* %700, i32 0, i32 0)
  br label %722

702:                                              ; preds = %683
  %703 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %704 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %705 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 6
  %706 = load i64, i64* %705, align 8
  %707 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 5
  %708 = load i32, i32* %707, align 4
  %709 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 4
  %710 = load i32, i32* %709, align 8
  %711 = call i32 @ieee80211_sta_wmm_params(%struct.ieee80211_local* %703, %struct.ieee80211_sub_if_data* %704, i64 %706, i32 %708, i32 %710)
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %721, label %713

713:                                              ; preds = %702
  %714 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %715 = call i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data* %714, i32 0, i32 1)
  %716 = load i32, i32* @IEEE80211_STA_DISABLE_WMM, align 4
  %717 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %718 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %717, i32 0, i32 3
  %719 = load i32, i32* %718, align 4
  %720 = or i32 %719, %716
  store i32 %720, i32* %718, align 4
  br label %721

721:                                              ; preds = %713, %702
  br label %722

722:                                              ; preds = %721, %699
  %723 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %724 = load i32, i32* %21, align 4
  %725 = or i32 %724, %723
  store i32 %725, i32* %21, align 4
  %726 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 3
  %727 = load %struct.TYPE_14__*, %struct.TYPE_14__** %726, align 8
  %728 = icmp ne %struct.TYPE_14__* %727, null
  br i1 %728, label %729, label %752

729:                                              ; preds = %722
  %730 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 3
  %731 = load %struct.TYPE_14__*, %struct.TYPE_14__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %731, i32 0, i32 1
  %733 = load i32, i32* %732, align 4
  %734 = call i8* @le16_to_cpu(i32 %733)
  %735 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %736 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %735, i32 0, i32 9
  store i8* %734, i8** %736, align 8
  %737 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %17, i32 0, i32 3
  %738 = load %struct.TYPE_14__*, %struct.TYPE_14__** %737, align 8
  %739 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %738, i32 0, i32 0
  %740 = load i32, i32* %739, align 4
  %741 = load i32, i32* @WLAN_IDLE_OPTIONS_PROTECTED_KEEP_ALIVE, align 4
  %742 = and i32 %740, %741
  %743 = icmp ne i32 %742, 0
  %744 = xor i1 %743, true
  %745 = xor i1 %744, true
  %746 = zext i1 %745 to i32
  %747 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %748 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %747, i32 0, i32 6
  store i32 %746, i32* %748, align 8
  %749 = load i32, i32* @BSS_CHANGED_KEEP_ALIVE, align 4
  %750 = load i32, i32* %21, align 4
  %751 = or i32 %750, %749
  store i32 %751, i32* %21, align 4
  br label %757

752:                                              ; preds = %722
  %753 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %754 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %753, i32 0, i32 9
  store i8* null, i8** %754, align 8
  %755 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %756 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %755, i32 0, i32 6
  store i32 0, i32* %756, align 8
  br label %757

757:                                              ; preds = %752, %729
  %758 = load i32, i32* %16, align 4
  %759 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %760 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %759, i32 0, i32 7
  store i32 %758, i32* %760, align 4
  %761 = load i32, i32* %15, align 4
  %762 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %18, align 8
  %763 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %762, i32 0, i32 8
  store i32 %761, i32* %763, align 8
  %764 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %765 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %766 = load i32, i32* %21, align 4
  %767 = call i32 @ieee80211_set_associated(%struct.ieee80211_sub_if_data* %764, %struct.cfg80211_bss* %765, i32 %766)
  %768 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %10, align 8
  %769 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %768, i32 0, i32 6
  %770 = load i64, i64* %769, align 8
  %771 = icmp ne i64 %770, 0
  br i1 %771, label %772, label %776

772:                                              ; preds = %757
  %773 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %774 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %775 = call i32 @ieee80211_send_4addr_nullfunc(%struct.ieee80211_local* %773, %struct.ieee80211_sub_if_data* %774)
  br label %776

776:                                              ; preds = %772, %757
  %777 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %778 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %779 = bitcast %struct.ieee80211_mgmt* %778 to %struct.ieee80211_hdr*
  %780 = call i32 @ieee80211_sta_rx_notify(%struct.ieee80211_sub_if_data* %777, %struct.ieee80211_hdr* %779)
  %781 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %782 = call i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data* %781)
  store i32 1, i32* %23, align 4
  br label %783

783:                                              ; preds = %776, %668, %391, %370, %359, %339, %321
  %784 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %19, align 8
  %785 = call i32 @kfree(%struct.cfg80211_bss_ies* %784)
  %786 = load i32, i32* %23, align 4
  store i32 %786, i32* %5, align 4
  br label %787

787:                                              ; preds = %783, %182, %97
  %788 = load i32, i32* %5, align 4
  ret i32 %788
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i32 @ieee802_11_parse_elems(i32*, i64, i32, %struct.ieee802_11_elems*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local %struct.cfg80211_bss_ies* @kmemdup(%struct.cfg80211_bss_ies*, i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.sta_info* @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.ieee80211_supported_band* @ieee80211_get_sband(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_ht_cap_ie_to_sta_ht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i64, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_vht_cap_ie_to_sta_vht_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i64, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_he_cap_ie_to_sta_he_cap(%struct.ieee80211_sub_if_data*, %struct.ieee80211_supported_band*, i64, i32, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_recalc_twt_req(%struct.ieee80211_sub_if_data*, %struct.sta_info*, %struct.ieee802_11_elems*) #1

declare dso_local i8* @le32_get_bits(i32, i32) #1

declare dso_local i32 @ieee80211_he_op_ie_to_bss_conf(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ieee80211_he_spr_ie_to_bss_conf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rate_control_rate_init(%struct.sta_info*) #1

declare dso_local i32 @set_sta_flag(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_info_move_state(%struct.sta_info*, i32) #1

declare dso_local i32 @__sta_info_destroy(%struct.sta_info*) #1

declare dso_local i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @ieee80211_sta_wmm_params(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i64, i32, i32) #1

declare dso_local i32 @ieee80211_set_associated(%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*, i32) #1

declare dso_local i32 @ieee80211_send_4addr_nullfunc(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_sta_rx_notify(%struct.ieee80211_sub_if_data*, %struct.ieee80211_hdr*) #1

declare dso_local i32 @ieee80211_sta_reset_beacon_monitor(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @kfree(%struct.cfg80211_bss_ies*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
