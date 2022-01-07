; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_add_commands_unsplit.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_add_commands_unsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.sk_buff = type { i32 }

@add_virtual_intf = common dso_local global i32 0, align 4
@NEW_INTERFACE = common dso_local global i32 0, align 4
@change_virtual_intf = common dso_local global i32 0, align 4
@SET_INTERFACE = common dso_local global i32 0, align 4
@add_key = common dso_local global i32 0, align 4
@NEW_KEY = common dso_local global i32 0, align 4
@start_ap = common dso_local global i32 0, align 4
@START_AP = common dso_local global i32 0, align 4
@add_station = common dso_local global i32 0, align 4
@NEW_STATION = common dso_local global i32 0, align 4
@add_mpath = common dso_local global i32 0, align 4
@NEW_MPATH = common dso_local global i32 0, align 4
@update_mesh_config = common dso_local global i32 0, align 4
@SET_MESH_CONFIG = common dso_local global i32 0, align 4
@change_bss = common dso_local global i32 0, align 4
@SET_BSS = common dso_local global i32 0, align 4
@auth = common dso_local global i32 0, align 4
@AUTHENTICATE = common dso_local global i32 0, align 4
@assoc = common dso_local global i32 0, align 4
@ASSOCIATE = common dso_local global i32 0, align 4
@deauth = common dso_local global i32 0, align 4
@DEAUTHENTICATE = common dso_local global i32 0, align 4
@disassoc = common dso_local global i32 0, align 4
@DISASSOCIATE = common dso_local global i32 0, align 4
@join_ibss = common dso_local global i32 0, align 4
@JOIN_IBSS = common dso_local global i32 0, align 4
@join_mesh = common dso_local global i32 0, align 4
@JOIN_MESH = common dso_local global i32 0, align 4
@set_pmksa = common dso_local global i32 0, align 4
@SET_PMKSA = common dso_local global i32 0, align 4
@del_pmksa = common dso_local global i32 0, align 4
@DEL_PMKSA = common dso_local global i32 0, align 4
@flush_pmksa = common dso_local global i32 0, align 4
@FLUSH_PMKSA = common dso_local global i32 0, align 4
@WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@remain_on_channel = common dso_local global i32 0, align 4
@REMAIN_ON_CHANNEL = common dso_local global i32 0, align 4
@set_bitrate_mask = common dso_local global i32 0, align 4
@SET_TX_BITRATE_MASK = common dso_local global i32 0, align 4
@mgmt_tx = common dso_local global i32 0, align 4
@FRAME = common dso_local global i32 0, align 4
@mgmt_tx_cancel_wait = common dso_local global i32 0, align 4
@FRAME_WAIT_CANCEL = common dso_local global i32 0, align 4
@WIPHY_FLAG_NETNS_OK = common dso_local global i32 0, align 4
@NL80211_CMD_SET_WIPHY_NETNS = common dso_local global i32 0, align 4
@NL80211_CMD_SET_CHANNEL = common dso_local global i32 0, align 4
@set_wds_peer = common dso_local global i32 0, align 4
@SET_WDS_PEER = common dso_local global i32 0, align 4
@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@tdls_mgmt = common dso_local global i32 0, align 4
@TDLS_MGMT = common dso_local global i32 0, align 4
@tdls_oper = common dso_local global i32 0, align 4
@TDLS_OPER = common dso_local global i32 0, align 4
@sched_scan_start = common dso_local global i32 0, align 4
@START_SCHED_SCAN = common dso_local global i32 0, align 4
@probe_client = common dso_local global i32 0, align 4
@PROBE_CLIENT = common dso_local global i32 0, align 4
@set_noack_map = common dso_local global i32 0, align 4
@SET_NOACK_MAP = common dso_local global i32 0, align 4
@WIPHY_FLAG_REPORTS_OBSS = common dso_local global i32 0, align 4
@NL80211_CMD_REGISTER_BEACONS = common dso_local global i32 0, align 4
@start_p2p_device = common dso_local global i32 0, align 4
@START_P2P_DEVICE = common dso_local global i32 0, align 4
@set_mcast_rate = common dso_local global i32 0, align 4
@SET_MCAST_RATE = common dso_local global i32 0, align 4
@NL80211_CMD_CONNECT = common dso_local global i32 0, align 4
@NL80211_CMD_DISCONNECT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TESTMODE = common dso_local global i32 0, align 4
@testmode_cmd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_registered_device*, %struct.sk_buff*)* @nl80211_add_commands_unsplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_add_commands_unsplit(%struct.cfg80211_registered_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_registered_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @add_virtual_intf, align 4
  %8 = load i32, i32* @NEW_INTERFACE, align 4
  %9 = call i32 @CMD(i32 %7, i32 %8)
  %10 = load i32, i32* @change_virtual_intf, align 4
  %11 = load i32, i32* @SET_INTERFACE, align 4
  %12 = call i32 @CMD(i32 %10, i32 %11)
  %13 = load i32, i32* @add_key, align 4
  %14 = load i32, i32* @NEW_KEY, align 4
  %15 = call i32 @CMD(i32 %13, i32 %14)
  %16 = load i32, i32* @start_ap, align 4
  %17 = load i32, i32* @START_AP, align 4
  %18 = call i32 @CMD(i32 %16, i32 %17)
  %19 = load i32, i32* @add_station, align 4
  %20 = load i32, i32* @NEW_STATION, align 4
  %21 = call i32 @CMD(i32 %19, i32 %20)
  %22 = load i32, i32* @add_mpath, align 4
  %23 = load i32, i32* @NEW_MPATH, align 4
  %24 = call i32 @CMD(i32 %22, i32 %23)
  %25 = load i32, i32* @update_mesh_config, align 4
  %26 = load i32, i32* @SET_MESH_CONFIG, align 4
  %27 = call i32 @CMD(i32 %25, i32 %26)
  %28 = load i32, i32* @change_bss, align 4
  %29 = load i32, i32* @SET_BSS, align 4
  %30 = call i32 @CMD(i32 %28, i32 %29)
  %31 = load i32, i32* @auth, align 4
  %32 = load i32, i32* @AUTHENTICATE, align 4
  %33 = call i32 @CMD(i32 %31, i32 %32)
  %34 = load i32, i32* @assoc, align 4
  %35 = load i32, i32* @ASSOCIATE, align 4
  %36 = call i32 @CMD(i32 %34, i32 %35)
  %37 = load i32, i32* @deauth, align 4
  %38 = load i32, i32* @DEAUTHENTICATE, align 4
  %39 = call i32 @CMD(i32 %37, i32 %38)
  %40 = load i32, i32* @disassoc, align 4
  %41 = load i32, i32* @DISASSOCIATE, align 4
  %42 = call i32 @CMD(i32 %40, i32 %41)
  %43 = load i32, i32* @join_ibss, align 4
  %44 = load i32, i32* @JOIN_IBSS, align 4
  %45 = call i32 @CMD(i32 %43, i32 %44)
  %46 = load i32, i32* @join_mesh, align 4
  %47 = load i32, i32* @JOIN_MESH, align 4
  %48 = call i32 @CMD(i32 %46, i32 %47)
  %49 = load i32, i32* @set_pmksa, align 4
  %50 = load i32, i32* @SET_PMKSA, align 4
  %51 = call i32 @CMD(i32 %49, i32 %50)
  %52 = load i32, i32* @del_pmksa, align 4
  %53 = load i32, i32* @DEL_PMKSA, align 4
  %54 = call i32 @CMD(i32 %52, i32 %53)
  %55 = load i32, i32* @flush_pmksa, align 4
  %56 = load i32, i32* @FLUSH_PMKSA, align 4
  %57 = call i32 @CMD(i32 %55, i32 %56)
  %58 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %59 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @WIPHY_FLAG_HAS_REMAIN_ON_CHANNEL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %2
  %66 = load i32, i32* @remain_on_channel, align 4
  %67 = load i32, i32* @REMAIN_ON_CHANNEL, align 4
  %68 = call i32 @CMD(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %2
  %70 = load i32, i32* @set_bitrate_mask, align 4
  %71 = load i32, i32* @SET_TX_BITRATE_MASK, align 4
  %72 = call i32 @CMD(i32 %70, i32 %71)
  %73 = load i32, i32* @mgmt_tx, align 4
  %74 = load i32, i32* @FRAME, align 4
  %75 = call i32 @CMD(i32 %73, i32 %74)
  %76 = load i32, i32* @mgmt_tx_cancel_wait, align 4
  %77 = load i32, i32* @FRAME_WAIT_CANCEL, align 4
  %78 = call i32 @CMD(i32 %76, i32 %77)
  %79 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %80 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @WIPHY_FLAG_NETNS_OK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %69
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @NL80211_CMD_SET_WIPHY_NETNS, align 4
  %92 = call i64 @nla_put_u32(%struct.sk_buff* %89, i32 %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %235

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %69
  %97 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %98 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %96
  %104 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %105 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %112 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %110, %103, %96
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @NL80211_CMD_SET_CHANNEL, align 4
  %123 = call i64 @nla_put_u32(%struct.sk_buff* %120, i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  br label %235

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126, %110
  %128 = load i32, i32* @set_wds_peer, align 4
  %129 = load i32, i32* @SET_WDS_PEER, align 4
  %130 = call i32 @CMD(i32 %128, i32 %129)
  %131 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %132 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %127
  %139 = load i32, i32* @tdls_mgmt, align 4
  %140 = load i32, i32* @TDLS_MGMT, align 4
  %141 = call i32 @CMD(i32 %139, i32 %140)
  %142 = load i32, i32* @tdls_oper, align 4
  %143 = load i32, i32* @TDLS_OPER, align 4
  %144 = call i32 @CMD(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %127
  %146 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %147 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = load i32, i32* @sched_scan_start, align 4
  %153 = load i32, i32* @START_SCHED_SCAN, align 4
  %154 = call i32 @CMD(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %145
  %156 = load i32, i32* @probe_client, align 4
  %157 = load i32, i32* @PROBE_CLIENT, align 4
  %158 = call i32 @CMD(i32 %156, i32 %157)
  %159 = load i32, i32* @set_noack_map, align 4
  %160 = load i32, i32* @SET_NOACK_MAP, align 4
  %161 = call i32 @CMD(i32 %159, i32 %160)
  %162 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %163 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @WIPHY_FLAG_REPORTS_OBSS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %155
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @NL80211_CMD_REGISTER_BEACONS, align 4
  %175 = call i64 @nla_put_u32(%struct.sk_buff* %172, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %235

178:                                              ; preds = %169
  br label %179

179:                                              ; preds = %178, %155
  %180 = load i32, i32* @start_p2p_device, align 4
  %181 = load i32, i32* @START_P2P_DEVICE, align 4
  %182 = call i32 @CMD(i32 %180, i32 %181)
  %183 = load i32, i32* @set_mcast_rate, align 4
  %184 = load i32, i32* @SET_MCAST_RATE, align 4
  %185 = call i32 @CMD(i32 %183, i32 %184)
  %186 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %187 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %179
  %193 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %194 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %192, %179
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* @NL80211_CMD_CONNECT, align 4
  %205 = call i64 @nla_put_u32(%struct.sk_buff* %202, i32 %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  br label %235

208:                                              ; preds = %199
  br label %209

209:                                              ; preds = %208, %192
  %210 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %211 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %210, i32 0, i32 0
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %209
  %217 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %4, align 8
  %218 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %217, i32 0, i32 0
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %216, %209
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  %226 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* @NL80211_CMD_DISCONNECT, align 4
  %229 = call i64 @nla_put_u32(%struct.sk_buff* %226, i32 %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %235

232:                                              ; preds = %223
  br label %233

233:                                              ; preds = %232, %216
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %3, align 4
  br label %238

235:                                              ; preds = %231, %207, %177, %125, %94
  %236 = load i32, i32* @ENOBUFS, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %235, %233
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @CMD(i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
