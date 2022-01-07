; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_set_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_set_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_9__, i32, %struct.ieee80211_local*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32*, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_9__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.ieee80211_local = type { i32, i32, i32, %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@DEAUTH_NEED_MGD_TX_PREP = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_MU_GROUPS = common dso_local global i32 0, align 4
@IEEE80211_UNSET_POWER_LEVEL = common dso_local global i32 0, align 4
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@BSS_CHANGED_QOS = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@IEEE80211_QUEUE_STOP_REASON_CSA = common dso_local global i32 0, align 4
@IEEE80211_ENCRYPT_HEADROOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*)* @ieee80211_set_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ieee80211_if_managed*, align 8
  %12 = alloca %struct.ieee80211_local*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.ieee80211_if_managed* %16, %struct.ieee80211_if_managed** %11, align 8
  %17 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %17, i32 0, i32 5
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %18, align 8
  store %struct.ieee80211_local* %19, %struct.ieee80211_local** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %21 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %20)
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %24, %5
  %29 = phi i1 [ false, %5 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON_ONCE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %293

34:                                               ; preds = %28
  %35 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %36 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %35, i32 0, i32 16
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %293

44:                                               ; preds = %34
  %45 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %46 = call i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data* %45)
  %47 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %48 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %47, i32 0, i32 16
  store i32* null, i32** %48, align 8
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @netif_carrier_off(i32 %51)
  %53 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %54 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %44
  %62 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %65 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %63
  store i32 %69, i32* %67, align 4
  %70 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %71 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %72 = call i32 @ieee80211_hw_config(%struct.ieee80211_local* %70, i32 %71)
  br label %73

73:                                               ; preds = %61, %44
  %74 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %75 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %74, i32 0, i32 4
  store i32* null, i32** %75, align 8
  %76 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %77 = call i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data* %76)
  %78 = call i32 (...) @synchronize_net()
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %84 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %82, %struct.ieee80211_sub_if_data* %83, i32 1)
  br label %85

85:                                               ; preds = %81, %73
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %121

91:                                               ; preds = %88, %85
  %92 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %93 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %92, i32 0, i32 3
  %94 = load i32, i32* @DEAUTH_NEED_MGD_TX_PREP, align 4
  %95 = call i64 @ieee80211_hw_check(%struct.TYPE_12__* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %99 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %97
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %103, i32 0, i32 5
  %105 = load %struct.ieee80211_local*, %struct.ieee80211_local** %104, align 8
  %106 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %107 = call i32 @drv_mgd_prepare_tx(%struct.ieee80211_local* %105, %struct.ieee80211_sub_if_data* %106, i32 0)
  br label %108

108:                                              ; preds = %102, %97, %91
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %110 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %111 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %110, i32 0, i32 15
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %114 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %113, i32 0, i32 15
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = call i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data* %109, i32 %112, i32 %115, i32 %116, i32 %117, i32 %118, i32* %119)
  br label %121

121:                                              ; preds = %108, %88
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %126 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %127 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %125, %struct.ieee80211_sub_if_data* %126, i32 0)
  br label %128

