; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_16__*, i32, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_9__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_mgmt = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.ieee80211_event = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@AUTH_EVENT = common dso_local global i32 0, align 4
@MLME_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"%pM unexpected authentication state: alg %d (expected %d) transact %d (expected %d)\0A\00", align 1
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%pM denied authentication (status %d)\0A\00", align 1
@MLME_DENIED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"invalid auth alg %d\00", align 1
@MLME_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"SAE peer confirmed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_rx_mgmt_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_mgmt_auth(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_event, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  store %struct.ieee80211_if_managed* %17, %struct.ieee80211_if_managed** %7, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  %27 = load i32, i32* @AUTH_EVENT, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 1
  %29 = load i32, i32* @MLME_EVENT, align 4
  store i32 %29, i32* %28, align 4
  %30 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %31 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp ult i64 %32, 30
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %257

35:                                               ; preds = %3
  %36 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %35
  store i32 1, i32* %14, align 4
  br label %257

48:                                               ; preds = %40
  %49 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %50 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32* %21, i32 %55, i32 %56)
  %58 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ether_addr_equal(i32* %21, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %48
  store i32 1, i32* %14, align 4
  br label %257

64:                                               ; preds = %48
  %65 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %78 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %85 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %83, %88
  br i1 %89, label %115, label %90

90:                                               ; preds = %64
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 129
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %96 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %94, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %93, %90
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 129
  br i1 %103, label %104, label %133

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %107 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %11, align 4
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %115, label %133

115:                                              ; preds = %112, %104, %93, %64
  %116 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %117 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %118 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %121, i32 0, i32 0
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %128 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %127, i32 0, i32 0
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %116, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %120, i32 %125, i32 %126, i32 %131)
  store i32 1, i32* %14, align 4
  br label %257

133:                                              ; preds = %112, %101
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %166

137:                                              ; preds = %133
  %138 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %139 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %140 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %141, i32 %142)
  %144 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %145 = call i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data* %144, i32 0)
  %146 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %147 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %150 = bitcast %struct.ieee80211_mgmt* %149 to i32*
  %151 = load i64, i64* %6, align 8
  %152 = call i32 @cfg80211_rx_mlme_mgmt(i32 %148, i32* %150, i64 %151)
  %153 = load i32, i32* @MLME_DENIED, align 4
  %154 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  %158 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 4
  %161 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %162 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %161, i32 0, i32 0
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %162, align 8
  %164 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %165 = call i32 @drv_event_callback(%struct.TYPE_16__* %163, %struct.ieee80211_sub_if_data* %164, %struct.ieee80211_event* %13)
  store i32 1, i32* %14, align 4
  br label %257

166:                                              ; preds = %133
  %167 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %168 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %167, i32 0, i32 0
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  switch i32 %171, label %186 [
    i32 130, label %172
    i32 131, label %172
    i32 132, label %172
    i32 129, label %172
    i32 134, label %172
    i32 133, label %172
    i32 135, label %172
    i32 128, label %173
  ]

172:                                              ; preds = %166, %166, %166, %166, %166, %166, %166
  br label %193

173:                                              ; preds = %166
  %174 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %175 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %174, i32 0, i32 0
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 4
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %182 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @ieee80211_auth_challenge(%struct.ieee80211_sub_if_data* %181, %struct.ieee80211_mgmt* %182, i64 %183)
  store i32 1, i32* %14, align 4
  br label %257

185:                                              ; preds = %173
  br label %193

186:                                              ; preds = %166
  %187 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %188 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  store i32 1, i32* %14, align 4
  br label %257

193:                                              ; preds = %185, %172
  %194 = load i32, i32* @MLME_SUCCESS, align 4
  %195 = getelementptr inbounds %struct.ieee80211_event, %struct.ieee80211_event* %13, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  %198 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %199 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %198, i32 0, i32 0
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %202 = call i32 @drv_event_callback(%struct.TYPE_16__* %200, %struct.ieee80211_sub_if_data* %201, %struct.ieee80211_event* %13)
  %203 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %204 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %203, i32 0, i32 0
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 129
  br i1 %208, label %219, label %209

209:                                              ; preds = %193
  %210 = load i32, i32* %11, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %225

212:                                              ; preds = %209
  %213 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %214 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %213, i32 0, i32 0
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %225

219:                                              ; preds = %212, %193
  %220 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %221 = call i32 @ieee80211_mark_sta_auth(%struct.ieee80211_sub_if_data* %220, i32* %21)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %219
  br label %251

224:                                              ; preds = %219
  br label %243

225:                                              ; preds = %212, %209
  %226 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %227 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %226, i32 0, i32 0
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 129
  br i1 %231, label %232, label %242

232:                                              ; preds = %225
  %233 = load i32, i32* %11, align 4
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %242

235:                                              ; preds = %232
  %236 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %237 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %236, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %238 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %239 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %238, i32 0, i32 0
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  store i32 1, i32* %241, align 8
  br label %242

242:                                              ; preds = %235, %232, %225
  br label %243

243:                                              ; preds = %242, %224
  %244 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %245 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %248 = bitcast %struct.ieee80211_mgmt* %247 to i32*
  %249 = load i64, i64* %6, align 8
  %250 = call i32 @cfg80211_rx_mlme_mgmt(i32 %246, i32* %248, i64 %249)
  store i32 1, i32* %14, align 4
  br label %257

251:                                              ; preds = %223
  %252 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %253 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %252, i32 0, i32 0
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 0
  %256 = call i32 @mutex_unlock(i32* %255)
  store i32 0, i32* %14, align 4
  br label %257

257:                                              ; preds = %251, %243, %186, %180, %137, %115, %63, %47, %34
  %258 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %258)
  %259 = load i32, i32* %14, align 4
  switch i32 %259, label %261 [
    i32 0, label %260
    i32 1, label %260
  ]

260:                                              ; preds = %257, %257
  ret void

261:                                              ; preds = %257
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i32 @ether_addr_equal(i32*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #2

declare dso_local i32 @ieee80211_destroy_auth_data(%struct.ieee80211_sub_if_data*, i32) #2

declare dso_local i32 @cfg80211_rx_mlme_mgmt(i32, i32*, i64) #2

declare dso_local i32 @drv_event_callback(%struct.TYPE_16__*, %struct.ieee80211_sub_if_data*, %struct.ieee80211_event*) #2

declare dso_local i32 @ieee80211_auth_challenge(%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64) #2

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #2

declare dso_local i32 @ieee80211_mark_sta_auth(%struct.ieee80211_sub_if_data*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
