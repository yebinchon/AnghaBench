; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.cfg80211_mgmt_tx_params = type { i64, i32, i64*, i32, i64, i64, i64, i64, i64 }
%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_19__, %struct.TYPE_20__, %struct.TYPE_24__*, %struct.ieee80211_local* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_31__, %struct.TYPE_29__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.ieee80211_local = type { i32, %struct.TYPE_21__, %struct.TYPE_27__* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sta_info = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.beacon_data = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_NL80211_FRAME_TX = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_REQ_TX_STATUS = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_CCK_RATE = common dso_local global i32 0, align 4
@WLAN_CATEGORY_PUBLIC = common dso_local global i32 0, align 4
@WLAN_CATEGORY_SELF_PROTECTED = common dso_local global i32 0, align 4
@WLAN_CATEGORY_SPECTRUM_MGMT = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_TX_OFFCHAN = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_OFFCHAN_TX_OK = common dso_local global i32 0, align 4
@QUEUE_CONTROL = common dso_local global i32 0, align 4
@IEEE80211_ROC_TYPE_MGMT_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_mgmt_tx(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.cfg80211_mgmt_tx_params* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca %struct.cfg80211_mgmt_tx_params*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_sub_if_data*, align 8
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca %struct.ieee80211_mgmt*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.beacon_data*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store %struct.cfg80211_mgmt_tx_params* %2, %struct.cfg80211_mgmt_tx_params** %8, align 8
  store i32* %3, i32** %9, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %7, align 8
  %23 = call %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev* %22)
  store %struct.ieee80211_sub_if_data* %23, %struct.ieee80211_sub_if_data** %10, align 8
  %24 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %24, i32 0, i32 4
  %26 = load %struct.ieee80211_local*, %struct.ieee80211_local** %25, align 8
  store %struct.ieee80211_local* %26, %struct.ieee80211_local** %11, align 8
  %27 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %28 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %31, %struct.ieee80211_mgmt** %14, align 8
  store i32 0, i32* %15, align 4
  %32 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %33 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  store i32 %37, i32* %16, align 4
  br label %42

38:                                               ; preds = %4
  %39 = load i32, i32* @IEEE80211_TX_INTFL_NL80211_FRAME_TX, align 4
  %40 = load i32, i32* @IEEE80211_TX_CTL_REQ_TX_STATUS, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %44 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @IEEE80211_TX_CTL_NO_CCK_RATE, align 4
  %49 = load i32, i32* %16, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %53 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %176 [
    i32 136, label %56
    i32 135, label %65
    i32 134, label %65
    i32 129, label %65
    i32 128, label %130
    i32 131, label %130
    i32 130, label %174
    i32 132, label %175
  ]

56:                                               ; preds = %51
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 1, i32* %15, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %65

65:                                               ; preds = %51, %51, %51, %64
  %66 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %67 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 136
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %73 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %72, i32 0, i32 2
  %74 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_20__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %77, i32 0, i32 3
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @rcu_access_pointer(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  store i32 1, i32* %15, align 4
  br label %85

85:                                               ; preds = %84, %76, %71, %65
  %86 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %87 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ieee80211_is_action(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %85
  %92 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %93 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @WLAN_CATEGORY_PUBLIC, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %115, label %99

99:                                               ; preds = %91
  %100 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %101 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @WLAN_CATEGORY_SELF_PROTECTED, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %99
  %108 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %109 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @WLAN_CATEGORY_SPECTRUM_MGMT, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107, %99, %91, %85
  br label %179

116:                                              ; preds = %107
  %117 = call i32 (...) @rcu_read_lock()
  %118 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %119 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %120 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data* %118, i32 %121)
  store %struct.sta_info* %122, %struct.sta_info** %13, align 8
  %123 = call i32 (...) @rcu_read_unlock()
  %124 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %125 = icmp ne %struct.sta_info* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %116
  %127 = load i32, i32* @ENOLINK, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %461

129:                                              ; preds = %116
  br label %179

130:                                              ; preds = %51, %51
  %131 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %132 = call i32 @sdata_lock(%struct.ieee80211_sub_if_data* %131)
  %133 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %134 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %136, align 8
  %138 = icmp ne %struct.TYPE_28__* %137, null
  br i1 %138, label %139, label %170

139:                                              ; preds = %130
  %140 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %141 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %171

144:                                              ; preds = %139
  %145 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %146 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %144
  %150 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %151 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %150, i32 0, i32 2
  %152 = load %struct.TYPE_27__*, %struct.TYPE_27__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %149
  %157 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %158 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %165 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ETH_ALEN, align 4
  %168 = call i32 @memcmp(i32 %163, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %156, %130
  store i32 1, i32* %15, align 4
  br label %171

171:                                              ; preds = %170, %156, %149, %144, %139
  %172 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %173 = call i32 @sdata_unlock(%struct.ieee80211_sub_if_data* %172)
  br label %179

174:                                              ; preds = %51
  store i32 1, i32* %15, align 4
  br label %179

175:                                              ; preds = %51
  br label %176

176:                                              ; preds = %51, %175
  %177 = load i32, i32* @EOPNOTSUPP, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %5, align 4
  br label %461

179:                                              ; preds = %174, %171, %129, %115
  %180 = load i32, i32* %15, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %184 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %182
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %5, align 4
  br label %461

190:                                              ; preds = %182, %179
  %191 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %192 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %191, i32 0, i32 0
  %193 = call i32 @mutex_lock(i32* %192)
  %194 = load i32, i32* %15, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %236, label %196

196:                                              ; preds = %190
  %197 = call i32 (...) @rcu_read_lock()
  %198 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %199 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i8* @rcu_dereference(i32 %201)
  %203 = bitcast i8* %202 to %struct.ieee80211_chanctx_conf*
  store %struct.ieee80211_chanctx_conf* %203, %struct.ieee80211_chanctx_conf** %19, align 8
  %204 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %19, align 8
  %205 = icmp ne %struct.ieee80211_chanctx_conf* %204, null
  br i1 %205, label %206, label %223

206:                                              ; preds = %196
  %207 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %208 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %206
  %212 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %213 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %19, align 8
  %216 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %214, %218
  br label %220

220:                                              ; preds = %211, %206
  %221 = phi i1 [ false, %206 ], [ %219, %211 ]
  %222 = zext i1 %221 to i32
  store i32 %222, i32* %15, align 4
  br label %234

223:                                              ; preds = %196
  %224 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %225 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %223
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %17, align 4
  %231 = call i32 (...) @rcu_read_unlock()
  br label %456

232:                                              ; preds = %223
  store i32 1, i32* %15, align 4
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233, %220
  %235 = call i32 (...) @rcu_read_unlock()
  br label %236

236:                                              ; preds = %234, %190
  %237 = load i32, i32* %15, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %236
  %240 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %241 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %240, i32 0, i32 7
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* @EBUSY, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %17, align 4
  br label %456

247:                                              ; preds = %239, %236
  %248 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %249 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %253 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %252, i32 0, i32 5
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %251, %254
  %256 = call %struct.sk_buff* @dev_alloc_skb(i64 %255)
  store %struct.sk_buff* %256, %struct.sk_buff** %12, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %258 = icmp ne %struct.sk_buff* %257, null
  br i1 %258, label %262, label %259

259:                                              ; preds = %247
  %260 = load i32, i32* @ENOMEM, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %17, align 4
  br label %456

262:                                              ; preds = %247
  %263 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %264 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %265 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @skb_reserve(%struct.sk_buff* %263, i64 %267)
  %269 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %270 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %271 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %270, i32 0, i32 6
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %274 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %273, i32 0, i32 5
  %275 = load i64, i64* %274, align 8
  %276 = call i32* @skb_put_data(%struct.sk_buff* %269, i64 %272, i64 %275)
  store i32* %276, i32** %18, align 8
  %277 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %278 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %378

282:                                              ; preds = %262
  %283 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %284 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = icmp eq i32 %286, 135
  br i1 %287, label %300, label %288

288:                                              ; preds = %282
  %289 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %290 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = icmp eq i32 %292, 133
  br i1 %293, label %300, label %294

294:                                              ; preds = %288
  %295 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %296 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 136
  br i1 %299, label %300, label %378

300:                                              ; preds = %294, %288, %282
  %301 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %302 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %378

305:                                              ; preds = %300
  store %struct.beacon_data* null, %struct.beacon_data** %21, align 8
  %306 = call i32 (...) @rcu_read_lock()
  %307 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %308 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = icmp eq i32 %310, 135
  br i1 %311, label %312, label %320

312:                                              ; preds = %305
  %313 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %314 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = call i8* @rcu_dereference(i32 %317)
  %319 = bitcast i8* %318 to %struct.beacon_data*
  store %struct.beacon_data* %319, %struct.beacon_data** %21, align 8
  br label %349

320:                                              ; preds = %305
  %321 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %322 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %324, 136
  br i1 %325, label %326, label %334

326:                                              ; preds = %320
  %327 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %328 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i8* @rcu_dereference(i32 %331)
  %333 = bitcast i8* %332 to %struct.beacon_data*
  store %struct.beacon_data* %333, %struct.beacon_data** %21, align 8
  br label %348

334:                                              ; preds = %320
  %335 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %336 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %335, i32 0, i32 2
  %337 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_20__* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %347

339:                                              ; preds = %334
  %340 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %341 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i8* @rcu_dereference(i32 %344)
  %346 = bitcast i8* %345 to %struct.beacon_data*
  store %struct.beacon_data* %346, %struct.beacon_data** %21, align 8
  br label %347

347:                                              ; preds = %339, %334
  br label %348

348:                                              ; preds = %347, %326
  br label %349

349:                                              ; preds = %348, %312
  %350 = load %struct.beacon_data*, %struct.beacon_data** %21, align 8
  %351 = icmp ne %struct.beacon_data* %350, null
  br i1 %351, label %352, label %376

352:                                              ; preds = %349
  store i32 0, i32* %20, align 4
  br label %353

353:                                              ; preds = %372, %352
  %354 = load i32, i32* %20, align 4
  %355 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %356 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %354, %357
  br i1 %358, label %359, label %375

359:                                              ; preds = %353
  %360 = load %struct.beacon_data*, %struct.beacon_data** %21, align 8
  %361 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %18, align 8
  %364 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %365 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %364, i32 0, i32 2
  %366 = load i64*, i64** %365, align 8
  %367 = load i32, i32* %20, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i64, i64* %366, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i32, i32* %363, i64 %370
  store i32 %362, i32* %371, align 4
  br label %372

372:                                              ; preds = %359
  %373 = load i32, i32* %20, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %20, align 4
  br label %353

375:                                              ; preds = %353
  br label %376

376:                                              ; preds = %375, %349
  %377 = call i32 (...) @rcu_read_unlock()
  br label %378

378:                                              ; preds = %376, %300, %294, %262
  %379 = load i32, i32* %16, align 4
  %380 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %381 = call %struct.TYPE_22__* @IEEE80211_SKB_CB(%struct.sk_buff* %380)
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 0
  store i32 %379, i32* %382, align 4
  %383 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %384 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %387 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %386, i32 0, i32 0
  store i32 %385, i32* %387, align 4
  %388 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %389 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %404, label %392

392:                                              ; preds = %378
  %393 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %394 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %395 = load i32*, i32** %9, align 8
  %396 = load i32, i32* @GFP_KERNEL, align 4
  %397 = call i32 @ieee80211_attach_ack_skb(%struct.ieee80211_local* %393, %struct.sk_buff* %394, i32* %395, i32 %396)
  store i32 %397, i32* %17, align 4
  %398 = load i32, i32* %17, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %392
  %401 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %402 = call i32 @kfree_skb(%struct.sk_buff* %401)
  br label %456

403:                                              ; preds = %392
  br label %406

404:                                              ; preds = %378
  %405 = load i32*, i32** %9, align 8
  store i32 -1, i32* %405, align 4
  br label %406

406:                                              ; preds = %404, %403
  %407 = load i32, i32* %15, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %413, label %409

409:                                              ; preds = %406
  %410 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %411 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %412 = call i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data* %410, %struct.sk_buff* %411)
  store i32 0, i32* %17, align 4
  br label %456

413:                                              ; preds = %406
  %414 = load i32, i32* @IEEE80211_TX_CTL_TX_OFFCHAN, align 4
  %415 = load i32, i32* @IEEE80211_TX_INTFL_OFFCHAN_TX_OK, align 4
  %416 = or i32 %414, %415
  %417 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %418 = call %struct.TYPE_22__* @IEEE80211_SKB_CB(%struct.sk_buff* %417)
  %419 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %416
  store i32 %421, i32* %419, align 4
  %422 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %423 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %422, i32 0, i32 1
  %424 = load i32, i32* @QUEUE_CONTROL, align 4
  %425 = call i64 @ieee80211_hw_check(%struct.TYPE_21__* %423, i32 %424)
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %427, label %435

427:                                              ; preds = %413
  %428 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %429 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %433 = call %struct.TYPE_22__* @IEEE80211_SKB_CB(%struct.sk_buff* %432)
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 1
  store i32 %431, i32* %434, align 4
  br label %435

435:                                              ; preds = %427, %413
  %436 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %437 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %10, align 8
  %438 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %439 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.cfg80211_mgmt_tx_params*, %struct.cfg80211_mgmt_tx_params** %8, align 8
  %442 = getelementptr inbounds %struct.cfg80211_mgmt_tx_params, %struct.cfg80211_mgmt_tx_params* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = load i32*, i32** %9, align 8
  %445 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %446 = load i32, i32* @IEEE80211_ROC_TYPE_MGMT_TX, align 4
  %447 = call i32 @ieee80211_start_roc_work(%struct.ieee80211_local* %436, %struct.ieee80211_sub_if_data* %437, i64 %440, i32 %443, i32* %444, %struct.sk_buff* %445, i32 %446)
  store i32 %447, i32* %17, align 4
  %448 = load i32, i32* %17, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %435
  %451 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %452 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %451, i32 0, i32 1
  %453 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %454 = call i32 @ieee80211_free_txskb(%struct.TYPE_21__* %452, %struct.sk_buff* %453)
  br label %455

455:                                              ; preds = %450, %435
  br label %456

456:                                              ; preds = %455, %409, %400, %259, %244, %228
  %457 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %458 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %457, i32 0, i32 0
  %459 = call i32 @mutex_unlock(i32* %458)
  %460 = load i32, i32* %17, align 4
  store i32 %460, i32* %5, align 4
  br label %461

461:                                              ; preds = %456, %187, %176, %126
  %462 = load i32, i32* %5, align 4
  ret i32 %462
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_WDEV_TO_SUB_IF(%struct.wireless_dev*) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_20__*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @ieee80211_is_action(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sta_info* @sta_info_get_bss(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sdata_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @sdata_unlock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32* @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local %struct.TYPE_22__* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_attach_ack_skb(%struct.ieee80211_local*, %struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_skb(%struct.ieee80211_sub_if_data*, %struct.sk_buff*) #1

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ieee80211_start_roc_work(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i64, i32, i32*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.TYPE_21__*, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
