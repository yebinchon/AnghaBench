; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_mesh_config.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_get_mesh_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.net_device** }
%struct.net_device = type { i32, %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.wireless_dev = type { i64, i32 }
%struct.cfg80211_registered_device = type { i32, %struct.TYPE_2__*, %struct.wireless_dev* }
%struct.mesh_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@default_mesh_config = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_GET_MESH_CONFIG = common dso_local global i32 0, align 4
@NL80211_ATTR_MESH_CONFIG = common dso_local global i32 0, align 4
@NL80211_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL80211_MESHCONF_RETRY_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MESHCONF_CONFIRM_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HOLDING_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MESHCONF_MAX_PEER_LINKS = common dso_local global i32 0, align 4
@NL80211_MESHCONF_MAX_RETRIES = common dso_local global i32 0, align 4
@NL80211_MESHCONF_TTL = common dso_local global i32 0, align 4
@NL80211_MESHCONF_ELEMENT_TTL = common dso_local global i32 0, align 4
@NL80211_MESHCONF_AUTO_OPEN_PLINKS = common dso_local global i32 0, align 4
@NL80211_MESHCONF_SYNC_OFFSET_MAX_NEIGHBOR = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_MAX_PREQ_RETRIES = common dso_local global i32 0, align 4
@NL80211_MESHCONF_PATH_REFRESH_TIME = common dso_local global i32 0, align 4
@NL80211_MESHCONF_MIN_DISCOVERY_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_ACTIVE_PATH_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_PREQ_MIN_INTERVAL = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_PERR_MIN_INTERVAL = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_NET_DIAM_TRVS_TIME = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_ROOTMODE = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_RANN_INTERVAL = common dso_local global i32 0, align 4
@NL80211_MESHCONF_GATE_ANNOUNCEMENTS = common dso_local global i32 0, align 4
@NL80211_MESHCONF_FORWARDING = common dso_local global i32 0, align 4
@NL80211_MESHCONF_RSSI_THRESHOLD = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HT_OPMODE = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_PATH_TO_ROOT_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_ROOT_INTERVAL = common dso_local global i32 0, align 4
@NL80211_MESHCONF_HWMP_CONFIRMATION_INTERVAL = common dso_local global i32 0, align 4
@NL80211_MESHCONF_POWER_MODE = common dso_local global i32 0, align 4
@NL80211_MESHCONF_AWAKE_WINDOW = common dso_local global i32 0, align 4
@NL80211_MESHCONF_PLINK_TIMEOUT = common dso_local global i32 0, align 4
@NL80211_MESHCONF_CONNECTED_TO_GATE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_get_mesh_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_get_mesh_config(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.cfg80211_registered_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.mesh_config, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 2
  %16 = load %struct.net_device**, %struct.net_device*** %15, align 8
  %17 = getelementptr inbounds %struct.net_device*, %struct.net_device** %16, i64 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = bitcast %struct.net_device* %18 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %19, %struct.cfg80211_registered_device** %6, align 8
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 2
  %22 = load %struct.net_device**, %struct.net_device*** %21, align 8
  %23 = getelementptr inbounds %struct.net_device*, %struct.net_device** %22, i64 1
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 2
  %27 = load %struct.wireless_dev*, %struct.wireless_dev** %26, align 8
  store %struct.wireless_dev* %27, %struct.wireless_dev** %8, align 8
  store i32 0, i32* %10, align 4
  %28 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %29 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EOPNOTSUPP, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %324

36:                                               ; preds = %2
  %37 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %38 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %324

46:                                               ; preds = %36
  %47 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %48 = call i32 @wdev_lock(%struct.wireless_dev* %47)
  %49 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %50 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = call i32 @memcpy(%struct.mesh_config* %9, i32* @default_mesh_config, i32 116)
  br label %60

55:                                               ; preds = %46
  %56 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %6, align 8
  %57 = bitcast %struct.cfg80211_registered_device* %56 to %struct.net_device*
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @rdev_get_mesh_config(%struct.net_device* %57, %struct.net_device* %58, %struct.mesh_config* %9)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %53
  %61 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %62 = call i32 @wdev_unlock(%struct.wireless_dev* %61)
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %324

67:                                               ; preds = %60
  %68 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.sk_buff* @nlmsg_new(i32 %68, i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %13, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %324

76:                                               ; preds = %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %79 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %82 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NL80211_CMD_GET_MESH_CONFIG, align 4
  %85 = call i8* @nl80211hdr_put(%struct.sk_buff* %77, i32 %80, i32 %83, i32 0, i32 %84)
  store i8* %85, i8** %11, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %76
  br label %319

89:                                               ; preds = %76
  %90 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %91 = load i32, i32* @NL80211_ATTR_MESH_CONFIG, align 4
  %92 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %90, i32 %91)
  store %struct.nlattr* %92, %struct.nlattr** %12, align 8
  %93 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %94 = icmp ne %struct.nlattr* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %318

96:                                               ; preds = %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = load i32, i32* @NL80211_ATTR_IFINDEX, align 4
  %99 = load %struct.net_device*, %struct.net_device** %7, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @nla_put_u32(%struct.sk_buff* %97, i32 %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %307, label %104

104:                                              ; preds = %96
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %106 = load i32, i32* @NL80211_MESHCONF_RETRY_TIMEOUT, align 4
  %107 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 28
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @nla_put_u16(%struct.sk_buff* %105, i32 %106, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %307, label %111

111:                                              ; preds = %104
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = load i32, i32* @NL80211_MESHCONF_CONFIRM_TIMEOUT, align 4
  %114 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 27
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @nla_put_u16(%struct.sk_buff* %112, i32 %113, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %307, label %118

118:                                              ; preds = %111
  %119 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %120 = load i32, i32* @NL80211_MESHCONF_HOLDING_TIMEOUT, align 4
  %121 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 26
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @nla_put_u16(%struct.sk_buff* %119, i32 %120, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %307, label %125

125:                                              ; preds = %118
  %126 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %127 = load i32, i32* @NL80211_MESHCONF_MAX_PEER_LINKS, align 4
  %128 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 25
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @nla_put_u16(%struct.sk_buff* %126, i32 %127, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %307, label %132

132:                                              ; preds = %125
  %133 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %134 = load i32, i32* @NL80211_MESHCONF_MAX_RETRIES, align 4
  %135 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 24
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @nla_put_u8(%struct.sk_buff* %133, i32 %134, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %307, label %139

139:                                              ; preds = %132
  %140 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %141 = load i32, i32* @NL80211_MESHCONF_TTL, align 4
  %142 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 23
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @nla_put_u8(%struct.sk_buff* %140, i32 %141, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %307, label %146

146:                                              ; preds = %139
  %147 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %148 = load i32, i32* @NL80211_MESHCONF_ELEMENT_TTL, align 4
  %149 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 22
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @nla_put_u8(%struct.sk_buff* %147, i32 %148, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %307, label %153

153:                                              ; preds = %146
  %154 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %155 = load i32, i32* @NL80211_MESHCONF_AUTO_OPEN_PLINKS, align 4
  %156 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 21
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @nla_put_u8(%struct.sk_buff* %154, i32 %155, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %307, label %160

160:                                              ; preds = %153
  %161 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %162 = load i32, i32* @NL80211_MESHCONF_SYNC_OFFSET_MAX_NEIGHBOR, align 4
  %163 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 20
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @nla_put_u32(%struct.sk_buff* %161, i32 %162, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %307, label %167

167:                                              ; preds = %160
  %168 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %169 = load i32, i32* @NL80211_MESHCONF_HWMP_MAX_PREQ_RETRIES, align 4
  %170 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 19
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @nla_put_u8(%struct.sk_buff* %168, i32 %169, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %307, label %174

174:                                              ; preds = %167
  %175 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %176 = load i32, i32* @NL80211_MESHCONF_PATH_REFRESH_TIME, align 4
  %177 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 18
  %178 = load i32, i32* %177, align 4
  %179 = call i64 @nla_put_u32(%struct.sk_buff* %175, i32 %176, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %307, label %181

181:                                              ; preds = %174
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = load i32, i32* @NL80211_MESHCONF_MIN_DISCOVERY_TIMEOUT, align 4
  %184 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 17
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @nla_put_u16(%struct.sk_buff* %182, i32 %183, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %307, label %188

188:                                              ; preds = %181
  %189 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %190 = load i32, i32* @NL80211_MESHCONF_HWMP_ACTIVE_PATH_TIMEOUT, align 4
  %191 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 16
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @nla_put_u32(%struct.sk_buff* %189, i32 %190, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %307, label %195

195:                                              ; preds = %188
  %196 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %197 = load i32, i32* @NL80211_MESHCONF_HWMP_PREQ_MIN_INTERVAL, align 4
  %198 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 15
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @nla_put_u16(%struct.sk_buff* %196, i32 %197, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %307, label %202

202:                                              ; preds = %195
  %203 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %204 = load i32, i32* @NL80211_MESHCONF_HWMP_PERR_MIN_INTERVAL, align 4
  %205 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 14
  %206 = load i32, i32* %205, align 4
  %207 = call i64 @nla_put_u16(%struct.sk_buff* %203, i32 %204, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %307, label %209

209:                                              ; preds = %202
  %210 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %211 = load i32, i32* @NL80211_MESHCONF_HWMP_NET_DIAM_TRVS_TIME, align 4
  %212 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 13
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @nla_put_u16(%struct.sk_buff* %210, i32 %211, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %307, label %216

216:                                              ; preds = %209
  %217 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %218 = load i32, i32* @NL80211_MESHCONF_HWMP_ROOTMODE, align 4
  %219 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 12
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @nla_put_u8(%struct.sk_buff* %217, i32 %218, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %307, label %223

223:                                              ; preds = %216
  %224 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %225 = load i32, i32* @NL80211_MESHCONF_HWMP_RANN_INTERVAL, align 4
  %226 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 11
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @nla_put_u16(%struct.sk_buff* %224, i32 %225, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %307, label %230

230:                                              ; preds = %223
  %231 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %232 = load i32, i32* @NL80211_MESHCONF_GATE_ANNOUNCEMENTS, align 4
  %233 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 10
  %234 = load i32, i32* %233, align 4
  %235 = call i64 @nla_put_u8(%struct.sk_buff* %231, i32 %232, i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %307, label %237

237:                                              ; preds = %230
  %238 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %239 = load i32, i32* @NL80211_MESHCONF_FORWARDING, align 4
  %240 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @nla_put_u8(%struct.sk_buff* %238, i32 %239, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %307, label %244

244:                                              ; preds = %237
  %245 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %246 = load i32, i32* @NL80211_MESHCONF_RSSI_THRESHOLD, align 4
  %247 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 8
  %248 = load i32, i32* %247, align 4
  %249 = call i64 @nla_put_s32(%struct.sk_buff* %245, i32 %246, i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %307, label %251

251:                                              ; preds = %244
  %252 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %253 = load i32, i32* @NL80211_MESHCONF_HT_OPMODE, align 4
  %254 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @nla_put_u32(%struct.sk_buff* %252, i32 %253, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %307, label %258

258:                                              ; preds = %251
  %259 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %260 = load i32, i32* @NL80211_MESHCONF_HWMP_PATH_TO_ROOT_TIMEOUT, align 4
  %261 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @nla_put_u32(%struct.sk_buff* %259, i32 %260, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %307, label %265

265:                                              ; preds = %258
  %266 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %267 = load i32, i32* @NL80211_MESHCONF_HWMP_ROOT_INTERVAL, align 4
  %268 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @nla_put_u16(%struct.sk_buff* %266, i32 %267, i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %307, label %272

272:                                              ; preds = %265
  %273 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %274 = load i32, i32* @NL80211_MESHCONF_HWMP_CONFIRMATION_INTERVAL, align 4
  %275 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @nla_put_u16(%struct.sk_buff* %273, i32 %274, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %307, label %279

279:                                              ; preds = %272
  %280 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %281 = load i32, i32* @NL80211_MESHCONF_POWER_MODE, align 4
  %282 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @nla_put_u32(%struct.sk_buff* %280, i32 %281, i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %307, label %286

286:                                              ; preds = %279
  %287 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %288 = load i32, i32* @NL80211_MESHCONF_AWAKE_WINDOW, align 4
  %289 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = call i64 @nla_put_u16(%struct.sk_buff* %287, i32 %288, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %307, label %293

293:                                              ; preds = %286
  %294 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %295 = load i32, i32* @NL80211_MESHCONF_PLINK_TIMEOUT, align 4
  %296 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @nla_put_u32(%struct.sk_buff* %294, i32 %295, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %293
  %301 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %302 = load i32, i32* @NL80211_MESHCONF_CONNECTED_TO_GATE, align 4
  %303 = getelementptr inbounds %struct.mesh_config, %struct.mesh_config* %9, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i64 @nla_put_u8(%struct.sk_buff* %301, i32 %302, i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %300, %293, %286, %279, %272, %265, %258, %251, %244, %237, %230, %223, %216, %209, %202, %195, %188, %181, %174, %167, %160, %153, %146, %139, %132, %125, %118, %111, %104, %96
  br label %318

308:                                              ; preds = %300
  %309 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %310 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %311 = call i32 @nla_nest_end(%struct.sk_buff* %309, %struct.nlattr* %310)
  %312 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %313 = load i8*, i8** %11, align 8
  %314 = call i32 @genlmsg_end(%struct.sk_buff* %312, i8* %313)
  %315 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %316 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %317 = call i32 @genlmsg_reply(%struct.sk_buff* %315, %struct.genl_info* %316)
  store i32 %317, i32* %3, align 4
  br label %324

318:                                              ; preds = %307, %95
  br label %319

319:                                              ; preds = %318, %88
  %320 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %321 = call i32 @nlmsg_free(%struct.sk_buff* %320)
  %322 = load i32, i32* @ENOBUFS, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %3, align 4
  br label %324

324:                                              ; preds = %319, %308, %73, %65, %43, %33
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i32 @wdev_lock(%struct.wireless_dev*) #1

declare dso_local i32 @memcpy(%struct.mesh_config*, i32*, i32) #1

declare dso_local i32 @rdev_get_mesh_config(%struct.net_device*, %struct.net_device*, %struct.mesh_config*) #1

declare dso_local i32 @wdev_unlock(%struct.wireless_dev*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @nl80211hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
