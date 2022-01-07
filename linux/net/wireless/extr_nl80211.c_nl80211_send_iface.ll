; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_send_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg80211_registered_device = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.wireless_dev = type { i32, %struct.TYPE_3__*, i32*, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.cfg80211_txq_stats = type { i32 }

@NL80211_CMD_NEW_INTERFACE = common dso_local global i32 0, align 4
@NL80211_CMD_DEL_INTERFACE = common dso_local global i32 0, align 4
@NL80211_CMD_SET_INTERFACE = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_ATTR_IFNAME = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@NL80211_ATTR_IFTYPE = common dso_local global i32 0, align 4
@NL80211_ATTR_WDEV = common dso_local global i32 0, align 4
@NL80211_ATTR_PAD = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NL80211_ATTR_GENERATION = common dso_local global i32 0, align 4
@cfg80211_rdev_list_generation = common dso_local global i32 0, align 4
@NL80211_ATTR_4ADDR = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY_TX_POWER_LEVEL = common dso_local global i32 0, align 4
@NL80211_ATTR_SSID = common dso_local global i32 0, align 4
@WLAN_EID_SSID = common dso_local global i32 0, align 4
@NL80211_ATTR_TXQ_STATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*, i32)* @nl80211_send_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_send_iface(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.cfg80211_registered_device* %4, %struct.wireless_dev* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfg80211_registered_device*, align 8
  %14 = alloca %struct.wireless_dev*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.cfg80211_chan_def, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca %struct.cfg80211_txq_stats, align 4
  %24 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.cfg80211_registered_device* %4, %struct.cfg80211_registered_device** %13, align 8
  store %struct.wireless_dev* %5, %struct.wireless_dev** %14, align 8
  store i32 %6, i32* %15, align 4
  %25 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %26 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %25, i32 0, i32 5
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  store %struct.net_device* %27, %struct.net_device** %16, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @NL80211_CMD_NEW_INTERFACE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %7
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* @NL80211_CMD_DEL_INTERFACE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @NL80211_CMD_SET_INTERFACE, align 4
  %38 = icmp ne i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31, %7
  %40 = phi i1 [ false, %31 ], [ false, %7 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i8* @nl80211hdr_put(%struct.sk_buff* %43, i32 %44, i32 %45, i32 %46, i32 %47)
  store i8* %48, i8** %17, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store i32 -1, i32* %8, align 4
  br label %259

52:                                               ; preds = %39
  %53 = load %struct.net_device*, %struct.net_device** %16, align 8
  %54 = icmp ne %struct.net_device* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %58 = load %struct.net_device*, %struct.net_device** %16, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @nla_put_u32(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = load i32, i32* @NL80211_ATTR_IFNAME, align 4
  %66 = load %struct.net_device*, %struct.net_device** %16, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nla_put_string(%struct.sk_buff* %64, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63, %55
  br label %253

72:                                               ; preds = %63, %52
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %75 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %76 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @nla_put_u32(%struct.sk_buff* %73, i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %123, label %80

80:                                               ; preds = %72
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = load i32, i32* @NL80211_ATTR_IFTYPE, align 4
  %83 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %84 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @nla_put_u32(%struct.sk_buff* %81, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %123, label %88

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = load i32, i32* @NL80211_ATTR_WDEV, align 4
  %91 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %92 = call i32 @wdev_id(%struct.wireless_dev* %91)
  %93 = load i32, i32* @NL80211_ATTR_PAD, align 4
  %94 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %89, i32 %90, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %123, label %96

96:                                               ; preds = %88
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = load i32, i32* @NL80211_ATTR_MAC, align 4
  %99 = load i32, i32* @ETH_ALEN, align 4
  %100 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %101 = call i32* @wdev_address(%struct.wireless_dev* %100)
  %102 = call i64 @nla_put(%struct.sk_buff* %97, i32 %98, i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %96
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = load i32, i32* @NL80211_ATTR_GENERATION, align 4
  %107 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %108 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @cfg80211_rdev_list_generation, align 4
  %111 = shl i32 %110, 2
  %112 = xor i32 %109, %111
  %113 = call i64 @nla_put_u32(%struct.sk_buff* %105, i32 %106, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %104
  %116 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %117 = load i32, i32* @NL80211_ATTR_4ADDR, align 4
  %118 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %119 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @nla_put_u8(%struct.sk_buff* %116, i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115, %104, %96, %88, %80, %72
  br label %253

124:                                              ; preds = %115
  %125 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %126 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %124
  %132 = bitcast %struct.cfg80211_chan_def* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %132, i8 0, i64 4, i1 false)
  %133 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %134 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %135 = call i32 @rdev_get_channel(%struct.cfg80211_registered_device* %133, %struct.wireless_dev* %134, %struct.cfg80211_chan_def* %19)
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = call i64 @nl80211_send_chandef(%struct.sk_buff* %139, %struct.cfg80211_chan_def* %19)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %253

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143, %131
  br label %145

145:                                              ; preds = %144, %124
  %146 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %147 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %146, i32 0, i32 2
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %145
  %153 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %154 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %155 = call i32 @rdev_get_tx_power(%struct.cfg80211_registered_device* %153, %struct.wireless_dev* %154, i32* %20)
  store i32 %155, i32* %21, align 4
  %156 = load i32, i32* %21, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %160 = load i32, i32* @NL80211_ATTR_WIPHY_TX_POWER_LEVEL, align 4
  %161 = load i32, i32* %20, align 4
  %162 = call i32 @DBM_TO_MBM(i32 %161)
  %163 = call i64 @nla_put_u32(%struct.sk_buff* %159, i32 %160, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %253

166:                                              ; preds = %158, %152
  br label %167

167:                                              ; preds = %166, %145
  %168 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %169 = call i32 @wdev_lock(%struct.wireless_dev* %168)
  %170 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %171 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  switch i32 %172, label %220 [
    i32 130, label %173
    i32 128, label %191
    i32 129, label %191
    i32 131, label %191
  ]

173:                                              ; preds = %167
  %174 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %175 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %190

178:                                              ; preds = %173
  %179 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %180 = load i32, i32* @NL80211_ATTR_SSID, align 4
  %181 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %182 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %185 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = call i64 @nla_put(%struct.sk_buff* %179, i32 %180, i32 %183, i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %178
  br label %250

190:                                              ; preds = %178, %173
  br label %221

191:                                              ; preds = %167, %167, %167
  %192 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %193 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = icmp ne %struct.TYPE_3__* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %221

197:                                              ; preds = %191
  %198 = call i32 (...) @rcu_read_lock()
  %199 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %200 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %199, i32 0, i32 1
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* @WLAN_EID_SSID, align 4
  %204 = call i32* @ieee80211_bss_get_ie(i32* %202, i32 %203)
  store i32* %204, i32** %22, align 8
  %205 = load i32*, i32** %22, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %218

207:                                              ; preds = %197
  %208 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %209 = load i32, i32* @NL80211_ATTR_SSID, align 4
  %210 = load i32*, i32** %22, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32*, i32** %22, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  %215 = call i64 @nla_put(%struct.sk_buff* %208, i32 %209, i32 %212, i32* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %207
  br label %248

218:                                              ; preds = %207, %197
  %219 = call i32 (...) @rcu_read_unlock()
  br label %221

220:                                              ; preds = %167
  br label %221

221:                                              ; preds = %220, %218, %196, %190
  %222 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %223 = call i32 @wdev_unlock(%struct.wireless_dev* %222)
  %224 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %225 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %224, i32 0, i32 2
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %244

230:                                              ; preds = %221
  %231 = bitcast %struct.cfg80211_txq_stats* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %231, i8 0, i64 4, i1 false)
  %232 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %13, align 8
  %233 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %234 = call i32 @rdev_get_txq_stats(%struct.cfg80211_registered_device* %232, %struct.wireless_dev* %233, %struct.cfg80211_txq_stats* %23)
  store i32 %234, i32* %24, align 4
  %235 = load i32, i32* %24, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %230
  %238 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %239 = load i32, i32* @NL80211_ATTR_TXQ_STATS, align 4
  %240 = call i32 @nl80211_put_txq_stats(%struct.sk_buff* %238, %struct.cfg80211_txq_stats* %23, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  br label %253

243:                                              ; preds = %237, %230
  br label %244

244:                                              ; preds = %243, %221
  %245 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %246 = load i8*, i8** %17, align 8
  %247 = call i32 @genlmsg_end(%struct.sk_buff* %245, i8* %246)
  store i32 0, i32* %8, align 4
  br label %259

248:                                              ; preds = %217
  %249 = call i32 (...) @rcu_read_unlock()
  br label %250

250:                                              ; preds = %248, %189
  %251 = load %struct.wireless_dev*, %struct.wireless_dev** %14, align 8
  %252 = call i32 @wdev_unlock(%struct.wireless_dev* %251)
  br label %253

253:                                              ; preds = %250, %242, %165, %142, %123, %71
  %254 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %255 = load i8*, i8** %17, align 8
  %256 = call i32 @genlmsg_cancel(%struct.sk_buff* %254, i8* %255)
  %257 = load i32, i32* @EMSGSIZE, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %8, align 4
  br label %259

259:                                              ; preds = %253, %244, %51
  %260 = load i32, i32* %8, align 4
  ret i32 %260
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wdev_id(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32* @wdev_address(%struct.wireless_dev*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @rdev_get_channel(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i64 @nl80211_send_chandef(%struct.sk_buff*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @rdev_get_tx_power(%struct.cfg80211_registered_device*, %struct.wireless_dev*, i32*) #1

declare dso_local i32 @DBM_TO_MBM(i32) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32* @ieee80211_bss_get_ie(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @rdev_get_txq_stats(%struct.cfg80211_registered_device*, %struct.wireless_dev*, %struct.cfg80211_txq_stats*) #1

declare dso_local i32 @nl80211_put_txq_stats(%struct.sk_buff*, %struct.cfg80211_txq_stats*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
