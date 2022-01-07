; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c_ieee80211_send_addba_resp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_agg-rx.c_ieee80211_send_addba_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_info = type { %struct.TYPE_12__, %struct.ieee80211_sub_if_data* }
%struct.TYPE_12__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.ieee80211_local* }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i64, i32* }
%struct.ieee80211_local = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.ieee80211_addba_ext_ie = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_21__, i8*, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i8*, i8*, i32, i32 }

@SUPPORTS_AMSDU_IN_AMPDU = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_ACTION = common dso_local global i32 0, align 4
@WLAN_CATEGORY_BACK = common dso_local global i32 0, align 4
@WLAN_ACTION_ADDBA_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sta_info*, i32*, i32, i32, i32, i32, i32, i32, %struct.ieee80211_addba_ext_ie*)* @ieee80211_send_addba_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_send_addba_resp(%struct.sta_info* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.ieee80211_addba_ext_ie* %8) #0 {
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_addba_ext_ie*, align 8
  %19 = alloca %struct.ieee80211_sub_if_data*, align 8
  %20 = alloca %struct.ieee80211_local*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  %22 = alloca %struct.ieee80211_mgmt*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sta_info* %0, %struct.sta_info** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.ieee80211_addba_ext_ie* %8, %struct.ieee80211_addba_ext_ie** %18, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 1
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %26, align 8
  store %struct.ieee80211_sub_if_data* %27, %struct.ieee80211_sub_if_data** %19, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 2
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %29, align 8
  store %struct.ieee80211_local* %30, %struct.ieee80211_local** %20, align 8
  %31 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  %32 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %31, i32 0, i32 0
  %33 = load i32, i32* @SUPPORTS_AMSDU_IN_AMPDU, align 4
  %34 = call i32 @ieee80211_hw_check(%struct.TYPE_13__* %32, i32 %33)
  store i32 %34, i32* %23, align 4
  %35 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  %36 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 70, %38
  %40 = call %struct.sk_buff* @dev_alloc_skb(i64 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %21, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %9
  br label %220

44:                                               ; preds = %9
  %45 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %46 = load %struct.ieee80211_local*, %struct.ieee80211_local** %20, align 8
  %47 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @skb_reserve(%struct.sk_buff* %45, i64 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %52 = call %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff* %51, i32 24)
  store %struct.ieee80211_mgmt* %52, %struct.ieee80211_mgmt** %22, align 8
  %53 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %54 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = call i32 @memcpy(i32 %55, i32* %56, i32 %57)
  %59 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %63 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i32 %61, i32* %65, i32 %66)
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %88, label %74

74:                                               ; preds = %44
  %75 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %76 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %83 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %81, %74, %44
  %89 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %90 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = call i32 @memcpy(i32 %91, i32* %95, i32 %96)
  br label %136

98:                                               ; preds = %81
  %99 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %107 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = call i32 @memcpy(i32 %108, i32* %113, i32 %114)
  br label %135

116:                                              ; preds = %98
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %116
  %124 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %125 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @ETH_ALEN, align 4
  %133 = call i32 @memcpy(i32 %126, i32* %131, i32 %132)
  br label %134

134:                                              ; preds = %123, %116
  br label %135

135:                                              ; preds = %134, %105
  br label %136

136:                                              ; preds = %135, %88
  %137 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %138 = load i32, i32* @IEEE80211_STYPE_ACTION, align 4
  %139 = or i32 %137, %138
  %140 = call i8* @cpu_to_le16(i32 %139)
  %141 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %142 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %144 = call i32 @skb_put(%struct.sk_buff* %143, i32 33)
  %145 = load i32, i32* @WLAN_CATEGORY_BACK, align 4
  %146 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %147 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 8
  %150 = load i32, i32* @WLAN_ACTION_ADDBA_RESP, align 4
  %151 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %152 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 4
  store i32 %150, i32* %156, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %159 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 3
  store i32 %157, i32* %163, align 8
  %164 = load i32, i32* %23, align 4
  %165 = shl i32 %164, 0
  store i32 %165, i32* %24, align 4
  %166 = load i32, i32* %15, align 4
  %167 = shl i32 %166, 1
  %168 = load i32, i32* %24, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %24, align 4
  %170 = load i32, i32* %12, align 4
  %171 = shl i32 %170, 2
  %172 = load i32, i32* %24, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %24, align 4
  %174 = load i32, i32* %16, align 4
  %175 = shl i32 %174, 6
  %176 = load i32, i32* %24, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %24, align 4
  %178 = load i32, i32* %24, align 4
  %179 = call i8* @cpu_to_le16(i32 %178)
  %180 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %181 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  store i8* %179, i8** %185, align 8
  %186 = load i32, i32* %17, align 4
  %187 = call i8* @cpu_to_le16(i32 %186)
  %188 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %189 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 1
  store i8* %187, i8** %193, align 8
  %194 = load i32, i32* %14, align 4
  %195 = call i8* @cpu_to_le16(i32 %194)
  %196 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %22, align 8
  %197 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  store i8* %195, i8** %201, align 8
  %202 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %203 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %136
  %209 = load %struct.ieee80211_addba_ext_ie*, %struct.ieee80211_addba_ext_ie** %18, align 8
  %210 = icmp ne %struct.ieee80211_addba_ext_ie* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %208
  %212 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %214 = load %struct.ieee80211_addba_ext_ie*, %struct.ieee80211_addba_ext_ie** %18, align 8
  %215 = call i32 @ieee80211_add_addbaext(%struct.ieee80211_sub_if_data* %212, %struct.sk_buff* %213, %struct.ieee80211_addba_ext_ie* %214)
  br label %216

216:                                              ; preds = %211, %208, %136
  %217 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %19, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %219 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %217, %struct.sk_buff* %218)
  br label %220

220:                                              ; preds = %216, %43
  ret void
}

declare dso_local i32 @ieee80211_hw_check(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local %struct.ieee80211_mgmt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_add_addbaext(%struct.ieee80211_sub_if_data*, %struct.sk_buff*, %struct.ieee80211_addba_ext_ie*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
