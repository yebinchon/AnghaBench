; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_beacon_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tx.c___ieee80211_beacon_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_mutable_offsets = type { i32, i32, %struct.TYPE_13__, %struct.sk_buff*, i32*, i32, %struct.ieee80211_hw*, i64*, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32* }
%struct.beacon_data = type { i64*, i64, i64, i64, i64 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_sub_if_data = type { i32*, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.ieee80211_if_mesh, %struct.ieee80211_if_ibss, %struct.ieee80211_if_ap }
%struct.ieee80211_if_mesh = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 (%struct.ieee80211_sub_if_data*, %struct.beacon_data*)* }
%struct.ieee80211_if_ibss = type { i32 }
%struct.ieee80211_if_ap = type { i32, i32 }
%struct.ieee80211_tx_rate_control = type { i32, i32, %struct.TYPE_13__, %struct.sk_buff*, i32*, i32, %struct.ieee80211_hw*, i64*, i64, i64 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_BEACON = common dso_local global i32 0, align 4
@IEEE80211_MAX_CSA_COUNTERS_NUM = common dso_local global i32 0, align 4
@IEEE80211_TX_INTFL_DONT_ENCRYPT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_CLEAR_PS_FILT = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_ASSIGN_SEQ = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_mutable_offsets*, i32)* @__ieee80211_beacon_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @__ieee80211_beacon_get(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_mutable_offsets* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_mutable_offsets*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_local*, align 8
  %10 = alloca %struct.beacon_data*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca %struct.ieee80211_sub_if_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_tx_rate_control, align 8
  %16 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_if_ap*, align 8
  %19 = alloca %struct.ieee80211_if_ibss*, align 8
  %20 = alloca %struct.ieee80211_hdr*, align 8
  %21 = alloca %struct.ieee80211_if_mesh*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_mutable_offsets* %2, %struct.ieee80211_mutable_offsets** %7, align 8
  store i32 %3, i32* %8, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = call %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw* %24)
  store %struct.ieee80211_local* %25, %struct.ieee80211_local** %9, align 8
  store %struct.beacon_data* null, %struct.beacon_data** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  store %struct.ieee80211_sub_if_data* null, %struct.ieee80211_sub_if_data** %13, align 8
  store i32 0, i32* %17, align 4
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %28 = call %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif* %27)
  store %struct.ieee80211_sub_if_data* %28, %struct.ieee80211_sub_if_data** %13, align 8
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @rcu_dereference(i32 %32)
  %34 = bitcast i8* %33 to %struct.ieee80211_chanctx_conf*
  store %struct.ieee80211_chanctx_conf* %34, %struct.ieee80211_chanctx_conf** %16, align 8
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %36 = call i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %16, align 8
  %40 = icmp ne %struct.ieee80211_chanctx_conf* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %38, %4
  br label %467

42:                                               ; preds = %38
  %43 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %44 = icmp ne %struct.ieee80211_mutable_offsets* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %47 = bitcast %struct.ieee80211_mutable_offsets* %46 to %struct.ieee80211_tx_rate_control*
  %48 = call i32 @memset(%struct.ieee80211_tx_rate_control* %47, i32 0, i32 72)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %164

56:                                               ; preds = %49
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 2
  store %struct.ieee80211_if_ap* %59, %struct.ieee80211_if_ap** %18, align 8
  %60 = load %struct.ieee80211_if_ap*, %struct.ieee80211_if_ap** %18, align 8
  %61 = getelementptr inbounds %struct.ieee80211_if_ap, %struct.ieee80211_if_ap* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @rcu_dereference(i32 %62)
  %64 = bitcast i8* %63 to %struct.beacon_data*
  store %struct.beacon_data* %64, %struct.beacon_data** %10, align 8
  %65 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %66 = icmp ne %struct.beacon_data* %65, null
  br i1 %66, label %67, label %162

