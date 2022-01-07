; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_assoc_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_assoc_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_8__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, %struct.ieee80211_mgd_assoc_data* }
%struct.ieee80211_mgd_assoc_data = type { i32, %struct.cfg80211_bss*, i64, i64 }
%struct.cfg80211_bss = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32, i32, i32 }
%struct.ieee802_11_elems = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.ieee80211_event = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }

@ASSOC_EVENT = common dso_local global i32 0, align 4
@MLME_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"RX %sssocResp from %pM (capab=0x%x status=%d aid=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Rea\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY = common dso_local global i32 0, align 4
@WLAN_TIMEOUT_ASSOC_COMEBACK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"%pM rejected association temporarily; comeback duration %u TU (%u ms)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@IEEE80211_ASSOC_TIMEOUT = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"%pM denied association (code=%d)\0A\00", align 1
@MLME_DENIED = common dso_local global i32 0, align 4
@MLME_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"associated\0A\00", align 1
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@ieee80211_ac_to_qos_mask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_rx_mgmt_assoc_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_mgmt_assoc_resp(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca %struct.ieee80211_mgd_assoc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee802_11_elems, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.cfg80211_bss*, align 8
  %18 = alloca %struct.ieee80211_event, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.ieee80211_if_managed* %23, %struct.ieee80211_if_managed** %7, align 8
  %24 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %25 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %24, i32 0, i32 2
  %26 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %25, align 8
  store %struct.ieee80211_mgd_assoc_data* %26, %struct.ieee80211_mgd_assoc_data** %8, align 8
  store i32 -1, i32* %14, align 4
  %27 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %18, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %32 = load i32, i32* @ASSOC_EVENT, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %18, i32 0, i32 1
  %34 = load i32, i32* @MLME_EVENT, align 4
  store i32 %34, i32* %33, align 4
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %36 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %35)
  %37 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %38 = icmp ne %struct.ieee80211_mgd_assoc_data* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  br label %282

