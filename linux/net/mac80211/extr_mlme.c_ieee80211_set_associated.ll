; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_set_associated.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_set_associated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.ieee80211_local* }
%struct.TYPE_8__ = type { i32, i64, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i64, i64, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, %struct.cfg80211_bss*, i32 }
%struct.ieee80211_local = type { i32 }
%struct.cfg80211_bss = type { i32, i32, i64 }
%struct.ieee80211_bss = type { i32*, i32, i32 }
%struct.cfg80211_bss_ies = type { i32, i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@beacon_loss_count = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_STA_RESET_SIGNAL_AVE = common dso_local global i32 0, align 4
@IEEE80211_VIF_GET_NOA_UPDATE = common dso_local global i32 0, align 4
@IEEE80211_P2P_ATTR_ABSENCE_NOTICE = common dso_local global i32 0, align 4
@BSS_CHANGED_P2P_PS = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INFO = common dso_local global i32 0, align 4
@IEEE80211_VIF_SUPPORTS_CQM_RSSI = common dso_local global i32 0, align 4
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.cfg80211_bss*, i32)* @ieee80211_set_associated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_associated(%struct.ieee80211_sub_if_data* %0, %struct.cfg80211_bss* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_bss*, align 8
  %8 = alloca %struct.ieee80211_local*, align 8
  %9 = alloca %struct.ieee80211_bss_conf*, align 8
  %10 = alloca %struct.cfg80211_bss_ies*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %13 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.ieee80211_bss*
  store %struct.ieee80211_bss* %16, %struct.ieee80211_bss** %7, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 3
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  store %struct.ieee80211_local* %19, %struct.ieee80211_local** %8, align 8
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store %struct.ieee80211_bss_conf* %22, %struct.ieee80211_bss_conf** %9, align 8
  %23 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %27 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data* %26, i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @beacon_loss_count, align 4
  %40 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = call i32 @ieee80211_tu_to_usec(i32 %43)
  %45 = call i32 @usecs_to_jiffies(i32 %44)
  %46 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 6
  store i32 %45, i32* %49, align 8
  %50 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  store %struct.cfg80211_bss* %50, %struct.cfg80211_bss** %54, align 8
  %55 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %61 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i32 @memcpy(i32 %59, i32 %62, i32 %63)
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %66 = call i32 @ieee80211_check_rate_mask(%struct.ieee80211_sub_if_data* %65)
  %67 = load i32, i32* @IEEE80211_STA_RESET_SIGNAL_AVE, align 4
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %75 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %3
  %80 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IEEE80211_VIF_GET_NOA_UPDATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %124

87:                                               ; preds = %79, %3
  %88 = call i32 (...) @rcu_read_lock()
  %89 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %90 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.cfg80211_bss_ies* @rcu_dereference(i32 %91)
  store %struct.cfg80211_bss_ies* %92, %struct.cfg80211_bss_ies** %10, align 8
  %93 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %94 = icmp ne %struct.cfg80211_bss_ies* %93, null
  br i1 %94, label %95, label %122

95:                                               ; preds = %87
  %96 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %97 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cfg80211_bss_ies*, %struct.cfg80211_bss_ies** %10, align 8
  %100 = getelementptr inbounds %struct.cfg80211_bss_ies, %struct.cfg80211_bss_ies* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IEEE80211_P2P_ATTR_ABSENCE_NOTICE, align 4
  %103 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %104 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %103, i32 0, i32 6
  %105 = bitcast %struct.TYPE_5__* %104 to i32*
  %106 = call i32 @cfg80211_get_p2p_attr(i32 %98, i32 %101, i32 %102, i32* %105, i32 4)
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp sge i32 %107, 2
  br i1 %108, label %109, label %121

109:                                              ; preds = %95
  %110 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %111 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i32 %113, i32* %117, align 8
  %118 = load i32, i32* @BSS_CHANGED_P2P_PS, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %109, %95
  br label %122

122:                                              ; preds = %121, %87
  %123 = call i32 (...) @rcu_read_unlock()
  br label %124

124:                                              ; preds = %122, %79
  %125 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %126 = call i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %125)
  %127 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %128 = call i32 @ieee80211_led_assoc(%struct.ieee80211_local* %127, i32 1)
  %129 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %157

135:                                              ; preds = %124
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %144

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %142
  %145 = phi i64 [ %140, %142 ], [ 1, %143 ]
  %146 = trunc i64 %145 to i32
  %147 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %148 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.ieee80211_bss*, %struct.ieee80211_bss** %7, align 8
  %150 = getelementptr inbounds %struct.ieee80211_bss, %struct.ieee80211_bss* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %153 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %152, i32 0, i32 5
  store i32* %151, i32** %153, align 8
  %154 = load i32, i32* @BSS_CHANGED_BEACON_INFO, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %162

157:                                              ; preds = %124
  %158 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %159 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %158, i32 0, i32 5
  store i32* null, i32** %159, align 8
  %160 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %161 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %144
  %163 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %164 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %163, i32 0, i32 2
  store i32 1, i32* %164, align 8
  %165 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IEEE80211_VIF_SUPPORTS_CQM_RSSI, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %162
  %173 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %174 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %179 = load i32, i32* %6, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %177, %172, %162
  %182 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %9, align 8
  %183 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %188 = load i32, i32* %6, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %186, %181
  %191 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %191, i32 %192)
  %194 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %195 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %194, i32 0, i32 0
  %196 = call i32 @mutex_lock(i32* %195)
  %197 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %198 = call i32 @ieee80211_recalc_ps(%struct.ieee80211_local* %197)
  %199 = load %struct.ieee80211_local*, %struct.ieee80211_local** %8, align 8
  %200 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %199, i32 0, i32 0
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %203 = call i32 @ieee80211_recalc_smps(%struct.ieee80211_sub_if_data* %202)
  %204 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %205 = call i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data* %204)
  %206 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %207 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @netif_carrier_on(i32 %208)
  ret void
}

declare dso_local i32 @ieee80211_handle_bss_capability(%struct.ieee80211_sub_if_data*, i32, i32, i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @ieee80211_tu_to_usec(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ieee80211_check_rate_mask(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cfg80211_bss_ies* @rcu_dereference(i32) #1

declare dso_local i32 @cfg80211_get_p2p_attr(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_led_assoc(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_recalc_ps(%struct.ieee80211_local*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_recalc_smps(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
