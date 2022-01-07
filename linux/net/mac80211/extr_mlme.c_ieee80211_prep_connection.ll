; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_prep_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_prep_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_13__, %struct.ieee80211_local*, i32, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i8* }
%struct.ieee80211_local = type { i64, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32 }
%struct.TYPE_8__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32 }
%struct.cfg80211_bss = type { i32, i32, i32, i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.ieee80211_bss = type { i32, i32, i32, i32 }
%struct.sta_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8** }
%struct.cfg80211_bss_ies = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No basic rates, using min rate instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"No rates found, keeping mandatory only\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@IEEE80211_SDATA_OPERATING_GMODE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@TIMING_BEACON_ONLY = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to insert STA entry for the AP (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*, i32, i32)* @ieee80211_prep_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_connection(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.cfg80211_bss*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_local*, align 8
  %11 = alloca %struct.ieee80211_if_managed*, align 8
  %12 = alloca %struct.ieee80211_bss*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca %struct.ieee80211_supported_band*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.cfg80211_bss_ies*, align 8
  %23 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 1
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %25, align 8
  store %struct.ieee80211_local* %26, %struct.ieee80211_local** %10, align 8
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store %struct.ieee80211_if_managed* %29, %struct.ieee80211_if_managed** %11, align 8
  %30 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %31 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = bitcast i8* %33 to %struct.ieee80211_bss*
  store %struct.ieee80211_bss* %34, %struct.ieee80211_bss** %12, align 8
  store %struct.sta_info* null, %struct.sta_info** %13, align 8
  store i32 0, i32* %15, align 4
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %36 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %39, align 8
  %41 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %42 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %41, i32 0, i32 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %40, i64 %45
  %47 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %46, align 8
  store %struct.ieee80211_supported_band* %47, %struct.ieee80211_supported_band** %14, align 8
  %48 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %49 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %4
  %53 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %54 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %52, %4
  %59 = phi i1 [ false, %4 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %338

66:                                               ; preds = %58
  %67 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %68 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %338

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = call i32 (...) @rcu_read_lock()
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %80 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %81 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @sta_info_get(%struct.ieee80211_sub_if_data* %79, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = call i32 (...) @rcu_read_unlock()
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %90 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %91 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data* %89, i32 %92, i32 %93)
  store %struct.sta_info* %94, %struct.sta_info** %13, align 8
  %95 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %96 = icmp ne %struct.sta_info* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %338

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %85
  %102 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %103 = icmp ne %struct.sta_info* %102, null
  br i1 %103, label %104, label %266

104:                                              ; preds = %101
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %105 = load i32, i32* @INT_MAX, align 4
  store i32 %105, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  %106 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %106, i32 0, i32 0
  %108 = call i32 @ieee80211_vif_get_shift(%struct.TYPE_13__* %107)
  store i32 %108, i32* %23, align 4
  %109 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %14, align 8
  %110 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %12, align 8
  %111 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %12, align 8
  %114 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %23, align 4
  %117 = call i32 @ieee80211_get_rates(%struct.ieee80211_supported_band* %109, i32 %112, i32 %115, i8** %17, i8** %18, i32* %19, i32* %20, i32* %21, i32 %116)
  %118 = load i8*, i8** %18, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %128, label %120

120:                                              ; preds = %104
  %121 = load i32, i32* %21, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %125 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %124, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %126 = load i32, i32* %21, align 4
  %127 = call i8* @BIT(i32 %126)
  store i8* %127, i8** %18, align 8
  br label %128

128:                                              ; preds = %123, %120, %104
  %129 = load i8*, i8** %17, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %128
  %132 = load i8*, i8** %17, align 8
  %133 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %134 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i8**, i8*** %135, align 8
  %137 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %138 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %137, i32 0, i32 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8*, i8** %136, i64 %141
  store i8* %132, i8** %142, align 8
  br label %146

143:                                              ; preds = %128
  %144 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %145 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %144, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %131
  %147 = load i8*, i8** %18, align 8
  %148 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %149 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 4
  store i8* %147, i8** %151, align 8
  %152 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %153 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %152, i32 0, i32 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %146
  %160 = load i32, i32* %19, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %164 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %165 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %175

168:                                              ; preds = %159, %146
  %169 = load i32, i32* @IEEE80211_SDATA_OPERATING_GMODE, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %172 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %168, %162
  %176 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %177 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %180 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @ETH_ALEN, align 4
  %183 = call i32 @memcpy(i32 %178, i32 %181, i32 %182)
  %184 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %185 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %188 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  store i32 %186, i32* %190, align 4
  %191 = call i32 (...) @rcu_read_lock()
  %192 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %193 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %194)
  store %struct.cfg80211_bss_ies* %195, %struct.cfg80211_bss_ies** %22, align 8
  %196 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %197 = icmp ne %struct.cfg80211_bss_ies* %196, null
  br i1 %197, label %198, label %219

