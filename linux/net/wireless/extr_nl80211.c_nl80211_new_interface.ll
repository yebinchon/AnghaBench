; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_new_interface.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_new_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i64*, %struct.cfg80211_registered_device** }
%struct.cfg80211_registered_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vif_params = type { i32, i32 }
%struct.wireless_dev = type { i32, i32, i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@NL80211_ATTR_IFNAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL80211_ATTR_IFTYPE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_FEATURE_MAC_ON_CREATE = common dso_local global i32 0, align 4
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@NL80211_ATTR_4ADDR = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NET_NAME_USER = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NL80211_ATTR_SOCKET_OWNER = common dso_local global i64 0, align 8
@NL80211_ATTR_MESH_ID = common dso_local global i64 0, align 8
@IEEE80211_MAX_SSID_LEN = common dso_local global i32 0, align 4
@IEEE80211_MAX_MESH_ID_LEN = common dso_local global i32 0, align 4
@NL80211_CMD_NEW_INTERFACE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_new_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_new_interface(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.vif_params, align 4
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 3
  %14 = load %struct.cfg80211_registered_device**, %struct.cfg80211_registered_device*** %13, align 8
  %15 = getelementptr inbounds %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %14, i64 0
  %16 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %15, align 8
  store %struct.cfg80211_registered_device* %16, %struct.cfg80211_registered_device** %6, align 8
  %17 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %19 = call i32 @cfg80211_destroy_ifaces(%struct.cfg80211_registered_device* %18)
  %20 = call i32 @memset(%struct.vif_params* %7, i32 0, i32 8)
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @NL80211_ATTR_IFNAME, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %276

31:                                               ; preds = %2
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @NL80211_ATTR_IFTYPE, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @nla_get_u32(i64 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %49 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %276

57:                                               ; preds = %47
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 128
  br i1 %59, label %71, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 129
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %65 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NL80211_FEATURE_MAC_ON_CREATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %63, %60, %57
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 2
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @nla_memcpy(i32 %81, i64 %87, i32 %88)
  %90 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @is_valid_ether_addr(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %79
  %95 = load i32, i32* @EADDRNOTAVAIL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %276

97:                                               ; preds = %79
  br label %98

98:                                               ; preds = %97, %71, %63
  %99 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %100 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %98
  %107 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %108 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @NL80211_ATTR_4ADDR, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @nla_get_u8(i64 %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %120 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @nl80211_valid_4addr(%struct.cfg80211_registered_device* %119, i32* null, i32 %121, i32 %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %106
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %276

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %98
  %130 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %131 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %130, i32 0, i32 0
  %132 = load i32, i32* %11, align 4
  %133 = getelementptr inbounds %struct.vif_params, %struct.vif_params* %7, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cfg80211_iftype_allowed(%struct.TYPE_4__* %131, i32 %132, i32 %134, i32 0)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %129
  %138 = load i32, i32* @EOPNOTSUPP, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %276

140:                                              ; preds = %129
  %141 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %144 = call i32 @nl80211_parse_mon_options(%struct.cfg80211_registered_device* %141, i32 %142, %struct.genl_info* %143, %struct.vif_params* %7)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %3, align 4
  br label %276

149:                                              ; preds = %140
  %150 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.sk_buff* @nlmsg_new(i32 %150, i32 %151)
  store %struct.sk_buff* %152, %struct.sk_buff** %9, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %154 = icmp ne %struct.sk_buff* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %276

158:                                              ; preds = %149
  %159 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %160 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %161 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %160, i32 0, i32 2
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* @NL80211_ATTR_IFNAME, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @nla_data(i64 %165)
  %167 = load i32, i32* @NET_NAME_USER, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call %struct.wireless_dev* @rdev_add_virtual_intf(%struct.cfg80211_registered_device* %159, i32 %166, i32 %167, i32 %168, %struct.vif_params* %7)
  store %struct.wireless_dev* %169, %struct.wireless_dev** %8, align 8
  %170 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %171 = icmp ne %struct.wireless_dev* %170, null
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i64 @WARN_ON(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %158
  %177 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %178 = call i32 @nlmsg_free(%struct.sk_buff* %177)
  %179 = load i32, i32* @EPROTO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %276

181:                                              ; preds = %158
  %182 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %183 = call i64 @IS_ERR(%struct.wireless_dev* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %187 = call i32 @nlmsg_free(%struct.sk_buff* %186)
  %188 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %189 = call i32 @PTR_ERR(%struct.wireless_dev* %188)
  store i32 %189, i32* %3, align 4
  br label %276

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190
  %192 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %193 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %192, i32 0, i32 2
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* @NL80211_ATTR_SOCKET_OWNER, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %191
  %200 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %201 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %204 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %199, %191
  %206 = load i32, i32* %11, align 4
  switch i32 %206, label %253 [
    i32 130, label %207
    i32 129, label %249
    i32 128, label %249
  ]

207:                                              ; preds = %205
  %208 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %209 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %208, i32 0, i32 2
  %210 = load i64*, i64** %209, align 8
  %211 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %212 = getelementptr inbounds i64, i64* %210, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %207
  br label %254

216:                                              ; preds = %207
  %217 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %218 = call i32 @wdev_lock(%struct.wireless_dev* %217)
  %219 = load i32, i32* @IEEE80211_MAX_SSID_LEN, align 4
  %220 = load i32, i32* @IEEE80211_MAX_MESH_ID_LEN, align 4
  %221 = icmp ne i32 %219, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @BUILD_BUG_ON(i32 %222)
  %224 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %225 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %224, i32 0, i32 2
  %226 = load i64*, i64** %225, align 8
  %227 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %228 = getelementptr inbounds i64, i64* %226, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @nla_len(i64 %229)
  %231 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %232 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 4
  %233 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %234 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %237 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %236, i32 0, i32 2
  %238 = load i64*, i64** %237, align 8
  %239 = load i64, i64* @NL80211_ATTR_MESH_ID, align 8
  %240 = getelementptr inbounds i64, i64* %238, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @nla_data(i64 %241)
  %243 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %244 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @memcpy(i32 %235, i32 %242, i32 %245)
  %247 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %248 = call i32 @wdev_unlock(%struct.wireless_dev* %247)
  br label %254

249:                                              ; preds = %205, %205
  %250 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %251 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %252 = call i32 @cfg80211_init_wdev(%struct.cfg80211_registered_device* %250, %struct.wireless_dev* %251)
  br label %254

253:                                              ; preds = %205
  br label %254

254:                                              ; preds = %253, %249, %216, %215
  %255 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %256 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %257 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %260 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %263 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %264 = load i32, i32* @NL80211_CMD_NEW_INTERFACE, align 4
  %265 = call i64 @nl80211_send_iface(%struct.sk_buff* %255, i32 %258, i32 %261, i32 0, %struct.cfg80211_registered_device* %262, %struct.wireless_dev* %263, i32 %264)
  %266 = icmp slt i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %254
  %268 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %269 = call i32 @nlmsg_free(%struct.sk_buff* %268)
  %270 = load i32, i32* @ENOBUFS, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %3, align 4
  br label %276

272:                                              ; preds = %254
  %273 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %274 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %275 = call i32 @genlmsg_reply(%struct.sk_buff* %273, %struct.genl_info* %274)
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %272, %267, %185, %176, %155, %147, %137, %126, %94, %54, %28
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i32 @cfg80211_destroy_ifaces(%struct.cfg80211_registered_device*) #1

declare dso_local i32 @memset(%struct.vif_params*, i32, i32) #1

declare dso_local i32 @nla_get_u32(i64) #1

declare dso_local i32 @nla_memcpy(i32, i64, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @nl80211_valid_4addr(%struct.cfg80211_registered_device*, i32*, i32, i32) #1

declare dso_local i32 @cfg80211_iftype_allowed(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @nl80211_parse_mon_options(%struct.cfg80211_registered_device*, i32, %struct.genl_info*, %struct.vif_params*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.wireless_dev* @rdev_add_virtual_intf(%struct.cfg80211_registered_device*, i32, i32, i32, %struct.vif_params*) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.wireless_dev*) #1

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local i32 @cfg80211_init_wdev(%struct.cfg80211_registered_device*, %struct.wireless_dev*) #1

declare dso_local i64 @nl80211_send_iface(%struct.sk_buff*, i32, i32, i32, %struct.cfg80211_registered_device*, %struct.wireless_dev*, i32) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