128:                                              ; preds = %124, %121
  %129 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %130 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %129, i32 0, i32 15
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @eth_zero_addr(i32 %131)
  %133 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %134 = call i32 @sta_info_flush(%struct.ieee80211_sub_if_data* %133)
  %135 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %136 = call i32 @ieee80211_reset_erp_info(%struct.ieee80211_sub_if_data* %135)
  %137 = load i32, i32* %13, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %13, align 4
  %139 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %140 = call i32 @ieee80211_led_assoc(%struct.ieee80211_local* %139, i32 0)
  %141 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %142 = load i32, i32* %13, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %13, align 4
  %144 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %145 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  %148 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %149 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %148, i32 0, i32 1
  store i32 -1, i32* %149, align 4
  %150 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %151 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 6
  %154 = call i32 @memset(i32* %153, i32 0, i32 4)
  %155 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %156 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %155, i32 0, i32 14
  %157 = call i32 @memset(i32* %156, i32 0, i32 4)
  %158 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %159 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %158, i32 0, i32 13
  %160 = call i32 @memset(i32* %159, i32 0, i32 4)
  %161 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %162 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %161, i32 0, i32 12
  %163 = call i32 @memset(i32* %162, i32 0, i32 4)
  %164 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %165 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %164, i32 0, i32 11
  %166 = call i32 @memset(i32* %165, i32 0, i32 4)
  %167 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %168 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @memset(i32* %172, i32 0, i32 8)
  %174 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %175 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @memset(i32* %179, i32 0, i32 8)
  %181 = load i32, i32* @BSS_CHANGED_MU_GROUPS, align 4
  %182 = load i32, i32* %13, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %13, align 4
  %184 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %185 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 8
  %187 = load i32, i32* @IEEE80211_UNSET_POWER_LEVEL, align 4
  %188 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %189 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %188, i32 0, i32 4
  store i32 %187, i32* %189, align 8
  %190 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %191 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %190, i32 0, i32 2
  %192 = call i32 @del_timer_sync(i32* %191)
  %193 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %194 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %193, i32 0, i32 1
  %195 = call i32 @cancel_work_sync(i32* %194)
  %196 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %197 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %128
  %203 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %204 = load i32, i32* %13, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %202, %128
  %207 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %208 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load i32, i32* @BSS_CHANGED_QOS, align 4
  %212 = load i32, i32* %13, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %215 = load i32, i32* @BSS_CHANGED_HT, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %13, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %13, align 4
  %219 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data* %219, i32 %220)
  %222 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %223 = call i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data* %222, i32 0, i32 0)
  %224 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %225 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %226, i32 0, i32 10
  %228 = call i32 @del_timer_sync(i32* %227)
  %229 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %230 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %231, i32 0, i32 9
  %233 = call i32 @del_timer_sync(i32* %232)
  %234 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %235 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %234, i32 0, i32 3
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %236, i32 0, i32 8
  %238 = call i32 @del_timer_sync(i32* %237)
  %239 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %240 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %241, i32 0, i32 7
  %243 = call i32 @del_timer_sync(i32* %242)
  %244 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %245 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 3
  store i64 0, i64* %247, align 8
  %248 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %249 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 2
  store i32* null, i32** %251, align 8
  %252 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %253 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %252, i32 0, i32 0
  store i32 0, i32* %253, align 8
  %254 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %255 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %254, i32 0, i32 6
  store i64 0, i64* %255, align 8
  %256 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %257 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %256, i32 0, i32 0
  %258 = call i32 @mutex_lock(i32* %257)
  %259 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %260 = call i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data* %259)
  %261 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %262 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  store i32 0, i32* %263, align 4
  %264 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %265 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %264, i32 0, i32 2
  store i32 0, i32* %265, align 8
  %266 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %267 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %266, i32 0, i32 3
  store i32 0, i32* %267, align 4
  %268 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %269 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %206
  %273 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %274 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %275 = load i32, i32* @IEEE80211_QUEUE_STOP_REASON_CSA, align 4
  %276 = call i32 @ieee80211_wake_vif_queues(%struct.ieee80211_local* %273, %struct.ieee80211_sub_if_data* %274, i32 %275)
  %277 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %278 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %277, i32 0, i32 0
  store i32 0, i32* %278, align 8
  br label %279

279:                                              ; preds = %272, %206
  %280 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  %281 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %280, i32 0, i32 0
  %282 = call i32 @mutex_unlock(i32* %281)
  %283 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %284 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %283, i32 0, i32 5
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @memset(i32* %285, i32 0, i32 8)
  %287 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %11, align 8
  %288 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %287, i32 0, i32 4
  %289 = call i32 @cancel_delayed_work_sync(i32* %288)
  %290 = load i32, i32* @IEEE80211_ENCRYPT_HEADROOM, align 4
  %291 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %292 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  br label %293

293:                                              ; preds = %279, %43, %33
  ret void
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_stop_poll(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @ieee80211_hw_config(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @ieee80211_recalc_ps_vif(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @drv_mgd_prepare_tx(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_send_deauth_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @sta_info_flush(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_reset_erp_info(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_led_assoc(%struct.ieee80211_local*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @ieee80211_bss_info_change_notify(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_set_wmm_default(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_vif_release_channel(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ieee80211_wake_vif_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