198:                                              ; preds = %175
  %199 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %200 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %203 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  store i32 %201, i32* %205, align 8
  %206 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %12, align 8
  %207 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %210 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 1
  store i32 %208, i32* %212, align 4
  %213 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %214 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %215 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = call i32 @ieee80211_get_dtim(%struct.cfg80211_bss_ies* %213, i32* %217, i32* null)
  br label %264

219:                                              ; preds = %175
  %220 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %221 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %220, i32 0, i32 1
  %222 = load %struct.ieee80211_local*, %struct.ieee80211_local** %221, align 8
  %223 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %222, i32 0, i32 1
  %224 = load i32, i32* @TIMING_BEACON_ONLY, align 4
  %225 = call i32 @ieee80211_hw_check(%struct.TYPE_14__* %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %250, label %227

227:                                              ; preds = %219
  %228 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %229 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %230)
  store %struct.cfg80211_bss_ies* %231, %struct.cfg80211_bss_ies** %22, align 8
  %232 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %22, align 8
  %233 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %236 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 2
  store i32 %234, i32* %238, align 8
  %239 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %12, align 8
  %240 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %243 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  store i32 %241, i32* %245, align 4
  %246 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %247 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  store i32 0, i32* %249, align 8
  br label %263

250:                                              ; preds = %219
  %251 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %252 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  store i32 0, i32* %254, align 8
  %255 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %256 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  store i32 0, i32* %258, align 4
  %259 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %260 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 0
  store i32 0, i32* %262, align 8
  br label %263

263:                                              ; preds = %250, %227
  br label %264

264:                                              ; preds = %263, %198
  %265 = call i32 (...) @rcu_read_unlock()
  br label %266

266:                                              ; preds = %264, %101
  %267 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %268 = icmp ne %struct.sta_info* %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %289

272:                                              ; preds = %269, %266
  %273 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %274 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %275 = call i32 @ieee80211_prep_channel(%struct.ieee80211_sub_if_data* %273, %struct.cfg80211_bss* %274)
  store i32 %275, i32* %16, align 4
  %276 = load i32, i32* %16, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %272
  %279 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %280 = icmp ne %struct.sta_info* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %283 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %284 = call i32 @sta_info_free(%struct.ieee80211_local* %282, %struct.sta_info* %283)
  br label %285

285:                                              ; preds = %281, %278
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %5, align 4
  br label %338

288:                                              ; preds = %272
  br label %289

289:                                              ; preds = %288, %269
  %290 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %291 = icmp ne %struct.sta_info* %290, null
  br i1 %291, label %292, label %317

292:                                              ; preds = %289
  %293 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %294 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %295 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %298 = or i32 %296, %297
  %299 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %293, i32 %298)
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %292
  %303 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %304 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %305 = call i32 @sta_info_pre_move_state(%struct.sta_info* %303, i32 %304)
  br label %306

306:                                              ; preds = %302, %292
  %307 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %308 = call i32 @sta_info_insert(%struct.sta_info* %307)
  store i32 %308, i32* %16, align 4
  store %struct.sta_info* null, %struct.sta_info** %13, align 8
  %309 = load i32, i32* %16, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %313 = load i32, i32* %16, align 4
  %314 = call i32 (%struct.ieee80211_sub_if_data*, i8*, ...) @sdata_info(%struct.ieee80211_sub_if_data* %312, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %16, align 4
  store i32 %315, i32* %5, align 4
  br label %338

316:                                              ; preds = %306
  br label %329

317:                                              ; preds = %289
  %318 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %319 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %7, align 8
  %322 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = call i32 @ether_addr_equal(i32 %320, i32 %323)
  %325 = icmp ne i32 %324, 0
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = call i32 @WARN_ON_ONCE(i32 %327)
  br label %329

329:                                              ; preds = %317, %316
  %330 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %331 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %329
  %335 = load %struct.ieee80211_local*, %struct.ieee80211_local** %10, align 8
  %336 = call i32 @ieee80211_scan_cancel(%struct.ieee80211_local* %335)
  br label %337

337:                                              ; preds = %334, %329
  store i32 0, i32* %5, align 4
  br label %338

338:                                              ; preds = %337, %311, %285, %97, %71, %63
  %339 = load i32, i32* %5, align 4
  ret i32 %339
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @sta_info_get(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.sta_info* @sta_info_alloc(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_get_shift(%struct.TYPE_13__*) #1

declare dso_local i32 @ieee80211_get_rates(%struct.ieee80211_supported_band*, i32, i32, i8**, i8**, i32*, i32*, i32*, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, ...) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32 @ieee80211_get_dtim(%struct.cfg80211_bss_ies*, i32*, i32*) #1

declare dso_local i32 @ieee80211_hw_check(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ieee80211_prep_channel(%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*) #1

declare dso_local i32 @sta_info_free(%struct.ieee80211_local*, %struct.sta_info*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @sta_info_pre_move_state(%struct.sta_info*, i32) #1

declare dso_local i32 @sta_info_insert(%struct.sta_info*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ieee80211_scan_cancel(%struct.ieee80211_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