67:                                               ; preds = %56
  %68 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %69 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %79 = call i32 @__ieee80211_csa_update_counter(%struct.beacon_data* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %82 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %83 = call i32 @ieee80211_set_csa(%struct.ieee80211_sub_if_data* %81, %struct.beacon_data* %82)
  br label %84

84:                                               ; preds = %80, %67
  %85 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %86 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %89 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %93 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = add nsw i64 %95, 256
  %97 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %98 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %96, %100
  %102 = call %struct.sk_buff* @dev_alloc_skb(i64 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %11, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %104 = icmp ne %struct.sk_buff* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %84
  br label %467

106:                                              ; preds = %84
  %107 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %108 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %109 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @skb_reserve(%struct.sk_buff* %107, i64 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %113 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %114 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %117 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @skb_put_data(%struct.sk_buff* %112, i64 %115, i64 %118)
  %120 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %121 = load %struct.ieee80211_if_ap*, %struct.ieee80211_if_ap** %18, align 8
  %122 = getelementptr inbounds %struct.ieee80211_if_ap, %struct.ieee80211_if_ap* %121, i32 0, i32 0
  %123 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %120, i32* %122, %struct.sk_buff* %123, i32 %124)
  %126 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %127 = icmp ne %struct.ieee80211_mutable_offsets* %126, null
  br i1 %127, label %128, label %147

128:                                              ; preds = %106
  %129 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %130 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %133 = getelementptr inbounds %struct.ieee80211_mutable_offsets, %struct.ieee80211_mutable_offsets* %132, i32 0, i32 9
  store i64 %131, i64* %133, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %139 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = sub nsw i64 %137, %140
  %142 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %143 = getelementptr inbounds %struct.ieee80211_mutable_offsets, %struct.ieee80211_mutable_offsets* %142, i32 0, i32 8
  store i64 %141, i64* %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %17, align 4
  br label %147

147:                                              ; preds = %128, %106
  %148 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %149 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %154 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %155 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %158 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @skb_put_data(%struct.sk_buff* %153, i64 %156, i64 %159)
  br label %161

161:                                              ; preds = %152, %147
  br label %163

162:                                              ; preds = %56
  br label %467

163:                                              ; preds = %161
  br label %362

164:                                              ; preds = %49
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %241

171:                                              ; preds = %164
  %172 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %173 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  store %struct.ieee80211_if_ibss* %174, %struct.ieee80211_if_ibss** %19, align 8
  %175 = load %struct.ieee80211_if_ibss*, %struct.ieee80211_if_ibss** %19, align 8
  %176 = getelementptr inbounds %struct.ieee80211_if_ibss, %struct.ieee80211_if_ibss* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @rcu_dereference(i32 %177)
  %179 = bitcast i8* %178 to %struct.beacon_data*
  store %struct.beacon_data* %179, %struct.beacon_data** %10, align 8
  %180 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %181 = icmp ne %struct.beacon_data* %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %171
  br label %467

183:                                              ; preds = %171
  %184 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %185 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %184, i32 0, i32 0
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %183
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %195 = call i32 @__ieee80211_csa_update_counter(%struct.beacon_data* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %198 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %199 = call i32 @ieee80211_set_csa(%struct.ieee80211_sub_if_data* %197, %struct.beacon_data* %198)
  br label %200

200:                                              ; preds = %196, %183
  %201 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %202 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %205 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = add nsw i64 %203, %206
  %208 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %209 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %207, %211
  %213 = call %struct.sk_buff* @dev_alloc_skb(i64 %212)
  store %struct.sk_buff* %213, %struct.sk_buff** %11, align 8
  %214 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %215 = icmp ne %struct.sk_buff* %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %200
  br label %467

217:                                              ; preds = %200
  %218 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %219 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %220 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @skb_reserve(%struct.sk_buff* %218, i64 %221)
  %223 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %224 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %225 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %228 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @skb_put_data(%struct.sk_buff* %223, i64 %226, i64 %229)
  %231 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %234, %struct.ieee80211_hdr** %20, align 8
  %235 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %236 = load i32, i32* @IEEE80211_STYPE_BEACON, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @cpu_to_le16(i32 %237)
  %239 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %20, align 8
  %240 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  br label %361

241:                                              ; preds = %164
  %242 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %243 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %242, i32 0, i32 1
  %244 = call i64 @ieee80211_vif_is_mesh(%struct.TYPE_18__* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %358

246:                                              ; preds = %241
  %247 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %248 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %249, %struct.ieee80211_if_mesh** %21, align 8
  %250 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %251 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i8* @rcu_dereference(i32 %252)
  %254 = bitcast i8* %253 to %struct.beacon_data*
  store %struct.beacon_data* %254, %struct.beacon_data** %10, align 8
  %255 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %256 = icmp ne %struct.beacon_data* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %246
  br label %467

258:                                              ; preds = %246
  %259 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %260 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %259, i32 0, i32 0
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 0
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %275

265:                                              ; preds = %258
  %266 = load i32, i32* %8, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %265
  %269 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %270 = call i32 @__ieee80211_csa_update_counter(%struct.beacon_data* %269)
  br label %271

271:                                              ; preds = %268, %265
  %272 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %273 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %274 = call i32 @ieee80211_set_csa(%struct.ieee80211_sub_if_data* %272, %struct.beacon_data* %273)
  br label %275

275:                                              ; preds = %271, %258
  %276 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %277 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %276, i32 0, i32 1
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = icmp ne %struct.TYPE_16__* %278, null
  br i1 %279, label %280, label %289

280:                                              ; preds = %275
  %281 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %282 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %281, i32 0, i32 1
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 0
  %285 = load i32 (%struct.ieee80211_sub_if_data*, %struct.beacon_data*)*, i32 (%struct.ieee80211_sub_if_data*, %struct.beacon_data*)** %284, align 8
  %286 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %287 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %288 = call i32 %285(%struct.ieee80211_sub_if_data* %286, %struct.beacon_data* %287)
  br label %289

289:                                              ; preds = %280, %275
  %290 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %291 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %294 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %292, %295
  %297 = add nsw i64 %296, 256
  %298 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %299 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %297, %300
  %302 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %303 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = add nsw i64 %301, %305
  %307 = call %struct.sk_buff* @dev_alloc_skb(i64 %306)
  store %struct.sk_buff* %307, %struct.sk_buff** %11, align 8
  %308 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %309 = icmp ne %struct.sk_buff* %308, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %289
  br label %467

311:                                              ; preds = %289
  %312 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %313 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %314 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = call i32 @skb_reserve(%struct.sk_buff* %312, i64 %315)
  %317 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %318 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %319 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %322 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %321, i32 0, i32 3
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @skb_put_data(%struct.sk_buff* %317, i64 %320, i64 %323)
  %325 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %326 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %21, align 8
  %327 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %326, i32 0, i32 0
  %328 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %329 = load i32, i32* %8, align 4
  %330 = call i32 @ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data* %325, i32* %327, %struct.sk_buff* %328, i32 %329)
  %331 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %332 = icmp ne %struct.ieee80211_mutable_offsets* %331, null
  br i1 %332, label %333, label %349

333:                                              ; preds = %311
  %334 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %335 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %338 = getelementptr inbounds %struct.ieee80211_mutable_offsets, %struct.ieee80211_mutable_offsets* %337, i32 0, i32 9
  store i64 %336, i64* %338, align 8
  %339 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %340 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = sext i32 %341 to i64
  %343 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %344 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = sub nsw i64 %342, %345
  %347 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %348 = getelementptr inbounds %struct.ieee80211_mutable_offsets, %struct.ieee80211_mutable_offsets* %347, i32 0, i32 8
  store i64 %346, i64* %348, align 8
  br label %349

349:                                              ; preds = %333, %311
  %350 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %351 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %352 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %355 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = call i32 @skb_put_data(%struct.sk_buff* %350, i64 %353, i64 %356)
  br label %360

358:                                              ; preds = %241
  %359 = call i32 @WARN_ON(i32 1)
  br label %467

360:                                              ; preds = %349
  br label %361

361:                                              ; preds = %360, %217
  br label %362

362:                                              ; preds = %361, %163
  %363 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %364 = icmp ne %struct.ieee80211_mutable_offsets* %363, null
  br i1 %364, label %365, label %399

365:                                              ; preds = %362
  %366 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %367 = icmp ne %struct.beacon_data* %366, null
  br i1 %367, label %368, label %399

368:                                              ; preds = %365
  store i32 0, i32* %22, align 4
  br label %369

369:                                              ; preds = %395, %368
  %370 = load i32, i32* %22, align 4
  %371 = load i32, i32* @IEEE80211_MAX_CSA_COUNTERS_NUM, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %398

373:                                              ; preds = %369
  %374 = load %struct.beacon_data*, %struct.beacon_data** %10, align 8
  %375 = getelementptr inbounds %struct.beacon_data, %struct.beacon_data* %374, i32 0, i32 0
  %376 = load i64*, i64** %375, align 8
  %377 = load i32, i32* %22, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i64, i64* %376, i64 %378
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %23, align 8
  %381 = load i64, i64* %23, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %384, label %383

383:                                              ; preds = %373
  br label %395

384:                                              ; preds = %373
  %385 = load i32, i32* %17, align 4
  %386 = sext i32 %385 to i64
  %387 = load i64, i64* %23, align 8
  %388 = add nsw i64 %386, %387
  %389 = load %struct.ieee80211_mutable_offsets*, %struct.ieee80211_mutable_offsets** %7, align 8
  %390 = getelementptr inbounds %struct.ieee80211_mutable_offsets, %struct.ieee80211_mutable_offsets* %389, i32 0, i32 7
  %391 = load i64*, i64** %390, align 8
  %392 = load i32, i32* %22, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64, i64* %391, i64 %393
  store i64 %388, i64* %394, align 8
  br label %395

395:                                              ; preds = %384, %383
  %396 = load i32, i32* %22, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %22, align 4
  br label %369

398:                                              ; preds = %369
  br label %399

399:                                              ; preds = %398, %365, %362
  %400 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %16, align 8
  %401 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_10__*, %struct.TYPE_10__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %14, align 4
  %406 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %407 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %406)
  store %struct.ieee80211_tx_info* %407, %struct.ieee80211_tx_info** %12, align 8
  %408 = load i32, i32* @IEEE80211_TX_INTFL_DONT_ENCRYPT, align 4
  %409 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %410 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 8
  %413 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %414 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %415 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = or i32 %416, %413
  store i32 %417, i32* %415, align 8
  %418 = load i32, i32* %14, align 4
  %419 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %420 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %419, i32 0, i32 1
  store i32 %418, i32* %420, align 4
  %421 = call i32 @memset(%struct.ieee80211_tx_rate_control* %15, i32 0, i32 72)
  %422 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %423 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 6
  store %struct.ieee80211_hw* %422, %struct.ieee80211_hw** %423, align 8
  %424 = load %struct.ieee80211_local*, %struct.ieee80211_local** %9, align 8
  %425 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 0
  %429 = load i32*, i32** %428, align 8
  %430 = load i32, i32* %14, align 4
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %429, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 5
  store i32 %433, i32* %434, align 8
  %435 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %436 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 4
  store i32* %437, i32** %438, align 8
  %439 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %440 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 3
  store %struct.sk_buff* %439, %struct.sk_buff** %440, align 8
  %441 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 2
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 0
  store i32 -1, i32* %442, align 8
  %443 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %444 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %14, align 4
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 1
  store i32 %449, i32* %450, align 4
  %451 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %15, i32 0, i32 0
  store i32 1, i32* %451, align 8
  %452 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %13, align 8
  %453 = call i32 @rate_control_get_rate(%struct.ieee80211_sub_if_data* %452, i32* null, %struct.ieee80211_tx_rate_control* %15)
  %454 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %455 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %456 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %455, i32 0, i32 2
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 0
  store %struct.ieee80211_vif* %454, %struct.ieee80211_vif** %457, align 8
  %458 = load i32, i32* @IEEE80211_TX_CTL_CLEAR_PS_FILT, align 4
  %459 = load i32, i32* @IEEE80211_TX_CTL_ASSIGN_SEQ, align 4
  %460 = or i32 %458, %459
  %461 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %462 = or i32 %460, %461
  %463 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %464 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = or i32 %465, %462
  store i32 %466, i32* %464, align 8
  br label %467

467:                                              ; preds = %399, %358, %310, %257, %216, %182, %162, %105, %41
  %468 = call i32 (...) @rcu_read_unlock()
  %469 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  ret %struct.sk_buff* %469
}

declare dso_local %struct.ieee80211_local* @hw_to_local(%struct.ieee80211_hw*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sub_if_data* @vif_to_sdata(%struct.ieee80211_vif*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @ieee80211_sdata_running(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_rate_control*, i32, i32) #1

declare dso_local i32 @__ieee80211_csa_update_counter(%struct.beacon_data*) #1

declare dso_local i32 @ieee80211_set_csa(%struct.ieee80211_sub_if_data*, %struct.beacon_data*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @ieee80211_beacon_add_tim(%struct.ieee80211_sub_if_data*, i32*, %struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ieee80211_vif_is_mesh(%struct.TYPE_18__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rate_control_get_rate(%struct.ieee80211_sub_if_data*, i32*, %struct.ieee80211_tx_rate_control*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