40:                                               ; preds = %3
  %41 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %42 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %41, i32 0, i32 1
  %43 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %42, align 8
  %44 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ether_addr_equal(i32 %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %282

52:                                               ; preds = %40
  %53 = load i64, i64* %6, align 8
  %54 = icmp ult i64 %53, 30
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %282

56:                                               ; preds = %52
  %57 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %58 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ieee80211_is_reassoc_resp(i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @le16_to_cpu(i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le16_to_cpu(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %84 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %85 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @BIT(i32 15)
  %91 = call i32 @BIT(i32 14)
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = and i32 %89, %93
  %95 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %79, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %83, i32 %86, i32 %87, i32 %88, i32 %94)
  %96 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %97 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %56
  %101 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %102 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %103 = bitcast %struct.ieee80211_mgmt* %102 to i32*
  %104 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %105 = call i64 @fils_decrypt_assoc_resp(%struct.ieee80211_sub_if_data* %101, i32* %103, i64* %6, %struct.ieee80211_mgd_assoc_data* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %282

108:                                              ; preds = %100, %56
  %109 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %110 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %15, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %118 = bitcast %struct.ieee80211_mgmt* %117 to i32*
  %119 = ptrtoint i32* %116 to i64
  %120 = ptrtoint i32* %118 to i64
  %121 = sub i64 %119, %120
  %122 = sdiv exact i64 %121, 4
  %123 = sub i64 %115, %122
  %124 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %125 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %128 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %127, i32 0, i32 1
  %129 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %128, align 8
  %130 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ieee802_11_parse_elems(i32* %114, i64 %123, i32 0, %struct.ieee802_11_elems* %12, i32 %126, i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @WLAN_STATUS_ASSOC_REJECTED_TEMPORARILY, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %181

136:                                              ; preds = %108
  %137 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = icmp ne %struct.TYPE_11__* %138, null
  br i1 %139, label %140, label %181

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 0
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @WLAN_TIMEOUT_ASSOC_COMEBACK, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %181

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %12, i32 0, i32 0
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @le32_to_cpu(i32 %151)
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = mul nsw i32 %153, 1024
  %155 = sdiv i32 %154, 1000
  store i32 %155, i32* %20, align 4
  %156 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %157 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %158 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %20, align 4
  %162 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %156, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %160, i32 %161)
  %163 = load i64, i64* @jiffies, align 8
  %164 = load i32, i32* %20, align 4
  %165 = call i64 @msecs_to_jiffies(i32 %164)
  %166 = add nsw i64 %163, %165
  %167 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %168 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  %169 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %170 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* @IEEE80211_ASSOC_TIMEOUT, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %147
  %175 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %176 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %177 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @run_again(%struct.ieee80211_sub_if_data* %175, i64 %178)
  br label %180

180:                                              ; preds = %174, %147
  br label %282

181:                                              ; preds = %140, %136, %108
  %182 = load %struct.ieee80211_mgd_assoc_data*, %struct.ieee80211_mgd_assoc_data** %8, align 8
  %183 = getelementptr inbounds %struct.ieee80211_mgd_assoc_data, %struct.ieee80211_mgd_assoc_data* %182, i32 0, i32 1
  %184 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %183, align 8
  store %struct.cfg80211_bss* %184, %struct.cfg80211_bss** %17, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %210

188:                                              ; preds = %181
  %189 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %190 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %191 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %189, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %192, i32 %193)
  %195 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %196 = call i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data* %195, i32 0, i32 0)
  %197 = load i32, i32* @MLME_DENIED, align 4
  %198 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %18, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load i32, i32* %10, align 4
  %202 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %18, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  store i32 %201, i32* %204, align 4
  %205 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %206 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %209 = call i32 @drv_event_callback(i32 %207, %struct.ieee80211_sub_if_data* %208, %struct.ieee80211_event* %18)
  br label %266

210:                                              ; preds = %181
  %211 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %212 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %17, align 8
  %213 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %214 = load i64, i64* %6, align 8
  %215 = call i32 @ieee80211_assoc_success(%struct.ieee80211_sub_if_data* %211, %struct.cfg80211_bss* %212, %struct.ieee80211_mgmt* %213, i64 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %210
  %218 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %219 = call i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data* %218, i32 0, i32 0)
  %220 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %221 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %17, align 8
  %224 = call i32 @cfg80211_assoc_timeout(i32 %222, %struct.cfg80211_bss* %223)
  br label %282

225:                                              ; preds = %210
  %226 = load i32, i32* @MLME_SUCCESS, align 4
  %227 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %18, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 1
  store i32 %226, i32* %229, align 4
  %230 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %231 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %234 = call i32 @drv_event_callback(i32 %232, %struct.ieee80211_sub_if_data* %233, %struct.ieee80211_event* %18)
  %235 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %236 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %237 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %238 = call i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data* %237, i32 1, i32 0)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %239

239:                                              ; preds = %262, %225
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %265

243:                                              ; preds = %239
  %244 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %245 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %244, i32 0, i32 1
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %243
  %254 = load i32*, i32** @ieee80211_ac_to_qos_mask, align 8
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %14, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %14, align 4
  br label %261

261:                                              ; preds = %253, %243
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %13, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %13, align 4
  br label %239

265:                                              ; preds = %239
  br label %266

266:                                              ; preds = %265, %188
  %267 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %268 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %17, align 8
  %271 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %272 = bitcast %struct.ieee80211_mgmt* %271 to i32*
  %273 = load i64, i64* %6, align 8
  %274 = load i32, i32* %14, align 4
  %275 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %276 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %279 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @cfg80211_rx_assoc_resp(i32 %269, %struct.cfg80211_bss* %270, i32* %272, i64 %273, i32 %274, i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %266, %217, %180, %107, %55, %51, %39
  ret void
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ieee80211_is_reassoc_resp(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @fils_decrypt_assoc_resp(%struct.ieee80211_sub_if_data*, i32*, i64*, %struct.ieee80211_mgd_assoc_data*) #1

declare dso_local i32 @ieee802_11_parse_elems(i32*, i64, i32, %struct.ieee802_11_elems*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @run_again(%struct.ieee80211_sub_if_data*, i64) #1

declare dso_local i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @drv_event_callback(i32, %struct.ieee80211_sub_if_data*, %struct.ieee80211_event*) #1

declare dso_local i32 @ieee80211_assoc_success(%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*, %struct.ieee80211_mgmt*, i64) #1

declare dso_local i32 @cfg80211_assoc_timeout(i32, %struct.cfg80211_bss*) #1

declare dso_local i32 @cfg80211_rx_assoc_resp(i32, %struct.cfg80211_bss*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
